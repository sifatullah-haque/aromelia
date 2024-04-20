import 'dart:io';

import 'package:aromelia/constant/color_is.dart';
import 'package:aromelia/pages/loading_page.dart';
import 'package:aromelia/pages/recommended/recommendations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultPage extends StatelessWidget {
  final File? selectImages;
  const ResultPage({super.key, required this.selectImages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 20.h,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Here it’s, your hair \nanalysis is done :))',
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20.h),
              Center(
                child: Container(
                  height: 300.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: selectImages != null
                      ? Image.file(
                          selectImages!,
                          fit: BoxFit.cover,
                        )
                      : Container(), // Placeholder container when selectImages is null
                ),
              ),
              SizedBox(height: 40.h),
              const _RowOfResult(),
              SizedBox(height: 40.h),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoadingPage(),
                        ));
                  },
                  child: Container(
                    height: 50.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      color: ColorIs.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Create a schedule",
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class _RowOfResult extends StatelessWidget {
  const _RowOfResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Colorations",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(height: 15.h),
            Text("Not\nIdentified",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w300,
                ))
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Significant\nStyling",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(height: 10.h),
            Text("Natural",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w300,
                ))
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Breakage",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                )),
            SizedBox(height: 35.h),
            Text("Little",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w300,
                ))
          ],
        ),
      ],
    );
  }
}
