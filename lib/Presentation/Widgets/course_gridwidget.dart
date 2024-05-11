import '../../Utils/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_one_academy_v2/Config/pages.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:number_one_academy_v2/Config/routers.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/text_custom.dart';
import 'package:number_one_academy_v2/Domain/CourseList/Model/course_list.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/shimmer_widget.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/custom_rating_bar.dart';
import 'package:number_one_academy_v2/Application/course_list/course_list_bloc.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/course_details.dart';

class CourseGridWidget extends StatefulWidget {
  final String gridTitle;
  final bool isFreeOrSubscribedCourses;
  // final List<Courses> courses;
  final List<ListElement>? courselist;
  final bool isFreeCource;
  final void Function() moreOnTap;
  final void Function() courseOnTap;
  final void Function() mainButtonOnTap;
  const CourseGridWidget({
    super.key,
    required this.gridTitle,
    required this.courselist,
    required this.isFreeCource,
    required this.moreOnTap,
    required this.courseOnTap,
    required this.mainButtonOnTap,
    required this.isFreeOrSubscribedCourses,
  });

  @override
  State<CourseGridWidget> createState() => _CourseGridWidgetState();
}

class _CourseGridWidgetState extends State<CourseGridWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 16, bottom: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextCustom(
                text: widget.gridTitle,
                textColor: secondaryColor,
                size: 20.sp,
                fontWeight: FontWeight.w700,
              ),
              InkWell(
                onTap: () {
                  print("ontap is working");
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff006066).withOpacity(.15),
                      borderRadius: const BorderRadius.all(Radius.circular(40)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: GestureDetector(
                        onTap: widget.moreOnTap,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10.0, right: 0),
                                child: TextCustom(
                                  text: "More",
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
        BlocBuilder<CourseListBloc, CourseListState>(builder: (context, state) {
          return SizedBox(
            height:
                //  widget.isBundle ?
                340.h,
            // : 320,
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: state.isLoading
                  ? const ShimmerWidget()
                  : ListView.builder(
                      itemCount: widget.courselist!.length <= 10
                          ? widget.courselist!.length
                          : 10,
                      dragStartBehavior: DragStartBehavior.start,
                      scrollDirection: Axis.horizontal,
                      padding:
                          const EdgeInsets.only(left: 20, top: 22, bottom: 22),
                      itemBuilder: (BuildContext context, int index) {
                        return (widget.isFreeCource
                                ? (state.courseList!.list![index].isFreeCourse!)
                                : (!state
                                    .courseList!.list![index].isFreeCourse!))
                            ? Padding(
                                padding: const EdgeInsets.only(
                                  right: 18,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              PageRouteBuilder(
                                                pageBuilder: (context,
                                                        animation1,
                                                        animation2) =>
                                                    CourseDetails(
                                                  freeOrsubscribedCourse: widget
                                                      .isFreeOrSubscribedCourses,
                                                  courseid: widget
                                                          .courselist?[index]
                                                          .id ??
                                                      "",
                                                ),
                                                transitionDuration:
                                                    const Duration(seconds: 0),
                                              ),
                                            );
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(11),
                                            clipBehavior: Clip.antiAlias,
                                            child: CachedNetworkImage(
                                              imageUrl: widget
                                                      .courselist?[index]
                                                      .courseCoverImage ??
                                                  "",
                                              width: 150.w,
                                              height: 100.h,
                                              fit: BoxFit.fill,
                                              placeholder: (context, url) =>
                                                  SizedBox(
                                                width: 150.w,
                                                height: 100.h,
                                                child: Image.asset(placeholder),
                                              ),
                                              errorWidget:
                                                  (context, url, error) {
                                                return Image.asset(
                                                  placeholder,
                                                  width: 150.w,
                                                  height: 100.h,
                                                  fit: BoxFit.cover,
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              PageRouteBuilder(
                                                pageBuilder: (context,
                                                        animation1,
                                                        animation2) =>
                                                    CourseDetails(
                                                  freeOrsubscribedCourse: widget
                                                      .isFreeOrSubscribedCourses,
                                                  courseid: widget
                                                          .courselist?[index]
                                                          .id ??
                                                      "",
                                                ),
                                                transitionDuration:
                                                    const Duration(seconds: 0),
                                              ),
                                            );
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10.0),
                                            child: SizedBox(
                                                width: 150.w,
                                                //height :30,
                                                child: RichText(
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  text: TextSpan(
                                                    text: widget
                                                            .courselist![index]
                                                            .courseTitle ??
                                                        "",
                                                    style: const TextStyle(
                                                      color: secondaryColor,
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    children: const [
                                                      TextSpan(
                                                          text:
                                                              '\n'), // Add a newline character to create a line break
                                                      TextSpan(
                                                          text:
                                                              ' '), // Add a space to ensure the second line takes up space
                                                    ],
                                                  ),
                                                )),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 7.0),
                                          child: SizedBox(
                                            width: 130.w,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "By",
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                      color: secondaryColor,
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 15 / 10),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                                kw5,
                                                SizedBox(
                                                  height: 20,
                                                  child: Text(
                                                    widget
                                                        .courselist![index]
                                                        .courseInstructors!
                                                        .first
                                                        .name
                                                        .toString(),
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                        color: lightGreen,
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 15 / 10),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 18.w,
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5.0),
                                                      child: SvgPicture.asset(
                                                          tickMark),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        // Padding(
                                        //   padding: const EdgeInsets.only(
                                        //       top: 12.0, bottom: 0),
                                        //   child: Container(
                                        //     decoration: BoxDecoration(
                                        //         color: primaryColor.withOpacity(.15),
                                        //         borderRadius: BorderRadius.circular(5)),
                                        //     child: Padding(
                                        //       padding: const EdgeInsets.symmetric(
                                        //           horizontal: 7.0, vertical: 2),
                                        //       child: Text(
                                        //           "2 ${AppLocalizations.of(context)!.courses}",
                                        //           overflow: TextOverflow.ellipsis,
                                        //           style: green10w700style),
                                        //     ),
                                        //   ),
                                        // ),
                                        CustomRatingBar(
                                            rating: widget.courselist![index]
                                                    .totalRatingsCount
                                                    ?.toDouble() ??
                                                0.0),
                                      ],
                                    ),
                                    SizedBox(
                                        width: 150.w,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Language',
                                                    style: TextStyle(
                                                      color: secondaryColor,
                                                      fontSize: 9.sp,
                                                      fontFamily:
                                                          'Euclid Circular A',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: 0,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: widget
                                                                .courselist?[
                                                                    index]
                                                                .courseLanguage ==
                                                            "ml"
                                                        ? " Malayalam"
                                                        : widget
                                                                    .courselist?[
                                                                        index]
                                                                    .courseLanguage ==
                                                                "ta"
                                                            ? " Tamil"
                                                            : "",
                                                    style: TextStyle(
                                                      color: const Color(
                                                          0xFF00C293),
                                                      fontSize: 9.sp,
                                                      fontFamily:
                                                          'Euclid Circular A',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // Padding(
                                            //   padding:
                                            //       EdgeInsets.only(left: 3.0, bottom: 3),
                                            //   child: Text(
                                            //     // widget.courses[index].price
                                            //     //             .offerPrice ==
                                            //     //         widget.courses[index].price
                                            //     //             .actualPrice
                                            //     //     ? ''
                                            //     //     :
                                            //     //     "₹ ${widget.courses[index].price.actualPrice.toInt()}"
                                            //     "₹ 1299",
                                            //     textAlign: TextAlign.center,
                                            //     overflow: TextOverflow.ellipsis,
                                            //     style: TextStyle(
                                            //         color: Colors.redAccent,
                                            //         fontSize: 11,
                                            //         decoration:
                                            //             TextDecoration.lineThrough,
                                            //         decorationThickness: 1.0,
                                            //         decorationColor: Colors.redAccent,
                                            //         fontWeight: FontWeight.w400),
                                            //     maxLines: 2,
                                            //   ),
                                            // ),
                                          ],
                                        )),
                                    kh5,
                                    // SizedBox(
                                    //     width: 150.w,
                                    //     child: const Row(
                                    //       mainAxisAlignment:
                                    //           MainAxisAlignment.start,
                                    //       crossAxisAlignment:
                                    //           CrossAxisAlignment.end,
                                    //       children: [
                                    //         Text.rich(
                                    //           TextSpan(
                                    //             children: [
                                    //               TextSpan(
                                    //                 text: '233',
                                    //                 style: TextStyle(
                                    //                   color: Color(0xFF006066),
                                    //                   fontSize: 10,
                                    //                   fontFamily:
                                    //                       'Euclid Circular A',
                                    //                   fontWeight: FontWeight.w600,
                                    //                   height: 0,
                                    //                 ),
                                    //               ),
                                    //               TextSpan(
                                    //                 text: ' Reviews',
                                    //                 style: TextStyle(
                                    //                   color: Color(0xFF00C293),
                                    //                   fontSize: 10,
                                    //                   fontFamily:
                                    //                       'Euclid Circular A',
                                    //                   fontWeight: FontWeight.w400,
                                    //                   height: 0,
                                    //                 ),
                                    //               ),
                                    //             ],
                                    //           ),
                                    //         ),
                                    //         // Padding(
                                    //         //   padding:
                                    //         //       EdgeInsets.only(left: 3.0, bottom: 3),
                                    //         //   child: Text(
                                    //         //     // widget.courses[index].price
                                    //         //     //             .offerPrice ==
                                    //         //     //         widget.courses[index].price
                                    //         //     //             .actualPrice
                                    //         //     //     ? ''
                                    //         //     //     :
                                    //         //     //     "₹ ${widget.courses[index].price.actualPrice.toInt()}"
                                    //         //     "₹ 1299",
                                    //         //     textAlign: TextAlign.center,
                                    //         //     overflow: TextOverflow.ellipsis,
                                    //         //     style: TextStyle(
                                    //         //         color: Colors.redAccent,
                                    //         //         fontSize: 11,
                                    //         //         decoration:
                                    //         //             TextDecoration.lineThrough,
                                    //         //         decorationThickness: 1.0,
                                    //         //         decorationColor: Colors.redAccent,
                                    //         //         fontWeight: FontWeight.w400),
                                    //         //     maxLines: 2,
                                    //         //   ),
                                    //         // ),
                                    //       ],
                                    //     )),
                                    subscribedOrNot != ""
                                        ? k
                                        : SizedBox(
                                            width: 150.w,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                widget.courselist![index]
                                                        .isFreeCourse!
                                                    ? Text(
                                                        "FREE",
                                                        style: TextStyle(
                                                          color: secondaryColor,
                                                          fontSize: 25.sp,
                                                          fontFamily:
                                                              'Euclid Circular A',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height: 0,
                                                        ),
                                                      )
                                                    : Text.rich(
                                                        TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: '₹',
                                                              style: TextStyle(
                                                                color: const Color(
                                                                    0xFF006066),
                                                                fontSize: 10.sp,
                                                                fontFamily:
                                                                    'Euclid Circular A',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                height: 0,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: widget
                                                                  .courselist?[
                                                                      index]
                                                                  .coursePrice
                                                                  .toString(),
                                                              style: TextStyle(
                                                                color:
                                                                    secondaryColor,
                                                                fontSize: 25.sp,
                                                                fontFamily:
                                                                    'Euclid Circular A',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 0,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: widget
                                                                          .courselist?[
                                                                              index]
                                                                          .coursePrice ==
                                                                      widget
                                                                          .courselist?[
                                                                              index]
                                                                          .regularPrice
                                                                  ? ""
                                                                  : widget
                                                                      .courselist?[
                                                                          index]
                                                                      .regularPrice
                                                                      .toString(),
                                                              style: TextStyle(
                                                                decorationColor:
                                                                    const Color(
                                                                        0xFFF95858),
                                                                decoration:
                                                                    TextDecoration
                                                                        .lineThrough,
                                                                color: const Color(
                                                                    0xFFF95858),
                                                                fontSize: 12.sp,
                                                                fontFamily:
                                                                    'Euclid Circular A',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                // Padding(
                                                //   padding:
                                                //       EdgeInsets.only(left: 3.0, bottom: 3),
                                                //   child: Text(
                                                //     // widget.courses[index].price
                                                //     //             .offerPrice ==
                                                //     //         widget.courses[index].price
                                                //     //             .actualPrice
                                                //     //     ? ''
                                                //     //     :
                                                //     //     "₹ ${widget.courses[index].price.actualPrice.toInt()}"
                                                //     "₹ 1299",
                                                //     textAlign: TextAlign.center,
                                                //     overflow: TextOverflow.ellipsis,
                                                //     style: TextStyle(
                                                //         color: Colors.redAccent,
                                                //         fontSize: 11,
                                                //         decoration:
                                                //             TextDecoration.lineThrough,
                                                //         decorationThickness: 1.0,
                                                //         decorationColor: Colors.redAccent,
                                                //         fontWeight: FontWeight.w400),
                                                //     maxLines: 2,
                                                //   ),
                                                // ),
                                              ],
                                            )),

                                    InkWell(
                                      onTap: () {
                                        ////// previos bloc call
                                        Navigator.push(
                                          context,
                                          PageRouteBuilder(
                                            pageBuilder: (context, animation1,
                                                    animation2) =>
                                                CourseDetails(
                                              freeOrsubscribedCourse: widget
                                                  .isFreeOrSubscribedCourses,
                                              courseid: widget
                                                      .courselist?[index].id ??
                                                  "",
                                            ),
                                            transitionDuration:
                                                const Duration(seconds: 0),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Container(
                                          width: 153.w,
                                          height: 31.w,
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFF006066),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Explore Course',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Euclid Circular A',
                                                fontWeight: FontWeight.w700,
                                                height: 0.12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : const SizedBox();
                      }),
            ),
          );
        })
      ],
    );
  }
}
