import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Domain/CourseGet/Model/course_get.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/over_view_tile.dart';

import '../../../styles/text_styles.dart';
import '../custom_divider.dart';

class TabBarOverView extends StatelessWidget {
  final List<Highlight>? highlight;
  const TabBarOverView({
    super.key,
    this.highlight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Text(
          'ശരിയായ കണ്ടൻറ്റ് ആണ് ബിസിനസ്സുമായി ഓഡിയൻസിനെ കണക്ട് ചെയ്യുന്നത്. ആകർഷകമായ രീതിയിൽ ചാറ്റ് ജിപിടി ഉപയോഗിച്ച് എങ്ങിനെ കണ്ടൻറ്റ് തയ്യാറാക്കാം എന്ന് നമുക്ക് ഈ കോഴ്സിലൂടെ അറിയാം.',
          style: textStyle1.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 10,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Course Highlights',
          style: textStyle1.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return OverViewTile(
                title: highlight?[index].title ?? "",
                subTitle: highlight?[index].description ?? "",
                image: highlight?[index].imageUrl ?? "",
              );
            },
            separatorBuilder: (context, index) {
              return const CustomDivider();
            },
            itemCount: highlight?.length??0),
      ],
    );
  }
}
