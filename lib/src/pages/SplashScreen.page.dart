import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:weather/routes.dart';
import 'package:weather/src/utils/constant.dart';
import 'package:weather/src/widgets/logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Get.toNamed(RouteName.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarColor: Colors.transparent),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: width,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppLogo(),
              Text(
                'Tempest',
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
