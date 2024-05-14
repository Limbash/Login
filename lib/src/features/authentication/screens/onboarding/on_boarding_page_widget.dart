import 'package:flutter/material.dart';
import 'package:flutter_login_app/src/constants/colors.dart';
import 'package:flutter_login_app/src/constants/sizes.dart';
import 'package:flutter_login_app/src/features/authentication/models/model_on_boarding.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(tDefaultSize),
      color: tOnBoardingPage1Color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(
              model.image,
            ),
            height: size.height * 0.38,
          ),
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                model.subTitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(
            model.counterText,
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: 50.0,
          )
        ],
      ),
    );
  }
}
