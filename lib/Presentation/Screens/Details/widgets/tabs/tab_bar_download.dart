import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/custom_divider.dart';
import 'package:number_one_academy_v2/Presentation/Screens/Details/widgets/download_tile.dart';

class TabBarDownload extends StatelessWidget {
  const TabBarDownload({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return DownloadTile(
          fileName: downloads[index].file,
          fileType: downloads[index].fileType,
          onTap: () {},
        );
      },
      separatorBuilder: (context, index) => const CustomDivider(),
      itemCount: downloads.length,
    );
  }
}
