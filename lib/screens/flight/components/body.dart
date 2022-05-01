import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'past_flights.dart';
import 'home_banner.dart';
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
              text: "טיסות",
              subtitle: "דיווח ומידע הטסתי",
              icon: Icon(
                Icons.info_outline,
                color: Color(0xff4338CA),
              ),
              iconOnPressed: () {},
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            //HomeBanner(),
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
