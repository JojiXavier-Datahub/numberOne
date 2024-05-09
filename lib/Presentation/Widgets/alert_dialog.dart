import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:number_one_academy_v2/Utils/colors.dart';

import '../../Utils/constants.dart';

class NumberOneAlertDialog extends StatelessWidget {
  final String? heading;
  final String? subHeading;
  final String? confirmText;
  final String? cancelText;
  final Function()? confirmFunction;
  final Function()? cancelFunction;

  const NumberOneAlertDialog(
      {super.key,
      this.heading,
      this.subHeading,
      this.confirmText,
      this.cancelText,
      this.confirmFunction,
      this.cancelFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: AlertDialog(
        shadowColor: secondaryColor,
        elevation: 6,
        backgroundColor: Colors.white,
        buttonPadding: EdgeInsets.zero,
        actions: [
          Padding(
            padding: EdgeInsets.zero,
            child: Stack(
              children: [
                Positioned(
                    right: 0,
                    top: 0,
                    child: Padding(
                      padding: EdgeInsets.zero,
                      child: SvgPicture.asset(
                        alertIcon,
                        width: 200,
                        height: 200,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 14.0, bottom: 17, right: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          minHeight: 50,
                          // minWidth: 300
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              heading ?? '',
                              maxLines: 3,
                              style: const TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 20,
                                color: secondaryColor,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 15),
                              child: Text(
                                subHeading ?? '',
                                maxLines: 8,
                                style: const TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff777777)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: GestureDetector(
                              onTap: cancelFunction ??
                                  () => Navigator.pop(context),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: secondaryColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 8),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(cancelText ?? "Cancel",
                                            style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap:
                                confirmFunction ?? () => Navigator.pop(context),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: secondaryColor,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 8),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(confirmText ?? "Done",
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
