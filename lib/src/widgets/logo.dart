import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/src/utils/constant.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Image.asset(
        'assets/images/tempest.jpeg',
        height: 100.0,
      ),
      // child: const Icon(Icons.sunny_snowing,
      //     size: 100.0, color: AppColors.textColor),
    );
  }
}
