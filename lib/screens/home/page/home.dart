import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../utils/constans/colors.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mega Shop',
          style: TextStyle(
            fontFamily: 'DmSans',
            fontWeight: FontWeight.w700,
            color: FColors.oceanBlue,
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
      ),
    );
  }
}
