import 'package:aromelia/constant/color_is.dart';
import 'package:aromelia/pages/recommended/recommendations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key});

  @override
  Widget build(BuildContext context) {
    // Add Future.delayed to wait for 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      // After 2 seconds, navigate to the next page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              RecommendationsPage(), // Replace YourNextPage with the name of your next page
        ),
      );
    });

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(ColorIs.primaryColor),
            ),
            SizedBox(height: 20.h),
            Center(
              child: Text(
                "Creating a hair care schedule and selecting the match mix of products... ",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
