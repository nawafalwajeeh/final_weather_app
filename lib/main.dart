import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/pages/home/home_screen.dart';
import 'package:weather_app/utils/Binding/HomeBinding.dart';

void main() {
  // RenderErrorBox.backgroundColor = Colors.blue;

  ErrorWidget.builder = (FlutterErrorDetails details) => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeScreen(),
          binding: HomeBinding(),
        )
      ],
    );
  }
}
