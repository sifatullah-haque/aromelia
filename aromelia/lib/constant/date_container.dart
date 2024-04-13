import 'package:aromelia/constant/color_is.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateContainer extends StatelessWidget {
  final String date;
  final String day;
  final Color? color;
  final VoidCallback? onTap;

  const DateContainer({
    Key? key,
    required this.date,
    required this.day,
    this.color,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      triggerMode: TooltipTriggerMode.tap,
      showDuration: const Duration(days: 1),
      message: "$date March 2023",
      textStyle: TextStyle(
        color: ColorIs.textColor,
        fontWeight: FontWeight.w500,
        fontSize: 18.sp,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(
        top: 15.h,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 40.w,
          height: 70.h,
          decoration: BoxDecoration(
            color: color ?? Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "$day \n $date",
              style: TextStyle(
                color: color == null ? ColorIs.primaryColor : Colors.white,
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
