import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Application/Payment/payment_bloc.dart';
import 'package:number_one_academy_v2/Application/course_list/course_list_bloc.dart';
import 'package:number_one_academy_v2/Domain/CourseGet/Model/course_get.dart';
import 'package:number_one_academy_v2/Domain/Subscription/Model/subscription_get.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_app_bar1.dart';
import 'package:number_one_academy_v2/Presentation/Screens/payment_successful/payment_succes.dart';
import 'package:number_one_academy_v2/Presentation/Screens/purchase/widgets/payment_status_widget.dart';
import 'package:number_one_academy_v2/Presentation/Screens/purchase/widgets/razorpay_constants.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/alert_dialog.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import '../styles/text_styles.dart';
import 'widgets/AlreadyHaveGst.dart';
import 'widgets/ApplyCoupon.dart';
import 'widgets/CustomElevatedWithTrail.dart';
import 'widgets/CustomRadioText.dart';
import 'widgets/OfferTile.dart';
import 'widgets/PurchaseItemTile.dart';
import 'widgets/RemoveCoupon.dart';
import 'widgets/build_gst_details.dart';
import 'widgets/gst_with_verify.dart';

class PurchaseScreen extends StatefulWidget {
  final CourseGet? courseDetails;
  final bool isfromSubscription;
  final List<SubscriptionGet>? subscriptiondetails;
  const PurchaseScreen({
    super.key,
    this.courseDetails,
    this.subscriptiondetails,
    required this.isfromSubscription,
  });

