import 'dart:developer';
import '../styles/text_styles.dart';
import 'widget/course_grid_card.dart';
import 'package:flutter/material.dart';
import 'widget/course_search_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';
import 'package:number_one_academy_v2/Application/course_list/course_list_bloc.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/course_details.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_app_bar1.dart';

class CourseLearnerOne extends StatefulWidget {
  const CourseLearnerOne({super.key});

  @override
  State<CourseLearnerOne> createState() => _CourseLearnerOneState();
}

class _CourseLearnerOneState extends State<CourseLearnerOne> {
  final ScrollController _scrollControllerMoreCourseList = ScrollController();
  final TextEditingController searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _scrollControllerMoreCourseList.addListener(_loadMoreCourses);
  }

  Future<void> _loadMoreCourses() async {
    print(
        'SearchCourseListController ${_scrollControllerMoreCourseList.position.pixels == _scrollControllerMoreCourseList.position.minScrollExtent}');
    if (_scrollControllerMoreCourseList.position.extentAfter == 0) {
      context.read<CourseListBloc>().add(SearchCourseList(
          search: searchController.text.trim(),
          nextPage: true,
          previousPage: false));
    } else if (_scrollControllerMoreCourseList.position.pixels ==
        _scrollControllerMoreCourseList.position.minScrollExtent) {
      context.read<CourseListBloc>().add(SearchCourseList(
          search: searchController.text.trim(),
          nextPage: false,
          previousPage: true));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar1(
            elevation: 4,
            isShape: true,
            actions: [
              // buildNotificationIcon(),
            ],
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Our Courses',
                style: textStyle1.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                ),
              ),
              kh15,
              SizedBox(
                height: 39,
                child: Row(
                  children: [
                    CourseSearchBar(
                        controller: searchController,
                        onChanged: (p0) {
                          context.read<CourseListBloc>().add(SearchCourseList(
                              search: p0,
                              nextPage: false,
                              previousPage: false));
                        }),
                    // const SizedBox(width: 10),
                    // buildFilter(),
                  ],
                ),
              ),
              buildCourseGrid(),
            ],
          ),
        )));
  }

  buildCourseGrid() {
    return BlocBuilder<CourseListBloc, CourseListState>(
        builder: (context, state) {
      // if (state.isLoading) {
      //   return const Expanded(
      //     child: Center(
      //       child: CircularProgressIndicator(),
      //     ),
      //   );
      // }
      return Expanded(
        child: GridView.builder(
            itemCount: state.courseList?.list?.length,
            controller: _scrollControllerMoreCourseList,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.57,
              crossAxisSpacing: 10.0,
            ),
            physics: const ClampingScrollPhysics(),
            padding: const EdgeInsets.only(top: 15),
            itemBuilder: (context, index) {
              if (index < state.courseList!.list!.length - 1) {
                // if (state.isLoading) {
                //   return const Center(child: CircularProgressIndicator());
                // }
                return CourseGridCard(
                  coursePrice:
                      state.courseList?.list![index].coursePrice.toString() ??
                          "",
                  isFreeCourse: state.courseList!.list![index].isFreeCourse!,
                  regularPrice:
                      state.courseList?.list![index].regularPrice.toString() ??
                          "",
                  rating: state.courseList?.list?[index].totalRatingsCount
                          ?.toDouble() ??
                      0.0,
                  image: state.courseList?.list?[index].courseCoverImage ?? "",
                  priceStatus: (index % 3 == 0),
                  courseTitle: state.courseList?.list?[index].courseTitle ?? "",
                  instuctor: state.courseList?.list?[index].courseInstructors
                          ?.first.name ??
                      "",
                  language: state.courseList?.list?[index].courseLanguage ==
                          "ml"
                      ? " Malayalam"
                      : state.courseList?.list?[index].courseLanguage == "ta"
                          ? " Tamil"
                          : "",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CourseDetails(
                            freeOrsubscribedCourse: true,
                            courseid: state.courseList?.list?[index].id ?? "",
                          ),
                        ));
                  },
                );
              } else {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  // Reach end of list, load next page
                  // context.read<CourseListBloc>().add(
                  //     SearchCourseList(search: searchController.text.trim()));
                  // return const SizedBox.shrink();
                }
              }
              return null;
            }),
      );
    });
  }

  buildFilter() {
    return Ink(
      decoration: ShapeDecoration(
        shape: const CircleBorder(),
        color: Colors.white,
        shadows: [
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 4,
            spreadRadius: 2,
            color: secondaryColor.withOpacity(0.1),
          ),
        ],
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        icon: SvgPicture.asset('assets/svg/filter.svg'),
      ),
    );
  }
}
