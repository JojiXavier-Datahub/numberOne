import 'dart:ui' as ui show PlaceholderAlignment;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:number_one_academy_v2/Application/Insructor/instructor_bloc.dart';
import 'package:number_one_academy_v2/Application/course_list/course_list_bloc.dart';
import 'package:number_one_academy_v2/Presentation/Screens/couse_learner/widget/course_grid_card.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/custom_rating_bar.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';
import '../Details/widgets/custom_app_bar1.dart';
import '../styles/text_styles.dart';
import 'widget/CustomChipItem.dart';

class InstructorProfile extends StatefulWidget {
  final int index;
  final String instructorId;
  final int courseRating;
  final String courseCount;
  final String reviewCount;
  final String learners;
  const InstructorProfile(
      {super.key,
      required this.index,
      required this.courseRating,
      required this.courseCount,
      required this.reviewCount,
      required this.learners,
      required this.instructorId});

  @override
  State<InstructorProfile> createState() => _InstructorProfileState();
}

class _InstructorProfileState extends State<InstructorProfile> {
  final ScrollController _scrollControllerMoreCourseList = ScrollController();

  @override
  void initState() {
    super.initState();

    context.read<CourseListBloc>().add(CourseListEvent.getCourseList(
        search: "", instructorId: widget.instructorId));
    _scrollControllerMoreCourseList.addListener(_loadMoreCourses);
  }

