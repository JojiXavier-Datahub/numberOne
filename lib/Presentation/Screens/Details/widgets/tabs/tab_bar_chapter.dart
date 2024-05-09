import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_one_academy_v2/Application/course_list/course_list_bloc.dart';

import 'package:number_one_academy_v2/Domain/CourseGet/Model/course_get.dart';
import 'package:provider/provider.dart';
import '../chapter_tile.dart';

class TabBarChapter extends StatelessWidget {
  final List<Chapter>? chapters;
  final bool isFreeCourse;
  final int chpaterIndex;
  const TabBarChapter({
    required this.chapters,
    super.key,
    required this.isFreeCourse,
    required this.chpaterIndex,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chapters?.length,
      itemBuilder: (context, index) {
        return BlocBuilder<CourseListBloc, CourseListState>(
            builder: (context, state) {
          return ChapterTile(
              index: index,
              isPlaying: chpaterIndex == index,
              isLocked: !isFreeCourse,
              onPressed: () async{
                if (isFreeCourse)  {
                  log("onPressed two");

                  context
                      .read<CourseListBloc>()
                      .add(CourseListEvent.changeChapterIndex(index: index));
                  // context.read<CourseListBloc>().add(
                  //     CourseListEvent.initializeVIdeoPlayer(
                  //         videoid: state.videoList[state.chapterIndex!]));
                }

                // context.read<CourseListBloc>().add(CourseListEvent.getVideo(
                //     id: chapters?[index].publitioVideoId ?? ""));
              },
              title: chapters?[index].chapterTitle ?? "",
              isPlayed: chapters?[index].isPreview ?? false);
        });
      },
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
