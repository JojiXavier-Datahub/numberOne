// import 'package:flutter/material.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_app_bar1.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_elevated_button_icon.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_tab_bar.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/progress_bar.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';

// import 'widgets/media_player.dart';
// import 'widgets/review_text_icon.dart';
// import 'widgets/tabs/tab_bar_chapter.dart';
// import 'widgets/tabs/tab_bar_download.dart';
// import 'widgets/tabs/tab_bar_over_view.dart';

// class CourseDetailsFive extends StatefulWidget {
//   const CourseDetailsFive({super.key});

//   @override
//   State<CourseDetailsFive> createState() => _CourseDetailsFiveState();
// }

// class _CourseDetailsFiveState extends State<CourseDetailsFive>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   int currentIndex = 0;
//   void _handleTabSelection() {
//     setState(() {
//       currentIndex = _tabController.index;
//     });
//   }

//   @override
//   void initState() {
//     _tabController = TabController(length: 3, vsync: this);
//     _tabController.addListener(_handleTabSelection);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const PreferredSize(
//         preferredSize: Size.fromHeight(50),
//         child: CustomAppBar1(),
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             const MediaPlayer(),
//             Expanded(
//               child: ListView(
//                 padding: const EdgeInsets.all(20),
//                 shrinkWrap: true,
//                 primary: true,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'How to use Chat GPT for Business Growth?',
//                         style: textStyle1,
//                       ),
//                       const SizedBox(height: 10),
//                       Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text('Course Progress', style: textStyle2),
//                               Text(
//                                 '50% Done',
//                                 style: textStyle2.copyWith(
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 5),
//                           const ProgressBar(max: 100, current: 40),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               CustomElevatedButtonIcon(
//                                 iconAsset: 'assets/svg/audio_track.svg',
//                                 label: 'Audio Mode',
//                                 minimumSize: const Size(99, 25),
//                                 onPressed: () {},
//                               ),
//                               CustomElevatedButtonIcon(
//                                 iconAsset: 'assets/svg/edit.svg',
//                                 label: 'Notes',
//                                 minimumSize: const Size(64, 25),
//                                 onPressed: () {},
//                               ),
//                             ],
//                           )
//                         ],
                        
//                       ),
//                       const SizedBox(height: 15),
//                       CustomTabBar(controller: _tabController),
//                       if (_tabController.index == 0) const TabBarChapter(
//                         chapters: [],
//                       ),
//                       if (_tabController.index == 1) const TabBarOverView(),
//                       if (_tabController.index == 2) const TabBarDownload(),
//                       const SizedBox(height: 10),
//                       ReviewTextIcon(onTap: () {}),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
