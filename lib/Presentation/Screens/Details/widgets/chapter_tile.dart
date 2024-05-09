import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';
class ChapterTile extends StatelessWidget {
  const ChapterTile({
    super.key,
    required this.title,
    this.isLocked = false,
    this.onPressed,

    this.isPlayed = false, required this.isPlaying, required this.index,
  });
  final String title;
  final bool isPlayed;
  final int index;
  final bool isPlaying;
  final bool isLocked;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      alignment: Alignment.topLeft,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: boderGreyColor1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          // Column(
          //   children: [
          //     Text(isLocked.toString()),
          //     Text(isPlayed.toString()),
          //   ],
          // ),
          SizedBox(
            width: 250.w,
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: 'Euclid Circular A',
                color: secondaryColor,
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
          Row(
            children: [

              Text(
                isLocked ?
                //  && !isPlayed
                //     ?
                      index==0? '': 'Locked'
                    : ""
                    // (isPlayed)
                    //     ? 'Replay'
                    //     : 'Preview'
                        ,
                style: TextStyle(
                  fontFamily: 'Euclid Circular A',
                  color: isLocked ? boderGreyColor1 : secondaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 5),
              IconButtonContainer(
                padding: EdgeInsets.all( 4.0),
                child: isLocked && !isPlayed
                    ? SvgPicture.asset('assets/svg/lock.svg')
                    : InkWell(
                        onTap: isLocked ? null : onPressed,
                        child: Icon(
                          // isPlaying
                          //     ?
                              //  Icons.check_circle
                              // :
                               Icons.play_arrow_sharp,
                          color: isPlaying ? primaryColor : secondaryColor,
                          size: 20 ,
                        ),
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IconButtonContainer extends StatelessWidget {
  const IconButtonContainer({
    super.key,
    this.padding,
    required this.child,
  });
  final EdgeInsetsGeometry? padding;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 2,
                spreadRadius: 0,
                color: Color(0xffC9C9C9))
          ]),
      child: child,
    );
  }
}
