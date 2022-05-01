import 'package:flutter/material.dart';
import 'package:skyrider/size_config.dart';

const kPrimaryColor = Color(0xFF203239);
const kPrimaryLightColor = Color(0xFF141E27);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFFFFA53E),
    Color(0xFFFF7643)
  ],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kTopColor = Color(0xFFf9f9f9);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
//final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "בבקשה הקלד מספר אישי";
const String kInvalidEmailError = "בבקשה ודא תקינות מספר אישי";
const String kPassNullError = "בבקשה הקלד סיסמה";
const String kShortPassError = "סיסמה קצרה מידי";
const String kMatchPassError = "סיסמאות לא תואמות";
const String kNamelNullError = "בבקשה הקלד את שימך המלא";
const String kPhoneNumberNullError = "בבקשה הקלד מספר טלפון";
const String kAddressNullError = "בבקשה הקלד כתובת מגורים";

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
