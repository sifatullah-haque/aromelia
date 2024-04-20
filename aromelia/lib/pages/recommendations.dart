import 'package:aromelia/constant/color_is.dart';
import 'package:aromelia/constant/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationsPage extends StatefulWidget {
  @override
  _CustomTabBarDemoState createState() => _CustomTabBarDemoState();
}

class _CustomTabBarDemoState extends State<RecommendationsPage> {
  int _selectedTabIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 30.h,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => _onTabTapped(0),
                          child: const tabBarContainer(
                            text: "mo",
                            date: "10",
                            color: ColorIs.primaryColor,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        GestureDetector(
                            onTap: () => _onTabTapped(1),
                            child: const tabBarContainer(
                              text: "tu",
                              date: "11",
                              color: ColorIs.primaryColor,
                            )),
                        SizedBox(width: 8.w),
                        GestureDetector(
                            onTap: () => _onTabTapped(2),
                            child:
                                const tabBarContainer(text: "we", date: "13")),
                        SizedBox(width: 8.w),
                        GestureDetector(
                          onTap: () => _onTabTapped(3),
                          child: const tabBarContainer(
                            text: "th",
                            date: "14",
                            color: ColorIs.primaryColor,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        GestureDetector(
                            onTap: () => _onTabTapped(4),
                            child:
                                const tabBarContainer(text: "fr", date: "15")),
                        SizedBox(width: 8.w),
                        GestureDetector(
                          onTap: () => _onTabTapped(5),
                          child: const tabBarContainer(
                            text: "mo",
                            date: "18",
                            color: ColorIs.primaryColor,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        GestureDetector(
                            onTap: () => _onTabTapped(6),
                            child:
                                const tabBarContainer(text: "tu", date: "19")),
                        SizedBox(width: 8.w),
                        GestureDetector(
                          onTap: () => _onTabTapped(7),
                          child: const tabBarContainer(
                            text: "we",
                            date: "20",
                            color: ColorIs.primaryColor,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        GestureDetector(
                            onTap: () => _onTabTapped(8),
                            child:
                                const tabBarContainer(text: "th", date: "21")),
                        SizedBox(width: 8.w),
                        GestureDetector(
                          onTap: () => _onTabTapped(9),
                          child: const tabBarContainer(
                            text: "fr",
                            date: "22",
                            color: ColorIs.primaryColor,
                          ),
                        ),
                        SizedBox(width: 8.w),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  flex: 2,
                  child: Text(
                    "Schedule a \n hair procedure",
                    style: TextStyle(
                      color: ColorIs.textColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: _selectedTabIndex == 0
                    ? const RecommendationsDetails()
                    : _selectedTabIndex == 1
                        ? const RecommendationsDetails()
                        : _selectedTabIndex == 3
                            ? const RecommendationsDetails()
                            : _selectedTabIndex == 5
                                ? const RecommendationsDetails()
                                : _selectedTabIndex == 7
                                    ? const RecommendationsDetails()
                                    : _selectedTabIndex == 9
                                        ? const RecommendationsDetails()
                                        : Text("No recommendations for Today"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendationsDetails extends StatelessWidget {
  const RecommendationsDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h),
        _TextRow(),
        _MorningRow(),
        SizedBox(height: 30.h), // Add a SizedBox for spacing
        ProductDetails(
          title: "Série Expert Absolut Repair \n Gold Quinoa + Protein",
          image: "1st",
          showIcon: true,
        ),
        SizedBox(height: 40.h), // Add a SizedBox for spacing
        ProductDetails(
          title: "Nutrifier Glycerol + Óleo De \n Coco 500 ml",
          image: "2nd",
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
    );
  }
}

class tabBarContainer extends StatelessWidget {
  final String text;
  final String date;
  final Color? color;
  const tabBarContainer({
    super.key,
    required this.text,
    required this.date,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 70.h,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          "$text \n $date",
          style: TextStyle(
            color: color == null ? ColorIs.primaryColor : Colors.white,
            fontSize: 15.sp,
            fontWeight: FontWeight.bold,
          ),
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
          "Hidratation + \n Hair Treatment",
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
