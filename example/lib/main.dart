import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Turn Design System',
      theme: ThemeData(
          //primarySwatch: greyMaterialColor,
          ),
      home: HomePage(),
    );
  }
}
