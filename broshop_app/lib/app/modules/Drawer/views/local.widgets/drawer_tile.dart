import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../infrastructure/index.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.back();
        onTap();
      },
      dense: true,
      leading: Icon(icon),
      horizontalTitleGap: 0,
      title: Align(
        alignment: Alignment.topLeft,
        child: Text(text, style: AppTextStyles.medium.copyWith(fontSize: 18)),
      ),
    );
  }
}
