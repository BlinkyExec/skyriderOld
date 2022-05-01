import 'package:flutter/widgets.dart';
//import 'package:skyrider/screens/cart/cart_screen.dart';
import 'package:skyrider/screens/complete_profile/complete_profile_screen.dart';
import 'package:skyrider/screens/flight/flight_screen.dart';
import 'package:skyrider/screens/details/details_screen.dart';
import 'package:skyrider/screens/flight_form/flight_form_screen.dart';
import 'package:skyrider/screens/test_form/test_form_screen.dart';
import 'package:skyrider/screens/forgot_password/forgot_password_screen.dart';
import 'package:skyrider/screens/home/home_screen.dart';
import 'package:skyrider/screens/login_success/login_success_screen.dart';
import 'package:skyrider/screens/map/components/body.dart';
//import 'package:skyrider/screens/otp/otp_screen.dart';
//import 'package:skyrider/screens/profile/profile_screen.dart';
import 'package:skyrider/screens/sign_in/sign_in_screen.dart';
import 'package:skyrider/screens/splash/splash_screen.dart';
import 'package:skyrider/screens/map/map_screen.dart';
import 'package:skyrider/screens/flight/flight_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

//import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  //CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  //OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  FlightScreen.routeName: (context) => FlightScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  TestFormScreen.routeName: (context) => TestFormScreen(),
  FlightFormScreen.routeName: (context) => FlightFormScreen(),
  //CartScreen.routeName: (context) => CartScreen(),
  //ProfileScreen.routeName: (context) => ProfileScreen(),
  MapPage.routeName: (context) => MapPage(),
};
