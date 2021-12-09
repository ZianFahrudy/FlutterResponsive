import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'course_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          breakpoints: const [
            ResponsiveBreakpoint.resize(350, name: MOBILE),
            ResponsiveBreakpoint.autoScale(600, name: TABLET),
            ResponsiveBreakpoint.resize(800, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
          ]),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Responsive Framework Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CoursePage(),
    );
  }
}
