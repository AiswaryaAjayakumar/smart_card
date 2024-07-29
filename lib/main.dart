import 'package:flutter/material.dart';
import 'package:smart_card/view/register_screen/register_screen.dart';

void main() {
  runApp(SmartCard());
}

class SmartCard extends StatelessWidget {
  const SmartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
    );
  }
}
