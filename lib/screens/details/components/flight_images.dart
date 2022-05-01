import 'package:flutter/material.dart';
import 'package:skyrider/models/Flight.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class FlightImages extends StatefulWidget {
  const FlightImages({
    Key? key,
    required this.flight,
  }) : super(key: key);

  final Flight flight;

  @override
  _FlightImagesState createState() => _FlightImagesState();
}

class _FlightImagesState extends State<FlightImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.flight.id.toString(),
              child: Image.asset(widget.flight.images[selectedImage]),
            ),
          ),
        ),
        // SizedBox(height: getProportionateScreenWidth(20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.flight.images.length, (index) => buildSmallFlightPreview(index)),
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallFlightPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
        ),
        child: Image.asset(widget.flight.images[index]),
      ),
    );
  }
}
