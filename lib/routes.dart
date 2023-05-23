import 'package:flutter/widgets.dart';
import 'package:vitmaecomerce/screens/cart/cart_screen.dart';
import 'package:vitmaecomerce/screens/complete_profile/complete_profile_screen.dart';
import 'package:vitmaecomerce/screens/details/details_screen.dart';
import 'package:vitmaecomerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:vitmaecomerce/screens/home/home_screen.dart';
import 'package:vitmaecomerce/screens/login_success/login_success_screen.dart';
import 'package:vitmaecomerce/screens/otp/otp_screen.dart';
import 'package:vitmaecomerce/screens/profile/profile_screen.dart';
import 'package:vitmaecomerce/screens/sign_in/sign_in_screen.dart';
import 'package:vitmaecomerce/screens/splash/splash_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
