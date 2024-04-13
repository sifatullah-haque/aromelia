import 'package:aromelia/pages/hair_servey.dart';
import 'package:aromelia/pages/state_management/hair_survey_state.dart';
import 'package:aromelia/pages/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392, 846),
      builder: (context, child) {
        return ChangeNotifierProvider(
          create: (context) =>
              HairSurveyState(), // Replace YourProviderClass with your actual provider class
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Aromelia',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const HairSurveyBody(),
          ),
        );
      },
    );
  }
}
