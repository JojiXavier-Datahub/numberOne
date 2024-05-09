import 'dart:developer';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:number_one_academy_v2/Application/Insructor/instructor_bloc.dart';
import 'package:number_one_academy_v2/Application/course_list/course_list_bloc.dart';
import 'package:number_one_academy_v2/Application/subscription/subscription_bloc.dart';
import 'package:number_one_academy_v2/Config/pages.dart';
import 'package:number_one_academy_v2/Config/routers.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_elevated_button.dart';
import 'package:number_one_academy_v2/Presentation/Screens/couse_learner/widget/instructor_card.dart';
import 'package:number_one_academy_v2/Presentation/Screens/instructors/instructor_profile.dart';
import 'package:number_one_academy_v2/Presentation/Screens/purchase/purchase_screen.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/doted_lines.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/shimmer_widget.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';
import '../../Widgets/course_gridwidget.dart';

// ignore: must_be_immutable
class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // context
    //   .read<CourseListBloc>()
    //   .add(const CourseListEvent.getCourseList(search: ""));

    return SafeArea(
      child: ListView(
        children: [
          subscribedOrNot != ""
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: InkWell(
                      onTap: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 670.h,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    _buildAdvPanelWidget(context),
                                    _buildOfferingDetailColumn(context),
                                    priceDetails(context),
                                    SizedBox(
                                      height: 60.h,
                                      width: 313.w,
                                      child: BlocBuilder<SubscriptionBloc,
                                              SubscriptionState>(
                                          builder: (context, state) {
                                        return CustomElevatedButton(
                                          textFontSize: 16.sp,
                                          btnText: "Buy Subscription",
                                          backgroundColor: secondaryColor,
                                          onPressed: () {
                                            Navigator.pop(context);
                                            Navigator.push(
                                              context,
                                              PageRouteBuilder(
                                                pageBuilder: (context,
                                                        animation1,
                                                        animation2) =>
                                                    PurchaseScreen(
                                                  isfromSubscription: true,
                                                  subscriptiondetails:
                                                      state.subscriptionget,
                                                ),
                                                transitionDuration:
                                                    const Duration(seconds: 0),
                                              ),
                                            );

                                            // Navigator.push(
                                            //     context,
                                            //     AppPages.generateRouteSettings(
                                            //         const RouteSettings(
                                            //             name: Routers.paymentDetails)));
                                          },
                                        );
                                      }),
                                    ),

                                    // buildActionButton(context),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Center(
                        child: Image.asset(
                          "assets/images/Subscription_banner_png.png",
                          width: 330.w,
                          fit: BoxFit.fill,
                        ),
                      )),
                ),
          BlocBuilder<CourseListBloc, CourseListState>(
              builder: (context, state) {
            return CourseGridWidget(
              isFreeOrSubscribedCourses: true,
              mainButtonOnTap: () {},
              courselist: state.courseList?.list ?? [],
              gridTitle: "Free Courses",
              courseOnTap: () {},
              moreOnTap: () async {
                Navigator.push(
                    context,
                    AppPages.generateRouteSettings(
                        const RouteSettings(name: Routers.more)));
                //SharedPreferences prefs = await SharedPreferences.getInstance();
                //String? courseLanguage = prefs.getString('courseLanguage');
                // var queryMap = {
                //   'queryString': '',
                //   'facets': [
                //     'pricingStatus:paid',
                //     'courseLanguage:$courseLanguage'
                //   ],
                //   'index': 'courseindex',
                // };
                // ref.read(courseQueryStateProvider.notifier).state = queryMap;
                // if (_connectionStatus == ConnectivityResult.none) {
                //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                //     backgroundColor: Colors.redAccent,
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.only(
                //       topLeft: Radius.circular(15),
                //       topRight: Radius.circular(15),
                //     )),
                //     content: AutoSizeText(
                //       "You are offline",
                //       style: TextStyle(
                //         height: 24 / 20,
                //         fontWeight: FontWeight.w600,
                //         fontSize: 14,
                //         color: Colors.white,
                //       ),
                //       minFontSize: 10,
                //       maxLines: 2,
                //       overflow: TextOverflow.ellipsis,
                //     ),
                //     duration: Duration(seconds: 3),
                //   ));
                // } else {
                //   if (context.mounted) {
                //     context.router.push(
                //       FilterRoute(facets: [
                //         'pricingStatus:paid',
                //         'courseLanguage:$courseLanguage'
                //       ], index: 'courseindex'),
                //     );
                //   }
                // }
              },
            );
          }),
          
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Our Instructors',
                  style: textStyle1.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.sp,
                    color: lightGreen,
                  ),
                ),
                // Directionality(
                //   textDirection: TextDirection.rtl,
                //   child: ElevatedButton.icon(
                //     onPressed: () {},
                //     icon: SvgPicture.asset('assets/svg/arrow_right.svg'),
                //     label: Text(
                //       'More',
                //       style: textStyle1.copyWith(
                //         fontWeight: FontWeight.w700,
                //         fontSize: 11,
                //       ),
                //     ),
                //     style: ElevatedButton.styleFrom(
                //       backgroundColor: const Color(0xffCBDFDF),
                //       minimumSize: const Size(67, 25),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
          kh15,
          BlocBuilder<InstructorBloc, InstructorState>(
              builder: (context, state) {
            return state.isLoading
                ? const ShimmerWidget()
                : buildInstructorsList();
          }),
        ],
      ),
    );
  }

  priceDetails(BuildContext context) {
    // final isLoading = ref.watch(isLoadingProvider);
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5, bottom: 5),
      child: BlocBuilder<SubscriptionBloc, SubscriptionState>(
          builder: (context, state) {
        return state.isLoading
            ? const Center(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircularProgressIndicator(color: Colors.white),
                ),
              )
            : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, top: 5, bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Original Price',
                          style: TextStyle(
                              color: secondaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              height: 16.8 / 14),
                        ),
                        Text(
                          '₹${state.subscriptionget?.first.actualPrice ?? ""}',
                          style: const TextStyle(
                              color: Color(0xFFF95858),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              height: 16.8 / 14),
                        ),

                        // Text(
                        //   '₹7999',
                        //   style: TextStyle(
                        //       color: Color(0xFFF95858),
                        //       fontSize: 14,
                        //       fontWeight: FontWeight.w700,
                        //       height: 16.8 / 14),
                        // ),
                        const Text(
                          '/year',
                          style: TextStyle(
                              color: secondaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              height: 16.8 / 14),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, top: 4, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Unlock Now for just ',
                          style: TextStyle(
                              color: secondaryColor,
                              fontSize: 19,
                              fontWeight: FontWeight.w800,
                              height: 22.8 / 19),
                        ),
                        Text(
                          '₹${state.subscriptionget?.first.offerPrice ?? ""}',
                          style: const TextStyle(
                              color: Color(0xFFFFC92B),
                              fontSize: 19,
                              fontWeight: FontWeight.w800,
                              height: 22.8 / 19),
                        ),
                        // Text(
                        //   '₹5999',
                        //   style: TextStyle(
                        //       color: Color(0xFFFFC92B),
                        //       fontSize: 19,
                        //       fontWeight: FontWeight.w800,
                        //       height: 22.8 / 19),
                        // ),
                        const Text(
                          '/year',
                          style: TextStyle(
                              color: secondaryColor,
                              fontSize: 19,
                              fontWeight: FontWeight.w800,
                              height: 22.8 / 19),
                        ),
                      ],
                    ),
                  )
                ],
              );
      }),
    );
  }

  buildActionButton(BuildContext context) {
    // final isLoading = ref.watch(isLoadingProvider);
    return GestureDetector(
      onTap: () async {
        if (Platform.isIOS) {
          // if (isLoading) return;

          // ref.read(isLoadingProvider.notifier).state = true;
          // getProductDetailsFromAppStore().then(
          //     (value) => ref.read(isLoadingProvider.notifier).state = false);
        } else {
          // if (isLoading) return;
          // ref.read(avoidBottomInsetProvider.notifier).state = true;
          // showSubscriptionCouponBottomSheet(
          //   context,
          //   subscription!,
          //   (purchaseOrder) {
          //     handlePurchaseOrder(purchaseOrder);
          //   },
          // ).then((value) =>
          //     ref.read(avoidBottomInsetProvider.notifier).state = false);
        }
      },
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20.0, right: 20, top: 17, bottom: 10),
        child: BlocBuilder<SubscriptionBloc, SubscriptionState>(
            builder: (context, state) {
          return Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                // border: Border.all(color: primaryColor, strokeAlign: 1, width: 1),
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffFFAC00), Color(0xffA67000)],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffFF8A00),
                    blurRadius: 10,
                  )
                ]),
            child: state.isLoading
                ? const Center(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircularProgressIndicator(color: Colors.white),
                    ),
                  )
                : Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, top: 14, bottom: 4),
                        child: Text(
                          'Original Price ₹${state.subscriptionget?.first.actualPrice ?? ""}/year',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              height: 16.8 / 14),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, top: 4, bottom: 16),
                        child: Text(
                          'Unlock Now for just ₹${state.subscriptionget?.first.offerPrice ?? ""}/year',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w800,
                              height: 22.8 / 19),
                        ),
                      )
                    ],
                  ),
          );
        }),
      ),
    );
  }

  _buildOfferingDetailColumn(BuildContext context) {
    return Column(
      children: [
        _createRow(
            'Manage to receive discounts on NumberOne’s privileged offline and online events throughout the year',
            'Exclusive Discounts'),
        const MySeparator(),
        _createRow(
            'Facilitate interactive learning experiences in the business domain with fellow businessmen and industry experts.',
            'Community Learning'),
        const MySeparator(),
        _createRow(
            'Gain full-scale access to updated, high-quality business courses in combos, bundles, or single units.',
            'Unlimited Access'),
      ],
    );
  }

  _createRow(String message, String header) {
    var tickIcon = SvgPicture.asset('assets/svg/ic_subscription_tick.svg');
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: .5),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: secondaryColor.withOpacity(0.15),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              tickIcon,
              SizedBox(
                width: 270.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 12.0, bottom: 2, left: 14),
                      child: Text(
                        header,
                        style: green13w700style,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2, left: 14),
                      child: Text(
                        message,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: green10w400style,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAdvPanelWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 19.0, right: 10, bottom: 2),
      child: BlocBuilder<SubscriptionBloc, SubscriptionState>(
          builder: (context, state) {
        return ClipRRect(
            borderRadius: BorderRadius.circular(11),
            child: Image.asset(
              "assets/images/subscription_cover_img.png",
              fit: BoxFit.fill,
            )
            // CachedNetworkImage(
            //   imageUrl: state.subscriptionget?.first.coverImage ?? "",
            //   fit: BoxFit.cover,
            //   placeholder: (context, url) => AspectRatio(
            //       aspectRatio: 400 / 220,
            //       child: Image.asset(placeholder, fit: BoxFit.cover)),
            //   errorWidget: (context, url, error) {
            //     return Image.asset(
            //       placeholder,
            //       fit: BoxFit.cover,
            //     );
            //   },
            // ),
            );
      }),
    );
  }

  buildInstructorsList() {
    return BlocBuilder<InstructorBloc, InstructorState>(
        builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 280.h,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: state.instructorList!.length
            //  <= 8
            //     ? state.instructorList!.length
            //     : 8
            ,
            itemBuilder: (context, index) => InstructorCard(
              courseRating: state.instructorList?[index].rating ?? 0,
              image: state.instructorList?[index].profileImage ?? "",
              instructorName: state.instructorList?[index].name ?? "",
              followers: state.instructorList?[index].title ?? "",
              courseCount:
                  // index+1
                  state.instructorList?[index].courseCount ?? 2,
              onViewCourse: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        InstructorProfile(
                      instructorId:
                          state.instructorList?[index].id.toString() ?? "",
                      courseCount:
                          state.instructorList?[index].courseCount.toString() ??
                              "",
                      learners:
                          // state.instructorList?[index]..toString() ?? ""
                          "3",
                      reviewCount:
                          state.instructorList?[index].rating.toString() ?? "",
                      index: index,
                      courseRating: state.instructorList?[index].rating ?? 0,
                    ),
                    transitionDuration: const Duration(seconds: 0),
                  ),
                );
                log("on button pressed is working");
                // Navigator.push(
                //             context,
                //             AppPages.generateRouteSettings(const RouteSettings(
                //                 name: Routers.instructorsProfile)));

                // InstructorProfile
              },
            ),
          ),
        ),
      );
    });
  }
}
