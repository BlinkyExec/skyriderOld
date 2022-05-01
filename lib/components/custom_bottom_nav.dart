import 'package:flutter/material.dart';
import 'package:skyrider/screens/flight/flight_screen.dart';
import 'package:skyrider/screens/map/map_screen.dart';
import 'package:skyrider/screens/home/home_screen.dart';

class BottomNavBarFb3 extends StatelessWidget {
  const BottomNavBarFb3({Key? key}) : super(key: key);

  final primaryColor = const Color(0xff4338CA);
  final secondaryColor = const Color(0xff6D28D9);
  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xffffffff);
  final errorColor = const Color(0xffEF4444);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBottomBar(
                  text: "Flight",
                  icon: Icons.add_box_outlined,
                  selected: false,
                  onPressed: () {
                    Navigator.pushNamed(context, FlightScreen.routeName);
                  }),
              IconBottomBar(
                  text: "Map",
                  icon: Icons.map_outlined,
                  selected: false,
                  onPressed: () {
                    Navigator.pushNamed(context, MapPage.routeName);
                  }),
              IconBottomBar(text: "Info", icon: Icons.info_outline, selected: false, onPressed: () {}),
              IconBottomBar(text: "Profile", icon: Icons.account_box_outlined, selected: false, onPressed: () {}),
              const Spacer(),
              IconBottomBar2(
                  text: "Home",
                  icon: Icons.home_rounded,
                  selected: true,
                  onPressed: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar({Key? key, required this.text, required this.icon, required this.selected, required this.onPressed}) : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final primaryColor = const Color(0xff4338CA);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? primaryColor : Colors.black54,
          ),
        ),
      ],
    );
  }
}

class IconBottomBar2 extends StatelessWidget {
  const IconBottomBar2({Key? key, required this.text, required this.icon, required this.selected, required this.onPressed}) : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final primaryColor = const Color(0xff4338CA);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: primaryColor,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
