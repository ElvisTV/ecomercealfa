import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vitmaecomerce/models/ElementoProducto.dart';
import 'package:vitmaecomerce/models/Product.dart';
import 'package:vitmaecomerce/screens/splash/components/body.dart';
import 'package:vitmaecomerce/size_config.dart';

import '../../providers/elemento_provider.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
   
    debugPrint('en splashScreen');
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
