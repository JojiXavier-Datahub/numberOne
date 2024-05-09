import 'dart:developer';
import 'dart:ui' as ui show PlaceholderAlignment;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:number_one_academy_v2/Application/OnboardingPhone/onboarding_phone_bloc.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_elevated_button.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';

import '../Details/widgets/custom_app_bar1.dart';
import '../styles/text_styles.dart';
import 'widget/CustumTextFormField.dart';

class BusinessDetailsScreen extends StatefulWidget {
  const BusinessDetailsScreen({super.key});

  @override
  State<BusinessDetailsScreen> createState() => _BusinessDetailsScreenState();
}

class _BusinessDetailsScreenState extends State<BusinessDetailsScreen> {
  bool isEdit = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var data = context.read<OnboardingPhoneBloc>().state.profileeModel;

    final TextEditingController controller =
        TextEditingController(text: data?.businessDetails?.companyName ?? "");

    final TextEditingController turnOverController =
        TextEditingController(text: data?.businessTurnOver ?? '');

    final TextEditingController indusrtryController =
        TextEditingController(text: data?.selectedIndustry?.first ?? '');

    final TextEditingController gstController =
        TextEditingController(text: data?.businessDetails?.gstNumber ?? '');

    final TextEditingController aController =
        TextEditingController(text: data?.businessDetails?.address1 ?? '');

    final TextEditingController cController =
        TextEditingController(text: data?.businessDetails?.city ?? '');

    final TextEditingController sController =
        TextEditingController(text: data?.businessDetails?.state ?? '');

    final TextEditingController pinController =
        TextEditingController(text: data?.businessDetails?.pincode ?? '');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar1(
          elevation: 4,
          isShape: true,
          // actions: [NotificationIcon()],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Wrap(
            // crossAxisAlignment: CrossAxisAlignment.start,
            runSpacing: 4,
            children: [
              buildProfileType(
                  address: aController.text,
                  businessstate: sController.text,
                  city: cController.text,
                  companyName: controller.text,
                  gstNumber: gstController.text,
                  industry: indusrtryController.text,
                  pincode: pinController.text,
                  turnOver: turnOverController.text),
              // buildProfileInput(),
              CustumTextFormField(
                enabled: isEdit,
                controller: controller,
                label: 'Company Name',
              ),
              CustumTextFormField(
                enabled: isEdit,
                controller: aController,
                label: 'Address',
              ),
              CustumTextFormField(
                enabled: isEdit,
                controller: cController,
                label: 'City',
              ),
              Row(
                children: [
                  Expanded(
                    child: CustumTextFormField(
                      enabled: isEdit,
                      controller: sController,
                      label: 'State',
                    ),
                  ),
                  kw20,
                  Expanded(
                    child: CustumTextFormField(
                      enabled: isEdit,
                      controller: pinController,
                      label: 'Pincode',
                    ),
                  ),
                ],
              ),
              CustumTextFormField(
                enabled: isEdit,
                controller: gstController,
                label: 'GST No.',
                suffixIcon: SvgPicture.asset(tickMark),
              ),
              CustumTextFormField(
                enabled: isEdit,
                controller: turnOverController,
                label: 'Turnover',
              ),
              CustumTextFormField(
                enabled: isEdit,
                controller: indusrtryController,
                label: 'Industry',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildProfileType({
    String? companyName,
    String? address,
    String? city,
    String? businessstate,
    String? pincode,
    String? gstNumber,
    String? turnOver,
    String? industry,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Business Details',
          style: textStyle1.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
        BlocBuilder<OnboardingPhoneBloc, OnboardingPhoneState>(
            builder: (context, state) {
          return CustomElevatedButton(
            btnText: !isEdit ? 'Edit' : 'Confirm',
            onPressed: () async {
              if (isEdit) {
                log("edit function is calling");
                context.read<OnboardingPhoneBloc>().add(
                    OnboardingPhoneEvent.updateProfile(
                        context: context,
                        entrepreneurType:
                            state.profileeModel!.entrepreneurType!,
                        address:
                            state.profileeModel?.userDetails?.address1 ?? "",
                        city: state.profileeModel?.userDetails?.city ?? "",
                        dateOfBirth:
                            state.profileeModel?.userDetails?.dateOfBirth ?? "",
                        fullName: state.profileeModel?.fullName ?? "",
                        email: state.profileeModel?.userDetails?.email ?? "",
                        pincode:
                            state.profileeModel?.userDetails?.pincode ?? "",
                        state: state.profileeModel?.userDetails?.state ?? "",
                        gender: state.profileeModel?.userDetails?.gender ?? "",
                        businesState: businessstate!,
                        companyName: companyName,
                        businessAddress: address,
                        businessCity: city,
                        businessPincode: pincode,
                        businessTurnOver: turnOver,
                        gstNumber: gstNumber,
                        industry: industry,
                        appLanguage: state.profileeModel?.appLanguage ?? ""));
                setState(() => isEdit = !isEdit);
              } else {
                setState(() => isEdit = !isEdit);
              }

              /// impliment edit using state management is it enable configure CustomTextformField is enabled
            },
            backgroundColor: greyTab,
            textColor: secondaryColor,
            minimumSize: const Size(79, 30),
          );
        }),
      ],
    );
  }

  buildProfileInput() {
    return Container(
      height: 80.h,
      width: 77.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: primaryColor,
          width: 2.sp,
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const Center(child: CircleAvatar()),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 20.h,
              width: 20.w,
              child: IconButton.filled(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: const Icon(
                  Icons.mode_edit_outline_rounded,
                  color: Colors.white,
                  size: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
