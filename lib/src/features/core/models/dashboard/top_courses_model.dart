import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/image_string.dart';

class TopCoursesModel {
  final String title;
  final String heading;
  final String subHeading;
  final String image;
  final VoidCallback? onPress;

  TopCoursesModel(
      this.title, this.heading, this.subHeading, this.image, this.onPress);

  static List<TopCoursesModel> list = [
    TopCoursesModel("Flutter Crash Course", "3 Sections",
        "Programming Languages", tTopCoursesImage1, null),
    TopCoursesModel("Kotlin Crash Course", "6 Sections",
        "Programming Languages", tTopCoursesImage2, null),
    TopCoursesModel("Python Advanced", "9 Sections", "Programming Languages",
        tTopCoursesImage3, null),
  ];
}
