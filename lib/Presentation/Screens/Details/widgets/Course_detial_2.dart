// import 'dart:ui' as ui show PlaceholderAlignment;
// import 'package:figma_squircle/figma_squircle.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:number_one_academy_v2/Application/course_list/course_list_bloc.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_app_bar1.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_container1.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_elevated_button.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_ritch_text2.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_tab_bar.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_video_player.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/price_tag.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/tabs/tab_bar_chapter.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/tabs/tab_bar_download.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/tabs/tab_bar_over_view.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/purchase/purchase_screen.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
// import 'package:number_one_academy_v2/Presentation/Widgets/custom_rating_bar.dart';
// import 'package:number_one_academy_v2/Presentation/Widgets/text_custom.dart';
// import 'package:number_one_academy_v2/Utils/colors.dart';
// import 'package:number_one_academy_v2/Utils/constants.dart';
// import 'package:share_plus/share_plus.dart';

// class CourseDetailsTestText extends StatefulWidget {
//   final String courseid;
//   final bool freeOrsubscribedCourse;
//   const CourseDetailsTestText(
//       {super.key,
//       required this.courseid,
//       required this.freeOrsubscribedCourse});

//   @override
//   State<CourseDetailsTestText> createState() => _CourseDetailsTestTextState();
// }

// class _CourseDetailsTestTextState extends State<CourseDetailsTestText>
//      {
//   late TabController _tabController;
//   int currentIndex = 0;
//   int chapterIndex = 0;
//   changeChapterIndex(index) {
//     setState(() {
//       chapterIndex = index;
//     });
//   }


  

//   @override
//   Widget build(BuildContext context) {
//     context
//         .read<CourseListBloc>()
//         .add(CourseListEvent.getCourse(id: widget.courseid));
//     return WillPopScope(
//       onWillPop: () async {
//         context
//             .read<CourseListBloc>()
//             .add(const CourseListEvent.changeChapterIndex(index: 0));
//         return false;
//       },
//       child: DefaultTabController(
//         length: 3,
//         child: Scaffold(
//           appBar: const PreferredSize(
//             preferredSize: Size.fromHeight(50),
//             child: CustomAppBar1(),
//           ),
//           body: SafeArea(
//             child: Column(
//               children: [
//                 // BlocBuilder<CourseListBloc, CourseListState>(
//                 //     builder: (context, state) {
//                 //   return state.isLoading
//                 //       ? const SizedBox()
//                 //       : VideoPlayerView(
//                 //         id:state.chapterdId??[],
//                 //           // url: state.videoList?[0].streamingUrl ?? "",
//                 //          );
//                 // }),
//                 BlocBuilder<CourseListBloc, CourseListState>(
//                     builder: (context, state) {
//                   return
//                       //  (state.videoList?[0].streamingUrl == null) ||
//                       state.isLoading || state.videoLoading
//                           ? SizedBox(
//                               height: 212.h,
//                               child: Padding(
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: 41.w, vertical: 40.h),
//                                 child: SvgPicture.asset(
//                                   splashLogo,
//                                   fit: BoxFit.fill,
//                                 ),
//                               ),
//                             )
//                           // : VideoPlayerView(
//                           //     id: state.chapterdId ?? [],
//                           //     // url: state.videoList?[0].streamingUrl ?? "",
//                           //   );
//                           // SizedBox(
//                           //   height: 250.h,
//                           //   child: const Center(child: CircularProgressIndicator(
//                           //     color: primaryColor,
//                           //   )),
//                           // )
//                           // ThumbnailWidget(
//                           //     urlThumbNail: state.videoList?[0].thumbnailUrl ?? "")
        
//                           : CustomVideoPlayer(
//                               playBackCompleted: () {},
        
//                               // key: _key,
//                               thumbnailUrl: state.videoList?[state.chapterIndex!]
//                                       .thumbnailUrl ??
//                                   "",
//                               // key: ValueKey(state.videoList?[0].streamingUrl ?? ""),
//                               videoUrl: state.videoList?[state.chapterIndex!]
//                                       .streamingUrl ??
//                                   "",
//                             );
//                 }),
        
//                 Expanded(
//                   child: ListView(
//                     shrinkWrap: true,
//                     padding: const EdgeInsets.all(20),
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           BlocBuilder<CourseListBloc, CourseListState>(
//                               builder: (context, state) {
//                             return Text(
//                               state.courseList?.list
//                                       ?.where((element) =>
//                                           element.id == widget.courseid)
//                                       .first
//                                       .courseTitle ??
//                                   "",
//                               style: textStyle1,
//                             );
//                           }),
//                           kh5,
//                           BlocBuilder<CourseListBloc, CourseListState>(
//                               builder: (context, state) {
//                             return Text(
//                               state.courseList?.list
//                                       ?.where((element) =>
//                                           element.id == widget.courseid)
//                                       .first
//                                       .courseDescription ??
//                                   "",
//                               style: textStyle1.copyWith(
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: 10.sp,
//                               ),
//                             );
//                           }),
//                           kh10,
//                           BlocBuilder<CourseListBloc, CourseListState>(
//                               builder: (context, state) {
//                             return RichText(
//                               text: TextSpan(
//                                 children: [
//                                   TextSpan(
//                                     text: 'By',
//                                     style: textStyle1.copyWith(
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: 12,
//                                     ),
//                                   ),
//                                   const WidgetSpan(child: kw5),
//                                   TextSpan(
//                                     text: state.courseList?.list
//                                             ?.where((element) =>
//                                                 element.id == widget.courseid)
//                                             .first
//                                             .courseInstructors
//                                             ?.first
//                                             .name ??
//                                         "",
//                                     style: textStyle1.copyWith(
//                                       color: lightGreen,
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: 12,
//                                     ),
//                                   ),
//                                   const WidgetSpan(child: kw5),
//                                   WidgetSpan(
//                                     alignment: ui.PlaceholderAlignment.middle,
//                                     child: SvgPicture.asset(
//                                       'assets/svg/ic_green_tick_mark.svg',
//                                       width: 10,
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             );
//                           }),
//                           kh5,
//                           BlocBuilder<CourseListBloc,CourseListState>(
//                             builder: (context,state) {
//                               return CustomRatingBar(rating:state.courseList?.list
//                                       ?.where((element) =>
//                                           element.id == widget.courseid)
//                                       .first
//                                       .totalRatingsCount?.toDouble() ??
//                                   0.0,);
//                             }
//                           ),
//                           kh10,
                          
