import 'package:flutter/material.dart';
import 'package:skyrider/components/default_button.dart';
import 'package:skyrider/models/Flight.dart';
import 'package:skyrider/size_config.dart';

import '../../../constants.dart';
import 'package:intl/intl.dart';
import 'flight_description.dart';
import 'top_rounded_container.dart';
import 'flight_images.dart';

class Body extends StatelessWidget {
  final Flight flight;

  const Body({Key? key, required this.flight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FlightImages(flight: flight),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              FlightDescription(
                flight: flight,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            primary: Colors.white,
                            backgroundColor: kPrimaryColor,
                          ),
                          onPressed: () {},
                          child: Text(
                            DateFormat('dd-MM-yyyy - kk:mm').format(flight.dep) + " ➜ " + DateFormat('dd-MM-yyyy - kk:mm').format(flight.arr),
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(12),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
