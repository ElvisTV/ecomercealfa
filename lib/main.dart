import 'package:flutter/material.dart';
import 'package:vitmaecomerce/routes.dart';
// import 'package:vitmaecomerce/screens/profile/profile_screen.dart';
import 'package:vitmaecomerce/screens/splash/splash_screen.dart';
import 'package:vitmaecomerce/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