//                           Row(
//                             children: [
//                               BlocBuilder<CourseListBloc, CourseListState>(
//                                   builder: (context, state) {
//                                 return CustomRitchText2(
//                                     textOne: state.courseList?.list
//                                             ?.where((element) =>
//                                                 element.id == widget.courseid)
//                                             .first
//                                             .courseRating
//                                             .toString() ??
//                                         "",
//                                     textTwo: 'Reviews');
//                               }),
//                               kw15,
//                               const CustomRitchText2(
//                                 textOne: '1445',
//                                 textTwo: 'Learners',
//                               ),
//                               kw20,
//                               GestureDetector(
//                                 onTap: () {
//                                   Share.share(
//                                       'NumberOne Academy https://www.numberone.academy/',
//                                       subject:
//                                           'I have found an interesting course from Numberone Academy to upskill your business career. Check out the same to learn, grow and develop a profitable business.Click the link and have a look at the course!');
//                                 },
//                                 child: Row(
//                                   children: [
//                                     SvgPicture.asset(
//                                       'assets/svg/ic_share_gold.svg',
//                                       color: primaryColor,
//                                       height: 15,
//                                       width: 15,
//                                     ),
//                                     kw5,
//                                     const TextCustom(
//                                       text: "Share",
//                                       textColor: secondaryColor,
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           kh10,
//                           BlocBuilder<CourseListBloc, CourseListState>(
//                               builder: (context, state) {
//                             return PriceTag(
//                               offerPrice: state.courseList?.list
//                                       ?.where((element) =>
//                                           element.id == widget.courseid)
//                                       .first
//                                       .coursePrice ??
//                                   0,
//                               originalPrice: state.courseList?.list
//                                       ?.where((element) =>
//                                           element.id == widget.courseid)
//                                       .first
//                                       .regularPrice ??
//                                   0,
//                             );
//                           }),
//                           kh10,
//                           CustomTabBar(controller: _tabController),
//                           if (_tabController.index == 0)
//                             BlocBuilder<CourseListBloc, CourseListState>(
//                                 builder: (context, state) {
//                               return TabBarChapter(
//                                 chpaterIndex: state.chapterIndex!,
        
//                                 isFreeCourse: widget.freeOrsubscribedCourse,
//                                 // state.courseGet?.isFreeCourse ?? false,
//                                 chapters: state.courseGet?.chapters ?? [],
//                               );
//                             }),
//                           if (_tabController.index == 1)
//                             BlocBuilder<CourseListBloc, CourseListState>(
//                                 builder: (context, state) {
//                               return TabBarOverView(
//                                 highlight: state.courseGet?.highlights ?? [],
//                               );
//                             }),
//                           if (_tabController.index == 2) const TabBarDownload(),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 widget.freeOrsubscribedCourse ? k : buildPriceWidget(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   buildPriceWidget() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//       child: CustomContainer1(
//         padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Course Fee',
//                   style: textStyle1.copyWith(
//                     color: secondaryColor,
//                     fontWeight: FontWeight.w500,
//                     fontSize: 8,
//                   ),
//                 ),
//                 BlocBuilder<CourseListBloc, CourseListState>(
//                     builder: (context, state) {
//                   return PriceTag(
//                     offerPrice: state.courseGet?.coursePrice ?? 0,
//                     originalPrice: state.courseGet?.regularPrice ?? 0,
//                     isBottom: true,
//                   );
//                 }),
//               ],
//             ),
//             BlocBuilder<CourseListBloc, CourseListState>(
//                 builder: (context, state) {
//               return CustomElevatedButton(
//                 btnText: 'BUY NOW',
//                 onPressed: () {
//                   context.read<CourseListBloc>().add(
//                       const CourseListEvent.videoPause(trigerState: "Buy Now"));

//                   Navigator.push(
//                     context,
//                     PageRouteBuilder(
//                       pageBuilder: (context, animation1, animation2) =>
//                           PurchaseScreen(
//                             courseDetails: 

//                          state.courseGet,
//                         isfromSubscription: false,
//                       ),
//                       transitionDuration: const Duration(seconds: 0),
//                     ),
//                   );

//                   // context
//                   //     .read<CourseListBloc>()
//                   //     .add(const CourseListEvent.videoPause());

//                   // Navigator.push(
//                   //     context,
//                   //     AppPages.generateRouteSettings(
//                   //         const RouteSettings(name: Routers.paymentDetails)));
//                 },
//               );
//             })
//           ],
//         ),
//       ),
//     );
//   }

  
// }
