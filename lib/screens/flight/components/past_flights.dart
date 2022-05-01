import 'package:flutter/material.dart';
import 'package:skyrider/components/flight_card.dart';
import 'package:skyrider/models/Flight.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PastFlights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "טיסות אחרונות", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoFlights.length,
                (index) {
                  if (demoFlights[index].isFavourite) return FlightCard(flight: demoFlights[index]);

                  return SizedBox.shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
