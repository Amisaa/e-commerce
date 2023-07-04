

import 'package:flutter_onboard/flutter_onboard.dart';

class OnBoardData{
  static final List<OnBoardModel> onBoardData = [
    const OnBoardModel(
      title: "My First onboarding screen",
      description: "Goal support your motivation and inspire you to work harder",
      imgUrl: "assets/images/onboard_one.png",
    ),
    const OnBoardModel(
      title: "Come and experience with me ",
      description:
      "Analyse personal result with detailed chart and numerical values",
      imgUrl: 'assets/images/onboard_two.png',
    ),
    const OnBoardModel(
      title: "You will experience a new feeling ",
      description:
      "Take before and after photos to visualize progress and get the shape that you dream about",
      imgUrl: 'assets/images/onboard_three.png',
    ),
    const OnBoardModel(
      title: "This is a great page",
      description:
      "Take photos to visualize progress and get the shape that you dream about",
      imgUrl: 'assets/images/onboard_four.png',
    ),
  ];
}