import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_details_page.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'utils/mytheme.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.dartTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => MyHomePage(),
        MyRoutes.homeDetailsRoute: (context) => HomeDetailsPage(),
      },
    );
  }
}
