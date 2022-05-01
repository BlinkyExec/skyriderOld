import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skyrider/models/Flight.dart';
import 'package:skyrider/screens/details/details_screen.dart';

import 'dart:ui' as ui;
import 'package:intl/intl.dart';
import '../constants.dart';
import '../size_config.dart';

class FlightCard extends StatelessWidget {
  const FlightCard({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.flight,
  }) : super(key: key);

  final double width, aspectRetio;
  final Flight flight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(width),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: FlightDetailsArguments(flight: flight),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                    tag: flight.id.toString(),
                    child: Image.asset(flight.images[0]),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                DateFormat('yyyy-MM-dd - kk:mm').format(flight.dep),
                style: TextStyle(color: Colors.black),
                maxLines: 2,
                textDirection: ui.TextDirection.rtl,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      flight.title,
                      style: TextStyle(
                        //fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                      ),
                      textDirection: ui.TextDirection.rtl,
                      maxLines: 2,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
                      height: getProportionateScreenWidth(28),
                      width: getProportionateScreenWidth(28),
                      decoration: BoxDecoration(
                        color: flight.isFavourite ? kPrimaryColor.withOpacity(0.15) : kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/icons8-info.svg",
                        //color: flight.isFavourite ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
