import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';
import 'dart:ui' as ui;

class HeaderFb2 extends StatelessWidget {
  final String text;
  final String subtitle;
  final Function() iconOnPressed;
  final Widget icon;
  const HeaderFb2({required this.text, this.subtitle = "", required this.icon, required this.iconOnPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
              textDirection: ui.TextDirection.rtl,
              textAlign: TextAlign.right,
            ),
            Text(
              subtitle,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.grey),
              textDirection: ui.TextDirection.rtl,
              textAlign: TextAlign.right,
            ),
          ],
        ),
        IconButton(
          icon: icon,
          onPressed: iconOnPressed,
        )
      ],
    );
  }
}
