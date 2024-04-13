import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorToggleButton extends StatelessWidget {
  final Color circleColor;
  final VoidCallback onPressed;
  final String text;

  const ColorToggleButton({
    Key? key,
    required this.circleColor,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Determine the contrast color based on the background color
    Color contrastColor =
        circleColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;

    return GestureDetector(
      onTap: onPressed,
      child: CircleAvatar(
        radius: 20.r,
        backgroundColor: circleColor,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: contrastColor, fontSize: 14.sp),
          ),
        ),
      ),
    );
  }
}
