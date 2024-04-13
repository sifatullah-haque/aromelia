import 'package:aromelia/constant/color_is.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetails extends StatefulWidget {
  final String title;
  final String image;
  final bool? showIcon;

  ProductDetails({
    Key? key,
    required this.title,
    required this.image,
    this.showIcon,
  }) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected; // Toggle the isSelected state
        });
      },
      child: Row(
        children: [
          // Column of name, select alternative
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Name of the product
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      color: ColorIs.textColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (widget.showIcon == true)
                    Icon(
                      Icons.info,
                      color: ColorIs.primaryColor,
                      size: 15.sp,
                    ),
                ],
              ),
              SizedBox(height: 5.h), // Add a SizedBox for spacing

              // Select alternative
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Center(
                  child: Text(
                    "Select alternative",
                    style: TextStyle(
                      color: ColorIs.secondaryColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Image of the product
          Spacer(),
          Image.asset(
            "assets/${widget.image}.png",
            width: 45.w,
          ),

          // Radio button to select the product
          Radio(
            fillColor: MaterialStatePropertyAll(ColorIs.primaryColor),
            value: isSelected ? 1 : 0,
            groupValue: 1,
            onChanged: (value) {
              setState(() {
                isSelected = !isSelected; // Toggle the isSelected state
              });
            },
            activeColor: ColorIs.primaryColor,
          ),
        ],
      ),
    );
  }
}
