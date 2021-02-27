import 'package:flutter/material.dart';
// import 'package:flutter_kawalcorona/gas.dart';
import 'package:flutter_kawalcorona/launcher/launcher_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kawal Covid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LauncherPage(),
    );
  }
}