import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:number_one_academy_v2/Presentation/Screens/MainPage/widgets/bottom_nav.dart';
import 'package:number_one_academy_v2/Presentation/Screens/OnboardingPhoneScreen/onboarding_phone_screen.dart';
import 'package:number_one_academy_v2/Presentation/Screens/PersonalDetails/business_details.dart';
import 'package:number_one_academy_v2/Presentation/Screens/PersonalDetails/help&support.dart';
import 'package:number_one_academy_v2/Presentation/Screens/PersonalDetails/order_details.dart';
import 'package:number_one_academy_v2/Presentation/Screens/PersonalDetails/personal_details_screen.dart';
import 'package:number_one_academy_v2/Presentation/Screens/PersonalDetails/settings.dart';
import 'package:number_one_academy_v2/Presentation/Screens/PersonalDetails/subscription_detail.dart';
import 'package:number_one_academy_v2/Utils/Helper/shared_pref.dart';
import '../../../Utils/colors.dart';
import '../../../Utils/constants.dart';
import '../../Widgets/alert_dialog.dart';
import 'widgets/profile_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 35.h,
              ),
              Text(
                'Profile Completeness',
                style: green13w500style,
              ),
              kh10,
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          spreadRadius: 0,
                          offset: Offset(0, 2),
                          blurRadius: 5,
                          color: Colors.white)
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: const LinearProgressIndicator(
                    minHeight: 13,
                    color: lightGreen,
                    backgroundColor: Color(0xffE3E3E3),
                    value: .3,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 22.0, right: 22, top: 5, bottom: 27),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${(.3 * 100).toInt()}%',
                      style: green13w400style,
                    ),
                    Text(
                      '100%',
                      style: green13w400style,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfileWidget(
                        ontap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  const PersonalDetails(),
                              transitionDuration: const Duration(seconds: 0),
                            ),
                          );
                        },
                        containerImage: personalDetailsIcon,
                        containerName: 'Personal Details',
                      ),
                      ProfileWidget(
                        ontap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  const BusinessDetailsScreen(),
                              transitionDuration: const Duration(seconds: 0),
                            ),
                          );
                        },
                        containerImage: businessdetails,
                        containerName: 'Business Details',
                      ),
                      ProfileWidget(
                        ontap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  const SubscriptionDetails(),
                              transitionDuration: const Duration(seconds: 0),
                            ),
                          );
                        },
                        containerImage: subscriptiondetailsicon,
                        containerName: 'Subscription Details',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfileWidget(
                        ontap: () {
                          log("navigation is running");
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  const OrderDetails(),
                              transitionDuration: const Duration(seconds: 0),
                            ),
                          );
                        },
                        containerImage: orderhistoryicon,
                        containerName: 'Order History',
                      ),
                      ProfileWidget(
                        ontap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  const Settings(),
                              transitionDuration: const Duration(seconds: 0),
                            ),
                          );
                        },
                        containerImage: settingsicon,
                        containerName: 'Settings',
                      ),
                      ProfileWidget(
                        ontap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  const HelpAndSupport(),
                              transitionDuration: const Duration(seconds: 0),
                            ),
                          );
                        },
                        containerImage: supportIcon,
                        containerName: 'Help & Support',
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Column(
          children: [
            Center(
              child: InkWell(
                onTap: () {
                  if (context.mounted) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return NumberOneAlertDialog(
                            confirmFunction: () {
                              setState(() {
                                SharedPrefUtil.clear();
                                kKeyAccessToken = "";
                                kUserName = "";
                                krefreshToken = "";
                              });

                              indexChangeNotifier.value = 0;

                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const OnBoardingPhone()),
                                  (route) => false);

                              // removeAllExceptList(['firstTime']).then((_) {
                              //   debugPrint('Entries removed successfully');
                              // }).catchError((error) {
                              //   debugPrint('Error removing entries: $error');
                              // });
                              // FirebaseAuth.instance.signOut();
                              // context.router.replaceAll([const LoginRoute()]);
                            },
                            heading: "Logout",
                            subHeading: "Do you want to logout",
                            confirmText: "yes",
                          );
                        });
                  }
                },
                child: Container(
                  width: 88.w,
                  height: 29.h,
                  decoration: BoxDecoration(
                    color: containerGreyColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(logoutIcon),
                      kw5,
                      Text(
                        'Logout',
                        style: green11w500style,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            kh10,
            Text(
              "Version 1.0.0",
              style: textSecond8sw400,
            ),
            kh5,
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0, right: 8, left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Made with', style: textSeconds11sw400),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.0),
                    child: Icon(Icons.favorite_rounded,
                        color: Colors.red, size: 15),
                  ),
                  Text('by NumberOne Academy', style: textSeconds11sw400),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
