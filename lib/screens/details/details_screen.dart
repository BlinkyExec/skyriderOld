import 'package:flutter/material.dart';

import '../../models/Flight.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final FlightDetailsArguments agrs = ModalRoute.of(context)!.settings.arguments as FlightDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: agrs.flight.rating),
      ),
      body: Body(flight: agrs.flight),
    );
  }
}

class FlightDetailsArguments {
  final Flight flight;

  FlightDetailsArguments({required this.flight});
}
