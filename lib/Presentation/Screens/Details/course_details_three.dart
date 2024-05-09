// import 'dart:ui' as ui show PlaceholderAlignment;

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/chapter_tile.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_app_bar1.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_container1.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_elevated_button.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_ritch_text2.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_tab_bar.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_video_player.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/price_tag.dart';
// import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';
// import 'package:number_one_academy_v2/Utils/colors.dart';

// class CourseDetailsThree extends StatefulWidget {
//   const CourseDetailsThree({super.key});

//   @override
//   State<CourseDetailsThree> createState() => _CourseDetailsThreeState();
// }

// class _CourseDetailsThreeState extends State<CourseDetailsThree>
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
//                   SizedBox(
//                     // height: 460,
//                     width: 319,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'How to use Chat GPT for Business Growth?',
//                           style: textStyle1,
//                         ),
//                         const SizedBox(height: 5),
//                         Text(
//                           'ശരിയായ കണ്ടൻറ്റ് ആണ് ബിസിനസ്സുമായി ഓഡിയൻസിനെ കണക്ട് ചെയ്യുന്നത്. ആകർഷകമായ രീതിയിൽ ചാറ്റ് ജിപിടി ഉപയോഗിച്ച് എങ്ങിനെ കണ്ടൻറ്റ് തയ്യാറാക്കാം എന്ന് നമുക്ക് ഈ കോഴ്സിലൂടെ അറിയാം.',
//                           style: textStyle1.copyWith(
//                             fontWeight: FontWeight.w400,
//                             fontSize: 10,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         RichText(
//                           text: TextSpan(
//                             children: [
//                               TextSpan(
//                                 text: 'By',
//                                 style: textStyle1.copyWith(
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                               const WidgetSpan(child: SizedBox(width: 5)),
//                               TextSpan(
//                                 text: 'Arjun Hari',
//                                 style: textStyle1.copyWith(
//                                   color: lightGreen,
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 12,
//                                 ),
//                               ),
//                               const WidgetSpan(child: SizedBox(width: 5)),
//                               WidgetSpan(
//                                 alignment: ui.PlaceholderAlignment.middle,
//                                 child: SvgPicture.asset(
//                                   'assets/svg/ic_green_tick_mark.svg',
//                                   width: 10,
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                         const SizedBox(height: 5),
//                         buildStar(),
//                         const SizedBox(height: 10),
//                         const Row(
//                           children: [
//                             CustomRitchText2(
//                                 textOne: '233', textTwo: 'Reviews'),
//                             SizedBox(width: 15),
//                             CustomRitchText2(
//                               textOne: '1445',
//                               textTwo: 'Learners',
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 10),
//                         const PriceTag(
//                           offerPrice: 799,
//                           originalPrice: 1799,
//                         ),
//                         const SizedBox(height: 10),
//                         CustomTabBar(
//                           controller: _tabController,
//                         ),
//                         ListView(
//                           shrinkWrap: true,
//                           physics: const NeverScrollableScrollPhysics(),
//                           children: const [
//                             // ChapterTile(title: 'Introduction', isLocked: false),
//                             // ChapterTile(
//                             //     title: 'People buy people first',
//                             //     isLocked: true),
//                             // ChapterTile(
//                             //     title: 'People buy people first',
//                             //     isLocked: true),
//                             // ChapterTile(
//                             //     title: 'People buy people first',
//                             //     isLocked: true),
//                           ],
//                         ),
//                         const SizedBox(height: 75),
//                         CustomContainer1(
//                           padding: const EdgeInsets.symmetric(
//                             vertical: 5,
//                             horizontal: 10,
//                           ),
//                           child: Row(
//                             children: [
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     'Course Fee',
//                                     style: textStyle1.copyWith(
//                                       fontWeight: FontWeight.w500,
//                                       fontSize: 11,
//                                     ),
//                                   ),
//                                   Text(
//                                     'FREE',
//                                     style: textStyle1.copyWith(
//                                       fontWeight: FontWeight.w700,
//                                       fontSize: 15,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               const Spacer(),
//                               buildBenifitButton(),
//                               const SizedBox(width: 10),
//                               CustomElevatedButton(
//                                 btnText: 'ENROLL NOW',
//                                 onPressed: () {},
//                                 minimumSize: const Size(98, 32),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   buildBenifitButton() {
//     return Container(
//       width: 83,
//       height: 32,
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Color(0xFFFFAC00), Color(0xFFA67000)],
//           begin: FractionalOffset(0.0, 0.0),
//           end: FractionalOffset(0.0, 1.0),
//         ),
//         borderRadius: BorderRadius.all(Radius.circular(50)),
//       ),
//       padding: const EdgeInsets.symmetric(vertical: 2),
//       child: FittedBox(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               'GOLD',
//               style: textStyle1.copyWith(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w700,
//                 fontSize: 17,
//               ),
//             ),
//             Text(
//               'PLAN BENEFIT',
//               style: textStyle1.copyWith(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w400,
//                 fontSize: 7,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Row buildStar() {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: List.generate(
//         5,
//         (index) => const Icon(
//           Icons.star,
//           color: primaryColor,
//           size: 12,
//         ),
//       ),
//     );
//   }

//   Text buildTabTitle(String text) {
//     return Text(
//       text,
//       style: textStyle1.copyWith(
//         fontWeight: FontWeight.w600,
//         fontSize: 12,
//       ),
//     );
//   }
// }
