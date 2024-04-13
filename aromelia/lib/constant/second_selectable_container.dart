import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondSelectableContainer extends StatelessWidget {
  final Color backgroundColor;
  final VoidCallback onPressed;

  final String text;
  const SecondSelectableContainer({
    Key? key,
    required this.backgroundColor,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Determine the contrast color based on the background color
    Color contrastColor =
        backgroundColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 70.h,
        // width: 100.w,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: TextStyle(color: contrastColor, fontSize: 14.sp)),
          ],
        ),
      ),
    );
  }
}
