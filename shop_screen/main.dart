import 'package:flutter/material.dart';
import 'home_page.dart'; // استيراد الصفحة الرئيسية

void main() {
  runApp(FurnitureApp());
}

class FurnitureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}



