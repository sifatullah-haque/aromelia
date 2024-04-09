import 'package:aromelia/pages/camera_page.dart';
import 'package:aromelia/pages/code_page.dart';
import 'package:aromelia/pages/hair_servey.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392, 846),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Aromelia',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const CodePage(),
        );
      },
    );
  }
}
