import 'package:flowdr_mobile_app/core/routes/routes.dart';
import 'package:flowdr_mobile_app/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flowdr',
      theme: AppTheme.lightTheme,
      initialRoute: '/home',
      getPages: AppPages.route,
    );
  }
}
