import 'package:flutter/material.dart';

import '../../styles/text_styles.dart';

class OverViewTile extends StatelessWidget {
  const OverViewTile({
    super.key,
    required this.title,
    required this.subTitle,
    this.image,
  });
  final String title;
  final String subTitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 86,
            height: 58,
            child: Image.network(image??""),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: textStyle1.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                  ),
                ),
                Text(
                  subTitle,
                  style: textStyle1.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 7,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<Overview> overViewItem = [
  Overview(
    title: 'ലോ ഓഫ് അട്രാക്ഷൻ; 5 ഘട്ടങ്ങൾ',
    subTitle:
        ' പ്രതീക്ഷിക്കുന്ന ഫലം കാണാൻ നിയമത്തിലെ അഞ്ച് ഘട്ടങ്ങളും കൃത്യമായി, നിരന്തരമായി പരിശീലനം ചെയ്യേണ്ടിവരും. ഒരു പ്രസന്റേഷനോ, ക്ലയന്റ് മീറ്റിങ്ങിനോ പോകുമ്പോൾ ലോ ഓഫ് അട്രാക്ഷന്റെ വിവിധ തലങ്ങൾ ഹൃദ്യസ്ഥമാക്കിയ ഒരാൾക്ക് വിജയം സുനിശ്ചിതമാണ്.',
  ),
  // Overview(title: title, subTitle: subTitle),
  // Overview(title: title, subTitle: subTitle),
];

class Overview {
  final String title;
  final String subTitle;
  Overview({
    required this.title,
    required this.subTitle,
  });
}
