import 'package:flutter/material.dart';
import 'package:vitmaecomerce/models/ElementoProducto.dart';
import 'package:vitmaecomerce/providers/elemento_provider.dart';
import 'package:vitmaecomerce/routes.dart';
import 'package:vitmaecomerce/screens/splash/components/intermedio.dart';
// import 'package:vitmaecomerce/screens/profile/profile_screen.dart';
import 'package:vitmaecomerce/screens/splash/splash_screen.dart';
import 'package:vitmaecomerce/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => ElementoProvider(), lazy: false)

      ],
      child: MyApp(),
    );
  }
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    print('in file main');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Carrito',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      // initialRoute: SplashScreen.routeName,
      // routes: routes,
      initialRoute: 'home',
      routes: {
        'home': ( _ ) => const Bird()
      }
    );
  }
}
