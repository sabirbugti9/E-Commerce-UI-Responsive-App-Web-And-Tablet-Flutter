import 'package:e_commerce_ui/helper/responsive_builder.dart';
import 'package:e_commerce_ui/screens/home_page_tablet/home_page_tablet.dart';
import 'package:e_commerce_ui/screens/home_page_web/home_page_web.dart';
import 'package:flutter/material.dart';

import 'screens/home_page_app/home_page_app.dart';
import 'screens/home_page_web/home_page_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsiveBuilder(
          mobile: HomePageApp(), tablet: HomePageTablet(), desktop: HomePageWeb()),
    );
  }
}
