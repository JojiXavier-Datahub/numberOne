import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/media_icon.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

import '../../styles/text_styles.dart';
import 'custom_timer_tile.dart';
import 'player_container.dart';

class MediaPlayer extends StatelessWidget {
  const MediaPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return PlayerContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'People buy people first',
                  style: textStyle1.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Chapter 4',
                  style: textStyle1.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffAEAEAE),
                  ),
                ),
              ],
            ),
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(trackHeight: 4),
            child: Slider(
              value: 0.5,
              thumbColor: primary1,
              activeColor: secondaryColor,
              onChanged: (value) {},
            ),
          ),
          const CustomTimerTile(
            startTime: '01:58',
            endTime: '03:00',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MediaIcon(
                assetName: 'skip_previous.svg',
                onPressed: () {},
              ),
              MediaIcon(
                assetName: 'fast_rewind.svg',
                onPressed: () {},
              ),
              MediaIcon(
                assetName: 'pause.svg',
                onPressed: () {},
              ),
              MediaIcon(
                assetName: 'fast_forward.svg',
                onPressed: () {},
              ),
              MediaIcon(
                assetName: 'skip_next.svg',
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
