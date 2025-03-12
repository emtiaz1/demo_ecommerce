import 'package:demo_ecommerce/utils/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
class DAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Mega Shop',
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
          child: Icon(Iconsax.notification_bing_outline),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
          child: Icon(IonIcons.cart),
        ),
      ],
    );
  }
}