import 'package:flutter/material.dart';
import 'package:skyrider/components/social_card.dart';
import 'package:skyrider/constants.dart';
import 'package:skyrider/size_config.dart';

import 'sign_up_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                Text("יצירת חשבון", style: headingStyle),
                Text(
                  "השלם את הפרטים שלך או המשך \nלהתחברות עם חשבון",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/Location point.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/logocolored.svg",
                      press: () {},
                    ),
                    SocialCard(
                      icon: "assets/icons/Phone.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Text(
                  'בהרשמה זו הנני מסכים עם מסמכי \nהתנאים ופרטיות',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
