import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skyrider/models/Flight.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class FlightDescription extends StatelessWidget {
  const FlightDescription({
    Key? key,
    required this.flight,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Flight flight;
  final GestureTapCallback? pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            flight.title,
            style: Theme.of(context).textTheme.headline6,
            textDirection: TextDirection.rtl,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
              color: flight.isFavourite ? Color(0xFFFFE6E6) : Color(0xFFF5F6F9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: SvgPicture.asset(
              "assets/icons/icons8-info.svg",
              //color: flight.isFavourite ? Color(0xFFFF4848) : Color(0xFFDBDEE4),
              height: getProportionateScreenWidth(16),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Column(
            children: [
              Text(
                flight.team,
                textDirection: TextDirection.rtl,
              ),
              SizedBox(height: getProportionateScreenWidth(10)),
              Text(
                "אחראי טיסה: " + flight.user,
                textDirection: TextDirection.rtl,
              ),
              SizedBox(height: getProportionateScreenWidth(10)),
              Text(
                "קוד מיקום: " + flight.loCode.toString(),
                textDirection: TextDirection.rtl,
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
              Text(
                flight.description,
                maxLines: 5,
                textDirection: TextDirection.rtl,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  "קרא עוד",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                  textDirection: TextDirection.rtl,
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kPrimaryColor,
                ),
                //Text(
                //'\n\n\n' + flight.dep.toString() + " ➜ " + flight.arr.toString(),
                //textAlign: TextAlign.center,
                //),
              ],
            ),
          ),
        )
      ],
    );
  }
}