  @override
  State<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  final TextEditingController textEditingController = TextEditingController();
  final TextEditingController gstTextController = TextEditingController();
  bool isCoupon = false;
  bool isGst = false;
  Razorpay? razorpay;
  String? selectedOption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar1(
          elevation: 4,
          isShape: true,
          actions: [
            // NotificationIcon(),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              'Payment',
              style: textStyle1.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 20.sp,
              ),
            ),
            const SizedBox(height: 10),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => PurchaseItemTile(
                instructorName:
                    widget.courseDetails?.courseInstructors?.first.name ?? "",
                detils: widget.isfromSubscription
                    ? "NumberOne Gold Subscription              1 year Plan"
                    : widget.courseDetails?.courseTitle ?? "",
                image: widget.isfromSubscription
                    ? widget.subscriptiondetails?.first.coverImage ?? ""
                    : widget.courseDetails?.courseCoverImage ?? "",
                isfromSubscription: widget.isfromSubscription,
                price: widget.isfromSubscription
                    ? widget.subscriptiondetails?.first.offerPrice ?? ""
                    : widget.courseDetails?.coursePrice.toString() ?? "",
              ),
              separatorBuilder: (context, index) =>
                  const Divider(color: greyDivider),
              itemCount: 1,
            ),
            const Divider(color: greyDivider),
            buildViewOffers(),
            const SizedBox(height: 7),
            if (!isCoupon)
              ApplyCoupon(
                textEditingController: textEditingController,
                onChanged: (p0) {
                  setState(() {});
                },
                applyCoupon: (textEditingController.text.isNotEmpty)
                    ? () {
                        setState(() => isCoupon = true);
                        context.read<CourseListBloc>().add(
                            CourseListEvent.applyCoupon(
                                couponCode:
                                    textEditingController.text.toString(),
                                productType: widget.isfromSubscription
                                    ? "SUBSCRIPTION"
                                    : "COURSE",
                                productId: widget.isfromSubscription
                                    ? widget.subscriptiondetails?.first.id ?? ""
                                    : widget.courseDetails?.courseSubscription
                                            ?.id ??
                                        ""));
                      }
                    : null,
              )
            else
              RemoveCoupon(
                code: 'HAPPY50',
                discoundInPercent: '25%',
                additionalText: 'discount applied',
                onPressed: () {
                  isCoupon = false;
                  textEditingController.clear();
                  setState(() {});
                },
              ),

            const SizedBox(height: 10),

            /// for already have gst show this widget[AlreadyHaveGst]
            AlreadyHaveGst(
              organisationName: 'NumberOne Edtech Pvt Ltd',
              address:
                  "3-233/3, Pearl Garden Villas,\nThomaspuram Church Road\nMaradu\tPost, Ernakulam KL 682304",
              gstNumber: '32AAAAA1111A1AB',
              onTap: () {},
            ),

            /// show gst selection [buildGST]
            buildGST(),
            CustomElevatedWithTrail(
              title: 'Pay Now',
              onPressed: () {
                log("payment success is pressed");

                // var productId = context.read<CourseListBloc>().state.courseGet;
                // payment(
                //   productType: 'COURSE',

                //   couponCode: textEditingController.text,
                //   gstNumber: textEditingController.text,
                //   productId:  widget.isfromSubscription
                //                     ? widget.subscriptiondetails?.first.id.toString()?? ""
                //                     : widget.courseDetails?.courseSubscription
                //                             ?.id.toString(),

                // );
                _goToRazorPay();
              },
            ),
          ],
        ),
      ),
    );
  }

  payment({
    required String gstNumber,
    required String productType,
    required String productId,
    required String couponCode,
  }) {
    context.read<PaymentBloc>().add(PaymentEvent.payment(
        gstNumber: gstNumber,
        couponCode: couponCode,
        productId: productId,
        productType: productType,
        context: context));

    _goToRazorPay();
  }

  _goToRazorPay() async {
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    // String? currentPhoneNumber = prefs.getString('phoneNumber');
    Razorpay razorpay = Razorpay();

    var options = {
      'key': RazorpayKeyFunctions.razorPayKey,
      'name': 'NumberOne Academy',
      'amount': 100,
      'description': 'Course Purchase , Course name : ""}',
      'external': {
        'wallets': ['googlepay', 'phonepe', 'paytm']
      },
      // 'order_id': purchaseOrder.paymentOrderId,
      'prefill': {
        'contact':
            //  currentPhoneNumber ??
            '+917019442061'
      }
    };
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handleRazorPayPaymentError);

    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handleRazorPayPaymentSuccess);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleRazorPayExternalWallet);
    razorpay.open(options);

    // try {
    //   log("try,.,,");
    //   // if (razorpay == null) {
    //     log("razorpay is nnul");

    //   // }

    //   razorpay.open(options);
    //   debugPrint("Moving to Razorpay payment page with $options");
    // } catch (e) {
    //   log('catch error ');
    //   debugPrint(e.toString());
    // }
  }

  Future<void> _setCoursePurchased() async {
    // ref.read(myLessonProvider.notifier).state = null;

    // widget.onSucces();
  }
  void _handleRazorPayPaymentSuccess(PaymentSuccessResponse response) async {
    debugPrint("PAYMENT SUCCESS ORDER ID${response.orderId}");
    debugPrint("PAYMENT ID ${response.paymentId}");
    debugPrint("SIGNATURE ID${response.signature}");

    // if (newPurchaseOrder == null) return;

    // ref.read(isLoadingProvider.notifier).state = true;

    try {
      // final FirebaseFunctions functions = FirebaseFunctions.instance;
      // final HttpsCallable callable =
      //     functions.httpsCallable('completePurchase');
      // final parameters = {
      //   "status": "SUCCESS",
      //   "transactionId": newPurchaseOrder?.transactionId,
      //   "paymentTransId": response.paymentId,
      //   "userId": FirebaseAuth.instance.currentUser!.uid,
      // };

      // final result = await callable.call(parameters);

      // if (result.data['errorCode'] != '0') {
      //   _setPaymentError(result.data['errorDesc'] ?? '');
      //   return;
      // }

      // ref.read(isLoadingProvider.notifier).state = false;
      // _setCoursePurchased();
      log("payment is success");
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PaymentSuccess()));

      // if (context.mounted) {
      //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      //     content: Column(
      //       children: [
      //         PaymentSuccess(),
      //         Text("You are subscribed to this course"),
      //       ],
      //     ),
      //   ));
      // }
    } catch (e) {
      _setPaymentError("jdf");
      return null;
    }
  }

  void _showErrorSnackbar(String errMsg) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Column(
              children: [
                const SizedBox(height: 150, child: PaymentError()),
                Text(errMsg),
              ],
            ),
            backgroundColor: const Color(0xff00C294),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            )),
            duration: const Duration(seconds: 3),
            dismissDirection: DismissDirection.startToEnd),
      );
    }
  }

  void _setPaymentError(String errMsg) {
    debugPrint(errMsg);
    // ref.read(isLoadingProvider.notifier).state = false;
    _showErrorSnackbar(errMsg);
  }

  void _handleRazorPayPaymentError(PaymentFailureResponse response) async {
    // ref.read(isLoadingProvider.notifier).state = true;
    // if (newPurchaseOrder == null) return;
    try {
      // final FirebaseFunctions functions = FirebaseFunctions.instance;
      // final HttpsCallable callable =
      //     functions.httpsCallable('completePurchase');
      // final parameters = {
      //   "userId": FirebaseAuth.instance.currentUser!.uid,
      //   "status": "CANCEL",
      //   "transactionId": newPurchaseOrder?.transactionId,
      //   "paymentTransId": newPurchaseOrder?.paymentOrderId,
      //   "paymentId": newPurchaseOrder?.paymentOrderId,
      //   "statusDetails": {
      //     "errorCode": response.error?["code"] ?? "GEN_PAYMENT_FAILURE",
      //     "details": {
      //       "status": response.error?["reason"] ?? "payment_failure",
      //       "Desc": response.message ?? "Customer payment is failed."
      //     }
      //   }
      // };

      // debugPrint(parameters.toString());
      // final result = await callable.call(parameters);

      // if (result.data['errorCode'] != '0') {
      //   _setPaymentError(result.data['errorDesc'] ?? '');
      //   return;
      // }
      // ref.read(isLoadingProvider.notifier).state = false;
      NumberOneAlertDialog(
        heading: "Payment Failed",
        subHeading: response.message,
      );
    } catch (e) {
      _setPaymentError("");
      return null;
    }
  }

  void _handleRazorPayExternalWallet(ExternalWalletResponse response) {
    debugPrint('_handleExternalWallet Wallet ${response.walletName}');
    const NumberOneAlertDialog(
      heading: "Contact NumberOne Team",
      subHeading: walletMessage,
    );
  }

  buildGST() {
    return Column(
      children: [
        Container(
          color: green1,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Do you have a GST number?',
                  style: textStyle1.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomRadioText(
                    value: 'Yes',
                    groupValue: selectedOption,
                    onChanged: (p0) {
                      setState(() {
                        selectedOption = p0 as String?;
                      });
                    },
                  ),
                  CustomRadioText(
                    value: 'No',
                    groupValue: selectedOption,
                    onChanged: (p0) {
                      setState(() {
                        selectedOption = p0 as String?;
                        isGst = false;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        if (selectedOption == 'Yes') buildNewGstEntry(),
        buildPayment(
            discount: widget.isfromSubscription
                ? (int.parse(widget.subscriptiondetails!.first.actualPrice!) -
                        int.parse(
                            widget.subscriptiondetails!.first.offerPrice!))
                    .toString()
                : widget.courseDetails?.regularPrice.toString() ?? "",
            payableAmount: widget.isfromSubscription
                ? widget.subscriptiondetails?.first.offerPrice ?? ""
                : widget.courseDetails?.regularPrice.toString() ?? "",
            total: widget.isfromSubscription
                ? widget.subscriptiondetails?.first.actualPrice ?? ""
                : widget.courseDetails?.coursePrice.toString() ?? ""),
      ],
    );
  }

  buildNewGstEntry() {
    return Container(
      color: const Color(0xffE0EBEB),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      child: Column(
        children: [
          !isGst
              ? GstWithVerify(
                  textEditingController: gstTextController,
                  onChanged: (p0) {
                    setState(() {
                      gstTextController.text = p0;
                    });
                  },
                  onVerify: (gstTextController.text.isNotEmpty)
                      ? () {
                          setState(() {
                            isGst = !isGst;
                          });
                        }
                      : null,
                )
              : BuildGstDetails(
                  organisationName: 'NumberOne Edtech Pvt Ltd',
                  address:
                      "3-233/3, Pearl Garden Villas,\nThomaspuram Church Road\nMaradu\tPost, Ernakulam KL 682304",
                  gstNumber: "32AAAAA1111A1AB",
                  onNotCorrext: () {},
                  onCancel: () {},
                ),
          // add condition to invalid GST
          /* InvalidGst(
                    gstNumber: '32AAAAA1111A1AB',
                    tryAgain: () {},
                    cancel: () {},
                  )*/
        ],
      ),
    );
  }

  buildPayment({
    String? total,
    String? discount,
    String? payableAmount,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      color: green2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              text1('Total', null),
              // text2('Price'),
              // text2('18% GST'),
              text1('Discount', lightGreen),
              text1('Payable Amount', null),
            ],
          ),
          SizedBox(width: 40.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              text1('₹$total', null),
              // text2('₹5083.90'),
              // text2('₹915.10'),
              text1('₹$discount', lightGreen),
              text1('₹$payableAmount', null),
            ],
          ),
        ],
      ),
    );
  }

  buildViewOffers() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Do you have a discount coupon code?',
          style: textStyle1.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 10.sp,
          ),
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return buildOfferDialogue();
              },
            );
          },
          child: Text(
            'View Offers',
            style: textStyle1.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 10.sp,
              color: lightGreen,
            ),
          ),
        ),
      ],
    );
  }

  buildOfferDialogue() => Container(
        height: 400.h,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'View Offers',
              style: textStyle1.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                color: secondaryColor,
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) => OfferTile(
                  isApplied: index == 0,
                  title: 'Rs 500* off',
                  discription:
                      'Get Rs 500 off when you buy courses worth Rs 5000 in a single purchase!',
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      );
}

Text text1(String newText, Color? color) => Text(
      newText,
      style: textStyle1.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 18.sp,
        color: color ?? secondaryColor,
      ),
    );
Text text2(String newText) => Text(
      newText,
      style: textStyle1.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 10.sp,
      ),
    );
