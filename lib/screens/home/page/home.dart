import 'package:demo_ecommerce/common/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../utils/constans/colors.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _currentindex = 0;
  final List<Widget> _screens = [
    Container(
      color: Colors.green,
      height: double.infinity,
    ),
    Container(
      color: Colors.blueAccent,
      height: double.infinity,
    ),
    Container(
      color: Colors.redAccent,
      height: double.infinity,
    ),
    Container(
      color: Colors.yellow,
      height: double.infinity,
    ),
  ];
  void onTapMethod(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DAppBar(
        title: 'Mega Shop',
        secondIcon: IonIcons.cart,
        back: true,
      ),
      body: _screens[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapMethod,
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Iconsax.home_1_outline), label: 'HOME'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.heart_circle_outline), label: 'WISHLIST'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.shopping_bag_outline), label: 'ORDER'),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_2user_outline), label: 'USER'),
        ],
      ),
    );
  }
}
