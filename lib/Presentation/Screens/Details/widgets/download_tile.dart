import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../styles/text_styles.dart';
import 'chapter_tile.dart';

class DownloadTile extends StatelessWidget {
  const DownloadTile({
    super.key,
    required this.fileType,
    required this.fileName,
    this.onTap,
  });
  final String fileName;
  final FileType fileType;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SvgPicture.asset(
            checkFileType(fileType),
            height: 15,
            width: 15,
          ),
          const SizedBox(width: 10),
          Text(
            fileName,
            style: textStyle1.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
          const Spacer(),
          IconButtonContainer(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: onTap,
              child: SvgPicture.asset('assets/svg/download.svg'),
            ),
          ),
        ],
      ),
    );
  }

  String checkFileType(FileType fileType) {
    switch (fileType) {
      case (FileType.pdf):
        return 'assets/svg/pdf.svg';
      case (FileType.xls):
        return 'assets/svg/xls.svg';
      default:
        return '';
    }
  }
}

enum FileType { pdf, xls, other }

List<Downloads> downloads = [
  Downloads(fileType: FileType.xls, file: 'Worksheet.xls'),
  Downloads(fileType: FileType.pdf, file: 'Master-Plan.pdf'),
];

class Downloads {
  final FileType fileType;
  final String file;

  Downloads({required this.fileType, required this.file});
}