  Future<void> _loadMoreCourses() async {
    var bloc = BlocProvider.of<CourseListBloc>(context);

    if (_scrollControllerMoreCourseList.position.maxScrollExtent ==
            _scrollControllerMoreCourseList.position.pixels &&
        !bloc.state.loadMore) {
      context.read<CourseListBloc>().add(CourseListEvent.getCourseList(
          search: "", instructorId: widget.instructorId));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar1(
          elevation: 4,
          isShape: true,
          actions: [
            // NotificationIcon()
            //   Container(
            //   decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //     color: Colors.white,
            //     boxShadow: [
            //       BoxShadow(
            //         color:
            //             const Color.fromARGB(255, 186, 181, 181).withOpacity(0.5),
            //         spreadRadius: 2,
            //         blurRadius: 3,
            //         offset: const Offset(0, 0), // changes position of shadow
            //       ),
            //     ],
            //   ),
            //   child: Padding(
            //     padding: const EdgeInsets.all(5.0),
            //     child: Center(
            //       child: Container(
            //           width: 35,
            //           height: 35,
            //           decoration: const BoxDecoration(
            //             shape: BoxShape.circle,
            //             gradient: LinearGradient(
            //               begin: Alignment.topLeft,
            //               end: Alignment.bottomRight,
            //               colors: [Color(0xFFFFF3B3), primaryColor],
            //             ),
            //           ),
            //           child: Center(
            //               child: TextCustom(
            //                       fontWeight: FontWeight.w500,
            //                       textColor: const Color(0xFFD8A023),
            //                       text: kUserName[0].toUpperCase(),
            //                       size: 16.sp,
            //                     ))),
            //     ),
            //   ),
            // ),
            kw20
          ],
        ),
      ),
      body: BlocBuilder<InstructorBloc, InstructorState>(
          builder: (context, state) {
        return ListView(
          padding: const EdgeInsets.all(20.0),
          shrinkWrap: true,
          children: [
            Text(
              'Instructor Profile',
              style: textStyle1.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 20.sp,
              ),
            ),
            kh10,
            SizedBox(
              height: 84.h,
              child: Row(
                children: [
                  Container(
                    height: 84.w,
                    width: 84.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(state
                                  .instructorList?[widget.index].profileImage ??
                              ""),
                          fit: BoxFit.cover),
                      color: lightGreen.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                  kw10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: state.instructorList?[widget.index].name ?? "",
                          style: textStyle1.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                            color: lightGreen,
                          ),
                          children: [
                            const WidgetSpan(child: SizedBox(width: 5)),
                            WidgetSpan(
                              alignment: ui.PlaceholderAlignment.middle,
                              child: SvgPicture.asset(tickMark, height: 18),
                            ),
                          ],
                        ),
                      ),

                      Text(
                        state.instructorList?[widget.index].title == ""
                            ? "Motivational Speaker & Strategist"
                            : "",
                        style: textStyle1.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                          color: Colors.black,
                        ),
                      ),
                      // RichText(
                      //   text: TextSpan(
                      //     children: [
                      //       const WidgetSpan(
                      //         child: Icon(
                      //           Icons.location_on_sharp,
                      //           color: Color(0xffAFAFAF),
                      //           size: 13,
                      //         ),
                      //       ),
                      //       TextSpan(
                      //         text: state.instructorList?[widget.index].location??"",
                      //         style: textStyle1.copyWith(
                      //           fontWeight: FontWeight.w600,
                      //           fontSize: 10.sp,
                      //           color: const Color(0xff006066),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomRatingBar(
                            rating: 3.3,

                            // rating: widget.courseRating.toDouble() ?? 0.0,
                          ),
                          // kw5,
                          // Text(
                          //   'Rating ${widget.courseRating ?? 0}/5',
                          //   style: textStyle1.copyWith(
                          //     fontWeight: FontWeight.w700,
                          //     fontSize: 10.sp,
                          //   ),
                          // )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            kh20,

            Wrap(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 15,
              runSpacing: 15,
              children: [
                // k,
                //  buildFollowButton(),
                CustomChipItem(text1: widget.learners, text2: 'Learners'),
                // CustomChipItem(text1: widget.reviewCount, text2: 'Reviews'),
                CustomChipItem(text1: widget.courseCount, text2: 'Courses'),

                const CustomChipItem(
                  text1: 'Language',
                  text2: 'Malayalam, Tamil , kannada',
                  secondHighlight: true,
                ),
              ],
            ),
            kh10,
            Text(
              'About',
              style: textStyle1.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
              ),
            ),
            kh10,
            Text(
              state.instructorList?[widget.index].bio ?? "",
              style: textStyle1.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 11.sp,
              ),
            ),
            kh10,
            buildCourseBy(),
            kh10,
            buildCourseGrid(),
            // GridView.count(
            //   shrinkWrap: true,
            //   crossAxisCount: 2,
            //   childAspectRatio: 0.54,
            //   crossAxisSpacing: 10.0,
            //   physics: const ClampingScrollPhysics(),
            //   padding: const EdgeInsets.only(top: 15),
            //   children: List.generate(
            //     6,
            //     (index) => InstructorCourseTile(
            //       courseName:
            //           '11 Strategies of Best Salesman - Excellence in Sales',
            //       reviewCount: '233',
            //       offerPrice: 799,
            //       originalPrice: 1799,
            //       onPressed: () {},
            //     ),
            //   ),
            // ),
          ],
        );
      }),
    );
  }

  buildCourseGrid() {
    return BlocBuilder<CourseListBloc, CourseListState>(
        builder: (context, state) {
      return GridView.count(
        controller: _scrollControllerMoreCourseList,
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 0.57,
        crossAxisSpacing: 10.0,
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.only(top: 15),
        children: List.generate(
          state.instructorCourseList?.list?.length ?? 0,
          (index) => CourseGridCard(
            coursePrice: state.instructorCourseList?.list![index].coursePrice
                    .toString() ??
                "",
            isFreeCourse:
                state.instructorCourseList!.list![index].isFreeCourse!,
            regularPrice: state.instructorCourseList?.list![index].regularPrice
                    .toString() ??
                "",
            rating: state.instructorCourseList?.list?[index].totalRatingsCount
                    ?.toDouble() ??
                0.0,
            image:
                state.instructorCourseList?.list?[index].courseCoverImage ?? "",
            priceStatus: (index % 3 == 0),
            courseTitle:
                state.instructorCourseList?.list?[index].courseTitle ?? "",
            instuctor: state.instructorCourseList?.list?[index]
                    .courseInstructors?.first.name ??
                "",
            language: 'Malayalam',
            onPressed: () {},
          ),
        ),
      );
    });
  }

  buildCourseBy() {
    return BlocBuilder<InstructorBloc, InstructorState>(
        builder: (context, state) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 180.w,
            child: Text(
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              'Courses by ${state.instructorList?[widget.index].name ?? ""}',
              style: textStyle1.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 13.sp,
              ),
            ),
          ),
          // Container(
          //   height: 21.h,
          //   width: 104.w,
          //   padding: const EdgeInsets.only(left: 5),
          //   decoration: BoxDecoration(
          //     color: secondaryColor,
          //     borderRadius: BorderRadius.circular(5.0),
          //   ),
          //   child: DropdownButtonHideUnderline(
          //     child: DropdownButton(
          //       dropdownColor: secondaryColor,
          //       padding: EdgeInsets.zero,
          //       value: 'All Languages',
          //       icon: const Icon(
          //         Icons.keyboard_arrow_down,
          //         color: primary1,
          //       ),
          //       items:
          //           ['All Languages', 'Hindi', 'Malayalam'].map((String items) {
          //         return DropdownMenuItem(
          //           value: items,
          //           child: FittedBox(
          //             child: Text(
          //               items,
          //               textAlign: TextAlign.center,
          //               style: textStyle1.copyWith(
          //                 fontWeight: FontWeight.w400,
          //                 fontSize: 10.sp,
          //                 color: Colors.white,
          //               ),
          //             ),
          //           ),
          //         );
          //       }).toList(),
          //       onChanged: (value) {},
          //     ),
          //   ),
          // )
        ],
      );
    });
  }

  buildFollowButton() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextButton.icon(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.white,
          minimumSize: const Size(85, 21),
          side: const BorderSide(color: secondaryColor),
        ),
        onPressed: () {},
        icon: const Icon(Icons.add, color: primary1, size: 12),
        label: Text(
          'Follow',
          textAlign: TextAlign.center,
          style: textStyle1.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
