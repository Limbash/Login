import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/image_string.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/constants/text_strings.dart';

class DashboardBanners extends StatelessWidget {
  const DashboardBanners({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: tCardBgColor),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Image(
                        image: AssetImage(tBookmarkIcon),
                      ),
                    ),
                    Flexible(
                      child: Image(
                        image: AssetImage(tBannerImage1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Text(
                  tDashboardBannerTitle1,
                  style: txtTheme.headline4,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  tDashboardBannerSubTitle,
                  style: txtTheme.bodyText2,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: tDashboardPadding),
        Expanded(
            child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: tCardBgColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Image(
                          image: AssetImage(tBookmarkIcon),
                        ),
                      ),
                      Flexible(
                        child: Image(
                          image: AssetImage(tBannerImage2),
                        ),
                      ),
                    ],
                  ),
                  Text(tDashboardBannerTitle2,
                      style: txtTheme.headline4,
                      overflow: TextOverflow.ellipsis),
                  Text(tDashboardBannerSubTitle,
                      style: txtTheme.bodyText2,
                      overflow: TextOverflow.ellipsis)
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {}, child: Text(tDashboardButton)),
            ),
          ],
        )),
      ],
    );
  }
}
