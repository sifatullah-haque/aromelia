import 'package:aromelia/constant/color_is.dart';
import 'package:aromelia/pages/camera_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CodePage extends StatelessWidget {
  const CodePage({super.key});

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
          children: <Widget>[
            SizedBox(
              height: 20.h,
            ),
            Text(
              "We were \n waiting for you",
              style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 20.h),
            const _TextFieldWithArrow(),
            SizedBox(height: 10.h),
            Text("I don't have a code",
                style: TextStyle(
                  color: ColorIs.secondaryColor,
                  fontWeight: FontWeight.w200,
                )),
          ],
        ),
      ),
    );
  }
}

class _TextFieldWithArrow extends StatelessWidget {
  const _TextFieldWithArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Your hairdresser's code",
              hintStyle: TextStyle(
                color: ColorIs.secondaryColor,
                fontWeight: FontWeight.w200,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 2.w, color: ColorIs.primaryColor),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 2.w, color: ColorIs.litePrimary),
              ),
            ),
          ),
        ),
        SizedBox(width: 20.w),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const CameraPage(),
              ),
            );
          },
          child: Container(
            height: 45.h,
            width: 45.w,
            decoration: BoxDecoration(
              color: ColorIs.primaryColor,
              borderRadius: BorderRadius.circular(5.h),
            ),
            child: const Expanded(
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
