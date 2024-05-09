import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_one_academy_v2/Application/course_list/course_list_bloc.dart';
import 'package:number_one_academy_v2/Presentation/Screens/styles/text_styles.dart';

class CustomAppBar1 extends StatelessWidget {
  const CustomAppBar1({
    super.key,
    this.isfromvideoPlayer=false,
    this.elevation = 0.0,
    this.isShape = false,
    this.actions = const [],
  });
  final double elevation;
  final bool isfromvideoPlayer;
  final bool isShape;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      shadowColor: const Color.fromARGB(255, 254, 254, 254),
      elevation: elevation,
      shape: isShape
          ? const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            )
          : null,
      leading: IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          if(isfromvideoPlayer){
            log("on will pop scope is working");
          context
              .read<CourseListBloc>()
              .add(const CourseListEvent.changeChapterIndex(index: 0));
          context
              .read<CourseListBloc>()
              .add(const CourseListEvent.videoPause());

          }
          
          
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Color(0xFFD8A023),
        ),
        iconSize: 18,
      ),
      title: InkWell(
        onTap: () {
         if(isfromvideoPlayer){
            log("on will pop scope is working");
          context
              .read<CourseListBloc>()
              .add(const CourseListEvent.changeChapterIndex(index: 0));
          context
              .read<CourseListBloc>()
              .add(const CourseListEvent.videoPause());

          }
          
          
          Navigator.pop(context);
        },
        child: Text(
          'Back',
          style: textStyle1.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
      titleSpacing: -10.0,
      actions: [
        ...actions,
        // IconButton(
        //   onPressed: () {},
        //   padding: EdgeInsets.zero,
        //   icon: SvgPicture.asset('assets/svg/greyQR.svg'),
        // ),
        // const AppBar1ProfileIcon(),
      ],
    );
  }
}
