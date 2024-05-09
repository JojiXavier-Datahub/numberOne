// import 'package:flutter/material.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/chapter_tile.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_app_bar1.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_elevated_button_icon.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_tab_bar.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_video_player.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/progress_bar.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';

// class CourseDetailsFour extends StatefulWidget {
//   const CourseDetailsFour({super.key});

//   @override
//   State<CourseDetailsFour> createState() => _CourseDetailsFourState();
// }

// class _CourseDetailsFourState extends State<CourseDetailsFour>
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
//              CustomVideoPlayer(
//                                   playBackCompleted: (){},

//               thumbnailUrl: "",
//               videoUrl:
//                   'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
//             ),
//             Expanded(
//               child: ListView(
//                 shrinkWrap: true,
//                 padding: const EdgeInsets.all(20),
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
//                       CustomTabBar(
//                         controller: _tabController,
//                       ),
//                       ListView(
//                         shrinkWrap: true,
//                         physics: const NeverScrollableScrollPhysics(),
//                         children: const [
//                           // ChapterTile(title: 'Introduction', isPlayed: true),
//                           // ChapterTile(
//                           //     title: 'People buy people first', isPlayed: true),
//                           // ChapterTile(
//                           //     title: 'People buy people first',
//                           //     isLocked: false),
//                           // ChapterTile(
//                           //     title: 'People buy people first',
//                           //     isLocked: false),
//                         ],
//                       ),
//                       const SizedBox(height: 10),
//                       buildReviewText(),
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

//   RichText buildReviewText() {
//     return RichText(
//       text: TextSpan(
//         children: [
//           TextSpan(
//             text: 'Like the course?',
//             style: textStyle1.copyWith(
//               fontWeight: FontWeight.w600,
//               fontSize: 14,
//             ),
//           ),
//           const WidgetSpan(child: SizedBox(width: 7)),
//           TextSpan(
//             text: 'Write a review',
//             style: textStyle1.copyWith(
//               fontWeight: FontWeight.w600,
//               fontSize: 14,
//               color: const Color(0xff00C294),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
