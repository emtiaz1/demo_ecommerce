import 'package:demo_ecommerce/common/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../utils/constans/colors.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        title: 'Mega Shop',
        secondIcon: IonIcons.cart,
        back: true,
      ),
    );
  }
}
