import 'package:demo_ecommerce/utils/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class DAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DAppBar({
    super.key,
    required this.title,
    this.firstIcon = Iconsax.notification_bing_outline,
    required this.secondIcon,
    this.back = false,
  });
  final String title;
  final IconData firstIcon;
  final IconData secondIcon;
  final bool back;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: back ? Icon(Iconsax.arrow_left_2_outline) : null,
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'DmSans',
          fontWeight: FontWeight.w700,
          color: DColors.oceanBlue,
        ),
      ),
      centerTitle: true,
      actions: [
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
          child: Icon(firstIcon),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
          child: Icon(secondIcon),
        ),
      ],
    );
  }
}
