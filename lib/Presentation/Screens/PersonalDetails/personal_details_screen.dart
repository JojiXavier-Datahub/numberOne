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

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  bool isEdit = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var data = context.read<OnboardingPhoneBloc>().state.profileeModel;

    final TextEditingController controller =
        TextEditingController(text: data?.fullName ?? "");

    final TextEditingController gController =
        TextEditingController(text: data?.userDetails?.gender ?? '');

    final TextEditingController dController =
        TextEditingController(text: data?.userDetails?.dateOfBirth ?? '');

    final TextEditingController pController =
        TextEditingController(text: data?.phoneNumber ?? "");

    final TextEditingController eController =
        TextEditingController(text: data?.userDetails?.email ?? '');

    final TextEditingController aController =
        TextEditingController(text: data?.userDetails?.address1 ?? '');

    final TextEditingController cController =
        TextEditingController(text: data?.userDetails?.city ?? '');

    final TextEditingController sController =
        TextEditingController(text: data?.userDetails?.state ?? '');

    final TextEditingController pinController =
        TextEditingController(text: data?.userDetails?.pincode ?? '');
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
                  city: cController.text,
                  dateOfBirth: dController.text,
                  email: eController.text,
                  fullName: controller.text,
                  gender: gController.text,
                  phoneNumber: pController.text,
                  pincode: pinController.text,
                  userState: sController.text),
              buildProfileInput(),
              CustumTextFormField(
                enabled: isEdit,
                controller: controller,
                label: 'Full Name',
              ),
              CustumTextFormField(
                enabled: isEdit,
                controller: gController,
                label: 'Gender',
              ),
              CustumTextFormField(
                enabled: isEdit,
                controller: dController,
                label: 'Date of Birth',
                suffixIcon: InkWell(
                  onTap: () async {
                    // DateTime? picked =
                    await showDatePicker(
                        context: context,
                        firstDate: DateTime(2016),
                        lastDate: DateTime(2024));
                  },
                  child: SizedBox(
                    height: 18,
                    width: 18,
                    child: SvgPicture.asset('assets/svg/calendar.svg'),
                  ),
                ),
              ),
              CustumTextFormField(
                enabled: false,
                controller: pController,
                label: 'Phone Number',
                labelIcon: WidgetSpan(
                  alignment: ui.PlaceholderAlignment.middle,
                  child: SvgPicture.asset(
                    'assets/svg/whatsapp.svg',
                  ),
                ),
                // prefixIcon: Text(
                //   '+91\t',
                //   style: textStyle1.copyWith(
                //     fontWeight: FontWeight.w400,
                //     fontSize: 16.sp,
                //     color: labelColor,
                //   ),
                // ),
                suffixIcon: SvgPicture.asset(tickMark),
              ),
              CustumTextFormField(
                enabled: isEdit,
                controller: eController,
                label: 'Email',
                suffixIcon: SvgPicture.asset(tickMark),
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
            ],
          ),
        ),
      ),
    );
  }

  Row buildProfileType(
      {String? fullName,
      String? address,
      String? city,
      String? userState,
      String? pincode,
      String? email,
      String? dateOfBirth,
      String? gender,
      String? phoneNumber}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Personal Details',
          style: textStyle1.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
        BlocBuilder<OnboardingPhoneBloc, OnboardingPhoneState>(
            builder: (context, state) {
          return CustomElevatedButton(
            btnText: !isEdit ? 'Edit' : 'Confirm',
            onPressed: () {
              if (isEdit) {
                log("edit function is calling");
                context.read<OnboardingPhoneBloc>().add(
                    OnboardingPhoneEvent.updateProfile(
                        context: context,
                        entrepreneurType: state
                            .profileeModel!.entrepreneurType!,
                        address: address,
                        city: city,
                        dateOfBirth: dateOfBirth,
                        fullName: fullName,
                        email: email,
                        pincode: pincode,
                        state: userState,
                        gender: gender,
                        businesState:
                            state.profileeModel?.businessDetails?.state ?? "",
                        companyName:
                            state.profileeModel?.businessDetails?.companyName ??
                                "",
                        businessAddress:
                            state.profileeModel?.businessDetails?.address1 ??
                                "",
                        businessCity:
                            state.profileeModel?.businessDetails?.city ?? "",
                        businessPincode:
                            state.profileeModel?.businessDetails?.pincode ?? "",
                        businessTurnOver:
                            state.profileeModel?.businessTurnOver ?? "",
                        gstNumber:
                            state.profileeModel?.businessDetails?.gstNumber ??
                                "",
                        industry:
                            state.profileeModel?.selectedIndustry?.first ?? "",
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
