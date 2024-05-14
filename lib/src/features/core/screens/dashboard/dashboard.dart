import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';
import 'package:flutter_login_app/src/features/core/screens/dashboard/widgets/app_bar.dart';
import 'package:flutter_login_app/src/features/core/screens/dashboard/widgets/banners.dart';
import 'package:flutter_login_app/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:flutter_login_app/src/features/core/screens/dashboard/widgets/search_bar.dart';
import 'package:flutter_login_app/src/features/core/screens/dashboard/widgets/top_courses.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
// variables
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Headings
              Text(tDashboardTitle, style: txtTheme.bodyText2),
              Text(tDashboardHeading, style: txtTheme.headline2),
              const SizedBox(height: tDashboardPadding),

              // Search bar

              DashboardSearchBar(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding),

              //Categories

              DashboardCategories(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding),

              // Banners

              DashboardBanners(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding),

              // Top courses

              Text(tDashboardTopCourses,
                  style: txtTheme.headline4?.apply(fontSizeFactor: 1.2)),
              DashboardTopCourses(txtTheme: txtTheme)
            ],
          ),
        ),
      ),
    );
  }
}
