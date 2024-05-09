import 'package:flutter/material.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/app_bar_icon.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/custom_badge.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AppBarIcon(
          offset: const Offset(15.0, 0),
          icon: 'assets/svg/notification.svg',
          onPressed: () {},
        ),
        const Positioned(
          top: 10,
          right: 10,
          child: CustomBadge(count: 1),
        ),
      ],
    );
  }
}
