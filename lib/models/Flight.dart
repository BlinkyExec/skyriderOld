import 'package:flutter/material.dart';

class Flight {
  final int id;
  final String title, description, user, team;
  final List<String> images;
  final List<Color> colors;
  final double rating, loCode;
  //final bool isFavourite, isPopular;
  final bool isFavourite;
  final DateTime dep, arr;

  Flight({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = true,
    //this.isPopular = false,
    required this.loCode,
    required this.team,
    required this.dep,
    required this.arr,
    required this.title,
    required this.user,
    required this.description,
  });
}

// Our demo Flights

List<Flight> demoFlights = [
  Flight(
      id: 001,
      images: [
        "assets/images/flightayosh1.jpeg",
        "assets/images/flightayosh2.jpeg",
      ],
      colors: [
        Color(0xFFF6625E),
        Color(0xFF836DB8),
        Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "גיחה צוות --- פעילות מבצעית איוש",
      team: 'צוות אבי',
      user: 'מפעיל I',
      loCode: 1894,
      description: description,
      rating: 4.8,
      isFavourite: true,
      //isPopular: true,

      dep: DateTime.now(),
      arr: DateTime.now().add(new Duration(hours: 2))),
  Flight(
    id: 002,
    images: [
      "assets/images/flightaza2.jpeg",
      "assets/images/flightaza1.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "גיחה צוות הירט פעילות מבצעית עזה",
    team: 'צוות הירט',
    loCode: 1556,
    user: 'מפעיל II',
    description: fakeDescription,
    rating: 4.8,
    isFavourite: true,
    //isPopular: true,

    dep: DateTime.now(),
    arr: DateTime.now().add(new Duration(hours: 2)),
  ),
  Flight(
    id: 003,
    images: [
      "assets/images/kshirut.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "גיחה צוות --- שימור כשירות",
    team: 'צוות שלום',
    loCode: 1175,
    user: 'משגר',
    description: description,
    rating: 4.8,
    isFavourite: true,
    //isPopular: true,

    dep: DateTime.now(),
    arr: DateTime.now().add(new Duration(hours: 2)),
  ),
  Flight(
    id: 004,
    images: [
      "assets/images/kshirut1.jpeg",
      "assets/images/kshirut2.jpeg",
      "assets/images/kshirut3.jpeg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "גיחה צוות --- שימור כשירות",
    team: 'צוות דוד',
    loCode: 1339,
    user: 'מפקד המנ"ח',
    description: description,
    rating: 4.8,
    isFavourite: true,
    //isPopular: true,

    dep: DateTime.now(),
    arr: DateTime.now().add(new Duration(hours: 2)),
  ),
];

const String description = "תיאור אירוע טיסה כולל מזג אוויר תנאי, יציאה לפועל, מטרת הטיסה ואיכות אופן הטיסה. ממצאים ומסקנות יבואו בנוסף במידת הצורך …";
const String fakeDescription = "מזג אוויר מעונן חלקית (קולונימבוס) \nהטסה התבצעה בגבוה 800m-8000m \nהגעה לאיזור בזמן ופריסה תוך 15דק'. המראה שגרתית ושליטה מבצעית כראוי. \nנחיתה הייתה קשה במיוחד, עם ד.שמאל שנפגע בתהליך.";
