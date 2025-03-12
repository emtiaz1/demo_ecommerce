import 'package:demo_ecommerce/screens/home/page/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const demoecom());
}
// tinyurl.com/cse414-figma

class demoecom extends StatelessWidget {
  const demoecom({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo E-Commerce',
      home: home(),
    );
  }
}
