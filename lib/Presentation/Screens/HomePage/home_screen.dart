import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:number_one_academy_v2/Config/pages.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:number_one_academy_v2/Config/routers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/text_custom.dart';
import 'package:number_one_academy_v2/Application/Insructor/instructor_bloc.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/course_gridwidget.dart';
import 'package:number_one_academy_v2/Application/course_list/course_list_bloc.dart';
import 'package:number_one_academy_v2/Presentation/Screens/MyCourses/my_courses_screen.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Courses/Widget/resume_single_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> courses = [
      'assets/images/b1.png',
      'assets/images/b2.png',
      'assets/images/b1.png',
    ];

    final CarouselController carouselController = CarouselController();

    return BlocBuilder<InstructorBloc, InstructorState>(
        builder: (context, state) {
      // context.read<CourseListBloc>().add(
      //     const CourseListEvent.getCourseList(search: "", instructorId: ''));
      //  context
      // .read<InstructorBloc>()
      // .add(const InstructorEvent.getInstructorList());
      return ListView(
        children: [
          // Padding(
          //   padding:
          //       const EdgeInsets.only(left: 20.0, right: 20, bottom: 0, top: 15),
          //   child: GestureDetector(
          //     onTap: () {
          //       // _copyToClipboard(offer.couponId!, context);
          //     },
          //     child: Container(
          //       width: MediaQuery.of(context).size.width,
          //       decoration: BoxDecoration(
          //         color: const Color(0xFFF1E4BD),
          //         borderRadius: BorderRadius.circular(10),
          //       ),
          //       child: Padding(
          //         padding:
          //             const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           mainAxisSize: MainAxisSize.max,
          //           children: [
          //             Flexible(
          //               fit: FlexFit.tight,
          //               child: RichText(
          //                 text: const TextSpan(
          //                   text: 'Get  ',
          //                   style: black12w400style,
          //                   children: [
          //                     // TextSpan(
          //                     //     text: offer.amountType == 'percentage'
          //                     //         ? "${offer.amount.toString()}% off "
          //                     //         : "${offer.amount!.toStringAsFixed(0)} ₹ off ",
          //                     //     style: green12w700style),
          //                     // TextSpan(
          //                     //     text: local.on_all_our_courses_Use_code_,
          //                     //     style: black12w400style),
          //                     // TextSpan(
          //                     //     text: offer.couponName, style: green12w700style),
          //                     // TextSpan(
          //                     //     text: local.before_the_timer_end_hurry_up_,
          //                     //     style: black12w400style),
          //                     TextSpan(
          //                         text:
          //                             // offer.amountType == 'percentage'
          //                             //     ?
          //                             "5% off ",
          //                         // : "${offer.amount!.toStringAsFixed(0)} ₹ off ",
          //                         style: green12w700style),
          //                     TextSpan(text: "on our", style: black12w400style),

          //                     TextSpan(
          //                         text:
          //                             // offer.amountType == 'percentage'
          //                             //     ?
          //                             " Gold Subscription",
          //                         // : "${offer.amount!.toStringAsFixed(0)} ₹ off ",
          //                         style: green12w700style),
          //                     TextSpan(
          //                         text: " Use code ", style: black12w400style),
          //                     TextSpan(text: 'HAPPY5 ', style: green12w700style),
          //                     TextSpan(
          //                         text: 'before the timer ends. Hurry Up!',
          //                         style: black12w400style),
          //                   ],
          //                 ),
          //               ),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.only(left: 12.0),
          //               child: Column(
          //                 children: [
          //                   const Padding(
          //                     padding: EdgeInsets.only(bottom: 7.0),
          //                     child: Text(
          //                       'OFFER ENDS IN',
          //                       textAlign: TextAlign.center,
          //                       style: TextStyle(
          //                         color: Color(0xFFCAAA4C),
          //                         fontSize: 9,
          //                         fontFamily: 'Euclid Circular A',
          //                         fontWeight: FontWeight.w700,
          //                         height: 0.19,
          //                       ),
          //                     ),
          //                   ),
          //                   Column(
          //                     children: [
          //                       Align(
          //                         alignment: Alignment.centerRight,
          //                         child: SlideCountdownSeparated(
          //                           duration: const Duration(hours: 8) -
          //                               const Duration(hours: 25),
          //                           separatorType: SeparatorType.symbol,
          //                           showZeroValue: true,
          //                           shouldShowDays: (_) => false,
          //                           textStyle: const TextStyle(
          //                             fontFamily: 'DigitalNumbers',
          //                             color: Colors.white,
          //                             fontWeight: FontWeight.w400,
          //                             fontSize: 13,
          //                           ),
          //                           onDone: () {
          //                             // ref
          //                             //     .read(offerTimerProvider.notifier)
          //                             //     .state = false;
          //                           },
          //                           decoration: BoxDecoration(
          //                             borderRadius: BorderRadius.circular(3),
          //                             gradient: const LinearGradient(
          //                               begin: Alignment.topCenter,
          //                               end: Alignment.bottomCenter,
          //                               colors: [
          //                                 Color(0xff000000),
          //                                 Color(0xff289278),
          //                                 Color(0xff000000)
          //                               ],
          //                             ),
          //                           ),
          //                         ),
          //                       ),

          //                       // Row(
          //                       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                       //   mainAxisSize: MainAxisSize.max,
          //                       //   children: [
          //                       //     Text(local.minutes,
          //                       //         style: black10w400style.copyWith(
          //                       //             fontSize: 7,
          //                       //             fontWeight: FontWeight.w700,
          //                       //             height: 15 / 7)),
          //                       //     Text(local.seconds,
          //                       //         style: black10w400style.copyWith(
          //                       //             fontSize: 7,
          //                       //             fontWeight: FontWeight.w700,
          //                       //             height: 15 / 7)),
          //                       //   ],
          //                       // )
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.only(right: 10, top: 10),
          //   child: Image.asset(
          //     'assets/svg/bannerImage.png',
          //     width: 400,
          //     // height: ,
          //   ),
          // ),
          const SizedBox(height: 20),
          CarouselSlider.builder(
            itemCount: courses.length <= 10 ? courses.length : 10,
            carouselController: carouselController,
            itemBuilder: (context, itemIndex, pageViewIndex) {
              return GestureDetector(
                onTap: () {
                  // context.router
                  //     .push(CourseDetailRoute(course: courses[itemIndex]));
                },
                child: Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Image.asset(
                      courses[itemIndex],
                      fit: BoxFit.cover,
                    )
                    //  CachedNetworkImage(
                    //   imageUrl: courses[itemIndex],
                    //   imageBuilder: (context, imageProvider) {
                    //     return Container(
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(11),
                    //         image: DecorationImage(
                    //           image: imageProvider,
                    //           fit: BoxFit.cover,
                    //         ),
                    //       ),
                    //     );
                    //   },
                    //   //_getCoverImage(courses),
                    //   fit: BoxFit.cover,
                    //   //width: MediaQuery.of(context).size.width-20,
                    //   placeholder: (context, url) => ClipRRect(
                    //     borderRadius: BorderRadius.circular(11),
                    //     child: SizedBox(
                    //       width: MediaQuery.of(context).size.width,
                    //       height: MediaQuery.of(context).size.height * 0.80,
                    //       child: Image.asset(
                    //         placeholder,
                    //         fit: BoxFit.cover,
                    //       ),
                    //     ),
                    //   ),
                    //   errorWidget: (context, url, error) {
                    //     return Image.asset(
                    //       placeholder,
                    //       fit: BoxFit.cover,
                    //     );
                    //   },
                    // ),
                    ),
              );
            },
            options: CarouselOptions(
                aspectRatio: 320 / 190,
                viewportFraction: 1.0,
                initialPage: 0,
                padEnds: false,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 7),
                autoPlayAnimationDuration: const Duration(milliseconds: 2000),
                autoPlayCurve: Curves.decelerate,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {}),
          ),
          BlocBuilder<CourseListBloc, CourseListState>(
              builder: (context, state) {
            return CourseGridWidget(
              isFreeCource: false,
              isFreeOrSubscribedCourses: subscribedOrNot != "" ? true : false,
              mainButtonOnTap: () {},
              courselist: state.courseList?.list ?? [],
              gridTitle: "Explore Learning",
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
            padding: const EdgeInsets.only(left: 13.0, top: 16, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextCustom(
                  text: "Resume Learning",
                  textColor: secondaryColor,
                  size: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff006066).withOpacity(.15),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(40)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation1, animation2) =>
                                        const MyCourseScreen(
                                  id: 1,
                                ),
                                transitionDuration: const Duration(seconds: 0),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 0),
                                  child: TextCustom(
                                    text: "My Courses",
                                    size: 11.sp,
                                    textAlign: TextAlign.center,
                                    textColor: secondaryColor,
                                    fontWeight: FontWeight.w700,
                                  )),
                              const Padding(
                                padding: EdgeInsets.only(
                                  right: 5.0,
                                ),
                                child: Icon(
                                  Icons.navigate_next_sharp,
                                  size: 16,
                                  color: secondaryColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          kh10,
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => const ResumeSingleWidget(
              courseTitile: "How to use Chat GPT for Business Growth?",
              timeLeft: "12",
              image:
                  "https://media.istockphoto.com/id/1225173869/photo/house-boat-anchored-in-lake-with-jungle-background-backwaters-kerala-india.jpg?s=612x612&w=0&k=20&c=uo-bsRQjhlT9AgeWBs_pkSvHQwStCelMC75EUpzwjHU=",

              // instructorName:
              //     widget.courseDetails?.courseInstructors?.first.name ?? "",
              // detils: widget.isfromSubscription
              //     ? "NumberOne Gold Subscription              1 year Plan"
              //     : widget.courseDetails?.courseTitle ?? "",
              isfromSubscription: true,
              // price: widget.isfromSubscription
              //     ? widget.subscriptiondetails?.first.offerPrice ?? ""
              //     : widget.courseDetails?.coursePrice.toString() ?? "",
            ),
            itemCount: 3,
          ),
          BlocBuilder<CourseListBloc, CourseListState>(
              builder: (context, state) {
            return CourseGridWidget(
              isFreeCource: false,
              isFreeOrSubscribedCourses: subscribedOrNot != "" ? true : false,
              mainButtonOnTap: () {},
              courselist: state.courseList?.list ?? [],
              gridTitle: "Explore Learning",
              courseOnTap: () {
                // Navigator.push(=
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const CourseDetails(),
                //     ));
              },

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
              // courses: couseslist,
            );
          })
        ],
      );
    });
  }
}
