import 'package:aromelia/constant/color_is.dart';
import 'package:aromelia/constant/date_container.dart';
import 'package:aromelia/constant/product_details.dart';
import 'package:aromelia/pages/recommended/14th.dart';
import 'package:aromelia/pages/recommended/recommendations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevenRecommendations extends StatelessWidget {
  const ElevenRecommendations({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30.h,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const _ScrollableRow(),
            SizedBox(height: 50.h), // Add a SizedBox for spacing
            const _TextRow(),
            SizedBox(height: 20.h), // Add a SizedBox for spacing
            const _MorningRow(),
            SizedBox(height: 30.h), // Add a SizedBox for spacing
            ProductDetails(
              title: "Série Expert Absolut Repair \nGold Quinoa + Protein",
              image: "1st",
              showIcon: true,
            ),
            SizedBox(height: 40.h), // Add a SizedBox for spacing
            ProductDetails(
              title: "Elvive \nextraordinary oil",
              image: "3rd",
            ),
            SizedBox(height: 30.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("+ Add a new event to routine",
                    style: TextStyle(
                        color: ColorIs.textColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _MorningRow extends StatelessWidget {
  const _MorningRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //morning
        Expanded(
          flex: 2,
          child: Text("Morning",
              style: TextStyle(
                  color: ColorIs.textColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400)),
        ),
        //sizebox of 20
        const Spacer(),
        //divider
        const Expanded(
          flex: 6,
          child: Divider(
            color: ColorIs.textColor,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}

class _TextRow extends StatelessWidget {
  const _TextRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //text
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //todays backpack
            Text(
              "Today's backpack",
              style: TextStyle(
                color: ColorIs.textColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Approved by your hairdresser",
              style: TextStyle(
                  color: ColorIs.textColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w300),
            )
          ],
        ),

        //spacer
        Spacer(),

        //text
        Text(
          "Nutrition + \n wetting",
          style: TextStyle(
            color: ColorIs.textColor,
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class _ScrollableRow extends StatelessWidget {
  const _ScrollableRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                DateContainer(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const Recommendations(),
                      ),
                    );
                  },
                  date: "10",
                  day: "Mo",
                  color: ColorIs.primaryColor,
                ),
                SizedBox(width: 8.w),
                const DateContainer(
                  date: "11",
                  day: "Tu",
                  color: ColorIs.primaryColor,
                ),
                SizedBox(width: 8.w),
                const DateContainer(
                  date: "12",
                  day: "We",
                ),
                SizedBox(width: 8.w),
                const DateContainer(
                  date: "13",
                  day: "Thu",
                ),
                SizedBox(width: 8.w),
                DateContainer(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const fourteenRecommendations(),
                      ),
                    );
                  },
                  date: "14",
                  day: "Fr",
                  color: ColorIs.primaryColor,
                ),
                SizedBox(width: 8.w),
                const DateContainer(
                  date: "15",
                  day: "Sa",
                ),
                SizedBox(width: 8.w),
                const DateContainer(
                  date: "16",
                  day: "Su",
                ),
                SizedBox(width: 8.w),
                const DateContainer(
                  date: "17",
                  day: "Mo",
                ),
                SizedBox(width: 8.w),
                const DateContainer(
                  date: "18",
                  day: "Tu",
                  color: ColorIs.primaryColor,
                ),
                SizedBox(width: 8.w),
                const DateContainer(
                  date: "19",
                  day: "We",
                ),
                SizedBox(width: 8.w),
                const DateContainer(
                  date: "20",
                  day: "Thu",
                  color: ColorIs.primaryColor,
                ),
                SizedBox(width: 8.w),
                const DateContainer(
                  date: "21",
                  day: "Fr",
                ),
                SizedBox(width: 8.w),
                const DateContainer(
                  date: "22",
                  day: "Sa",
                  color: ColorIs.primaryColor,
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 5.w),
        // Add a SizedBox for spacing
        Text(
          "Schedule a \n hair procedure",
          style: TextStyle(
            color: ColorIs.textColor,
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
