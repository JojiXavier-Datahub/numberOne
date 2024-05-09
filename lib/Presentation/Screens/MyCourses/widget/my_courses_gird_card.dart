import 'dart:ui' as ui show PlaceholderAlignment; //ParagraphBuilder
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_elevated_button.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/custom_rating_bar.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
import 'package:number_one_academy_v2/Utils/constants.dart';

class MyCoursesGridCard extends StatelessWidget {
  const MyCoursesGridCard({
    super.key,
    required this.image,
    required this.courseTitle,
    required this.instuctor,
    required this.language,
    this.onPressed,
    required this.priceStatus,
    required this.rating,
    required this.coursePrice,
    required this.regularPrice,
    required this.isFreeCourse,
  });

  final String image;
  final String coursePrice;
  final String regularPrice;
  final bool isFreeCourse;

  final String courseTitle;
  final String instuctor;
  final String language;
  final double rating;
  final void Function()? onPressed;
  final bool priceStatus;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("sdfga")
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(11),
            //   clipBehavior: Clip.antiAlias,
            //   child: CachedNetworkImage(
            //     imageUrl: image,
            //     width: 108.w,
            //     height: 72.h,
            //     fit: BoxFit.fill,
            //     placeholder: (context, url) => ClipRRect(
            //       borderRadius: BorderRadius.circular(11),
            //       clipBehavior: Clip.antiAlias,
            //       child: Image.asset(
            //         placeholder,
            //         width: 150.w,
            //         height: 100.h,
            //       ),
            //     ),
            //     errorWidget: (context, url, error) {
            //       return Image.asset(
            //         placeholder,
            //         width: 150.w,
            //         height: 100.h,
            //         fit: BoxFit.cover,
            //       );
            //     },
            //   ),
            // ),
            ,
            kw10,
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     SizedBox(
            //         width: 180.w,
            //         child: RichText(
            //           maxLines: 2,
            //           overflow: TextOverflow.ellipsis,
            //           text: TextSpan(
            //             text: courseTitle,
            //             style: TextStyle(
            //               color: secondaryColor,
            //               fontSize: 11.sp,
            //               fontWeight: FontWeight.w700,
            //             ),
            //           ),
            //         )),
            //         kh5,

            //     RichText(
            //       text: TextSpan(
            //         children: [
            //           TextSpan(
            //             text: 'By',
            //             style: TextStyle(
            //                 color: secondaryColor,
            //                 fontSize: 10.sp,
            //                 fontWeight: FontWeight.w400,
            //                 height: 15 / 10),
            //           ),
            //           const WidgetSpan(child: kw5),
            //           TextSpan(
            //             text: instuctor,
            //             style: TextStyle(
            //                 color: lightGreen,
            //                 fontSize: 10.sp,
            //                 fontWeight: FontWeight.w400,
            //                 height: 15 / 10),
            //           ),
            //           const WidgetSpan(child: SizedBox(width: 2)),
            //           WidgetSpan(
            //             alignment: ui.PlaceholderAlignment.middle,
            //             child: SvgPicture.asset(
            //               tickMark,
            //               fit: BoxFit.fill,
            //               width: 14.w,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     kh5,
            //     CustomRatingBar(rating: rating),
            //     // const Wrap(
            //     //   clipBehavior: Clip.antiAliasWithSaveLayer,
            //     //   crossAxisAlignment: WrapCrossAlignment.center,
            //     //   spacing: 15,
            //     //   runSpacing: 15,
            //     //   children: [
            //     //     CustomChipItem(text1: "1445", text2: 'Learners'),
            //     //     CustomChipItem(text1: '233', text2: 'Reviews'),
            //     //   ],
            //     // ),
            //   ],
            // )
          ],
        ),
        kh10,
        // SizedBox(
        //     width: 150.w,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       crossAxisAlignment: CrossAxisAlignment.end,
        //       children: [
        //         Text.rich(
        //           TextSpan(
        //             children: [
        //               TextSpan(
        //                 text: 'Language',
        //                 style: TextStyle(
        //                   color: secondaryColor,
        //                   fontSize: 9.sp,
        //                   fontFamily: 'Euclid Circular A',
        //                   fontWeight: FontWeight.w600,
        //                   height: 0,
        //                 ),
        //               ),
        //               TextSpan(
        //                 text: " $language",
        //                 style: TextStyle(
        //                   color: const Color(0xFF00C293),
        //                   fontSize: 9.sp,
        //                   fontFamily: 'Euclid Circular A',
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
        kh5,
        // subscribedOrNot != ""
        //     ? k
        //     : SizedBox(
        //         width: 150.w,
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.start,
        //           crossAxisAlignment: CrossAxisAlignment.end,
        //           children: [
        //             isFreeCourse
        //                 ? Text(
        //                     "FREE",
        //                     style: TextStyle(
        //                       color: secondaryColor,
        //                       fontSize: 25.sp,
        //                       fontFamily: 'Euclid Circular A',
        //                       fontWeight: FontWeight.w700,
        //                       height: 0,
        //                     ),
        //                   )
        //                 : Text.rich(
        //                     TextSpan(
        //                       children: [
        //                         TextSpan(
        //                           text: '₹',
        //                           style: TextStyle(
        //                             color: const Color(0xFF006066),
        //                             fontSize: 10.sp,
        //                             fontFamily: 'Euclid Circular A',
        //                             fontWeight: FontWeight.w600,
        //                             height: 0,
        //                           ),
        //                         ),
        //                         TextSpan(
        //                           text: coursePrice,
        //                           style: TextStyle(
        //                             color: secondaryColor,
        //                             fontSize: 25.sp,
        //                             fontFamily: 'Euclid Circular A',
        //                             fontWeight: FontWeight.w700,
        //                             height: 0,
        //                           ),
        //                         ),
        //                         TextSpan(
        //                           text: coursePrice == regularPrice
        //                               ? ""
        //                               : regularPrice,
        //                           style: TextStyle(
        //                             decorationColor: const Color(0xFFF95858),
        //                             decoration: TextDecoration.lineThrough,
        //                             color: const Color(0xFFF95858),
        //                             fontSize: 12.sp,
        //                             fontFamily: 'Euclid Circular A',
        //                             fontWeight: FontWeight.w700,
        //                             height: 0,
        //                           ),
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //             // Padding(
        //             //   padding:
        //             //       EdgeInsets.only(left: 3.0, bottom: 3),
        //             //   child: Text(
        //             //     // widget.courses[index].price
        //             //     //             .offerPrice ==
        //             //     //         widget.courses[index].price
        //             //     //             .actualPrice
        //             //     //     ? ''
        //             //     //     :
        //             //     //     "₹ ${widget.courses[index].price.actualPrice.toInt()}"
        //             //     "₹ 1299",
        //             //     textAlign: TextAlign.center,
        //             //     overflow: TextOverflow.ellipsis,
        //             //     style: TextStyle(
        //             //         color: Colors.redAccent,
        //             //         fontSize: 11,
        //             //         decoration:
        //             //             TextDecoration.lineThrough,
        //             //         decorationThickness: 1.0,
        //             //         decorationColor: Colors.redAccent,
        //             //         fontWeight: FontWeight.w400),
        //             //     maxLines: 2,
        //             //   ),
        //             // ),
        //           ],
        //         )),
        // CustomElevatedButton(
        //   btnText: 'View Course',
        //   onPressed: onPressed,
        //   minimumSize: Size(153.w, 31.w),
        // ),
      ],
    );
  }
}
