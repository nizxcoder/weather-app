import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather/src/utils/constant.dart';
import 'package:weather/src/widgets/forecastcard.dart';
import 'package:weather/src/widgets/forecastday.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarColor: Colors.transparent),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'Tempest',
            style: TextStyle(
              color: AppColors.textColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.1,
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: AppColors.textColor,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: AppColors.textColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.bgStart,
                AppColors.bgMiddle,
                AppColors.bgEnd,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.125,
              ),
              SvgPicture.string(
                AppSvg.sunIcon,
                height: 65.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '27',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 120.0,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Text(
                    '°C',
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.0425,
              ),
              const Text(
                'London, UK',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: height * 0.0225,
              ),
              SizedBox(
                width: width * 0.525,
                child: const Row(
                  children: [
                    Text(
                      'Feels like 25°C',
                      style: TextStyle(
                        color: AppColors.textColor,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Sunset 6:35 PM',
                      style: TextStyle(
                        color: AppColors.textColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.0725,
              ),
              SizedBox(
                width: width * 0.8,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ForecastDayWidget(
                      label: "Today",
                      isSelected: true,
                    ),
                    ForecastDayWidget(
                      label: "Tommorow",
                    ),
                    ForecastDayWidget(
                      label: "7 Days",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.0425,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  child: Row(
                    children: [
                      SizedBox(width: 50),
                      ForecastCardWidget(icon: AppSvg.sunIcon),
                      ForecastCardWidget(
                        icon: AppSvg.sunIcon,
                        isActive: true,
                      ),
                      ForecastCardWidget(icon: AppSvg.sunIcon),
                      ForecastCardWidget(icon: AppSvg.cloudIcon),
                      ForecastCardWidget(icon: AppSvg.cloudIcon),
                      ForecastCardWidget(icon: AppSvg.sunIcon),
                      ForecastCardWidget(icon: AppSvg.sunIcon),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.0425,
              ),
              SizedBox(
                width: width * 0.725,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wind 5 km/h',
                      style: TextStyle(
                        color: AppColors.textColor,
                      ),
                    ),
                    Text(
                      '|',
                      style: TextStyle(
                        color: AppColors.textColor,
                      ),
                    ),
                    Text(
                      'Humidity 60%',
                      style: TextStyle(
                        color: AppColors.textColor,
                      ),
                    ),
                    Text(
                      '|',
                      style: TextStyle(
                        color: AppColors.textColor,
                      ),
                    ),
                    Text(
                      'AQI Index 42',
                      style: TextStyle(
                        color: AppColors.textColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
