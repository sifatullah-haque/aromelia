import 'package:aromelia/constant/color_is.dart';
import 'package:flutter/material.dart';

class HairSurveyState extends ChangeNotifier {
  List<Color> circleColors = [
    ColorIs.colorUnselected, // Initial color of CircleAvatar for Mon
    ColorIs.colorUnselected, // Initial color of CircleAvatar for Tue
    ColorIs.colorUnselected, // Initial color of CircleAvatar for Wed
    ColorIs.colorUnselected, // Initial color of CircleAvatar for Thu
    ColorIs.colorUnselected, // Initial color of CircleAvatar for Fri
    ColorIs.colorUnselected, // Initial color of CircleAvatar for Sat
    ColorIs.colorUnselected, // Initial color of CircleAvatar for Sun
  ];

  List<Color> containerColors = [
    ColorIs.colorUnselected, // Initial color of Container 1
    ColorIs.colorUnselected, // Initial color of Container 2
    ColorIs.colorUnselected, // Initial color of Container 3
  ];

  List<Color> secondContainerColors = [
    ColorIs.colorUnselected, // Initial color of Container 1
    ColorIs.colorUnselected, // Initial color of Container 2
    ColorIs.colorUnselected, // Initial color of Container 3
    ColorIs.colorUnselected, // Initial color of Container 4
    ColorIs.colorUnselected, // Initial color of Container 5
  ];

  List<Color> containerColorsLast = [
    ColorIs.colorUnselected, // Initial color of Container 1
    ColorIs.colorUnselected, // Initial color of Container 2
    ColorIs.colorUnselected, // Initial color of Container 3
  ];
  void toggleColor(int index, List<Color> colors) {
    colors[index] = colors[index] == ColorIs.colorUnselected
        ? ColorIs.colorSelected
        : ColorIs.colorUnselected;
    notifyListeners();
  }
}
