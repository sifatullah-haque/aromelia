import 'package:aromelia/constant/color_is.dart';
import 'package:aromelia/constant/color_toggle.dart';
import 'package:aromelia/constant/second_selectable_container.dart';
import 'package:aromelia/constant/selectable_container.dart';
import 'package:aromelia/pages/state_management/hair_survey_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HairSurveyBody extends StatelessWidget {
  const HairSurveyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var hairSurveyState = Provider.of<HairSurveyState>(context);
    // Calculate progress based on selections
    double progress = 0.0;

    if (hairSurveyState.circleColors
        .any((color) => color == ColorIs.colorSelected)) {
      progress += 0.25;
    }

    if (hairSurveyState.containerColors
        .any((color) => color == ColorIs.colorSelected)) {
      progress += 0.25;
    }
    if (hairSurveyState.secondContainerColors
        .any((color) => color == ColorIs.colorSelected)) {
      progress += 0.25;
    }

    if (hairSurveyState.containerColorsLast
        .any((color) => color == ColorIs.colorSelected)) {
      progress += 0.25;
    }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30.h,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinearProgressIndicator(
              value: progress,
              color: ColorIs.primaryColor,
            ),
            SizedBox(height: 10.h),
            Text("Few question's while we \n process your photos",
                style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[800])),
            SizedBox(height: 30.h),
            Text("How often did you washed your hair \nlast week?",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorIs.secondaryColor)),
            SizedBox(height: 10.h),
            Row(
              children: [
                ColorToggleButton(
                  circleColor: hairSurveyState.circleColors[0],
                  onPressed: () => hairSurveyState.toggleColor(
                      0, hairSurveyState.circleColors),
                  text: "Mon",
                ),
                SizedBox(width: 10.w),
                ColorToggleButton(
                  circleColor: hairSurveyState.circleColors[1],
                  onPressed: () => hairSurveyState.toggleColor(
                      1, hairSurveyState.circleColors),
                  text: "Tue",
                ),
                SizedBox(width: 10.w),
                ColorToggleButton(
                  circleColor: hairSurveyState.circleColors[2],
                  onPressed: () => hairSurveyState.toggleColor(
                      2, hairSurveyState.circleColors),
                  text: "Wed",
                ),
                SizedBox(width: 10.w),
                ColorToggleButton(
                  circleColor: hairSurveyState.circleColors[3],
                  onPressed: () => hairSurveyState.toggleColor(
                      3, hairSurveyState.circleColors),
                  text: "Thu",
                ),
                SizedBox(width: 10.w),
                ColorToggleButton(
                  circleColor: hairSurveyState.circleColors[4],
                  onPressed: () => hairSurveyState.toggleColor(
                      4, hairSurveyState.circleColors),
                  text: "Fri",
                ),
                SizedBox(width: 10.w),
                ColorToggleButton(
                  circleColor: hairSurveyState.circleColors[5],
                  onPressed: () => hairSurveyState.toggleColor(
                      5, hairSurveyState.circleColors),
                  text: "Sat",
                ),
                SizedBox(width: 10.w),
                ColorToggleButton(
                  circleColor: hairSurveyState.circleColors[6],
                  onPressed: () => hairSurveyState.toggleColor(
                      6, hairSurveyState.circleColors),
                  text: "Sun",
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Text("How is your hair condition?",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorIs.secondaryColor)),
            SizedBox(height: 10.h),
            Row(
              children: [
                Expanded(
                  child: SelectableContainer(
                    text: "Damaged",
                    image: "1.png",
                    backgroundColor: hairSurveyState.containerColors[0],
                    onPressed: () => hairSurveyState.toggleColor(
                        0, hairSurveyState.containerColors),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: SelectableContainer(
                    text: "Average",
                    image: "2.png",
                    backgroundColor: hairSurveyState.containerColors[1],
                    onPressed: () => hairSurveyState.toggleColor(
                        1, hairSurveyState.containerColors),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: SelectableContainer(
                    text: "Happy",
                    image: "3.png",
                    backgroundColor: hairSurveyState.containerColors[2],
                    onPressed: () => hairSurveyState.toggleColor(
                        2, hairSurveyState.containerColors),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Text("Are you experiencing any specific \nhair issues such as",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorIs.secondaryColor)),
            SizedBox(height: 10.h),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SecondSelectableContainer(
                        text: "Danruff",
                        backgroundColor:
                            hairSurveyState.secondContainerColors[0],
                        onPressed: () => hairSurveyState.toggleColor(
                            0, hairSurveyState.secondContainerColors),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: SecondSelectableContainer(
                        text: "Hair\nLoss",
                        backgroundColor:
                            hairSurveyState.secondContainerColors[1],
                        onPressed: () => hairSurveyState.toggleColor(
                            1, hairSurveyState.secondContainerColors),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: SecondSelectableContainer(
                        text: "Frizz",
                        backgroundColor:
                            hairSurveyState.secondContainerColors[2],
                        onPressed: () => hairSurveyState.toggleColor(
                            2, hairSurveyState.secondContainerColors),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Expanded(
                      child: SecondSelectableContainer(
                        text: "Split\nEnds",
                        backgroundColor:
                            hairSurveyState.secondContainerColors[3],
                        onPressed: () => hairSurveyState.toggleColor(
                            3, hairSurveyState.secondContainerColors),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: SecondSelectableContainer(
                        text: "Oily\nScalp",
                        backgroundColor:
                            hairSurveyState.secondContainerColors[4],
                        onPressed: () => hairSurveyState.toggleColor(
                            4, hairSurveyState.secondContainerColors),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(child: Container()),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Text("Hair Goals",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: ColorIs.secondaryColor)),
            SizedBox(height: 10.h),
            Row(
              children: [
                Expanded(
                  child: SelectableContainer(
                    text: "Recovering",
                    image: "4.png",
                    backgroundColor: hairSurveyState.containerColorsLast[0],
                    onPressed: () => hairSurveyState.toggleColor(
                        0, hairSurveyState.containerColorsLast),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: SelectableContainer(
                    text: "Increasing",
                    image: "5.png",
                    backgroundColor: hairSurveyState.containerColorsLast[1],
                    onPressed: () => hairSurveyState.toggleColor(
                        1, hairSurveyState.containerColorsLast),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: SelectableContainer(
                    text: "Maintaining",
                    image: "6.png",
                    backgroundColor: hairSurveyState.containerColorsLast[2],
                    onPressed: () => hairSurveyState.toggleColor(
                        2, hairSurveyState.containerColorsLast),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
