import 'package:flutter/material.dart';
import 'package:skyrider/screens/flight/components/home_banner.dart';
import 'package:skyrider/screens/flight/components/past_flights.dart';
import '../../../size_config.dart';
import 'package:skyrider/components/page_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HeaderFb2(
              text: "דף הבית",
              subtitle: "מידע ואיסוף נתונים ",
              icon: Icon(
                Icons.home_max_outlined,
                color: Color(0xff4338CA),
              ),
              iconOnPressed: () {},
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            HomeBanner(),
            //Categories(),
            //SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PastFlights(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
