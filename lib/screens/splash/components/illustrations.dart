import 'package:flutter/material.dart';

class IllustrationFb4 extends StatelessWidget {
  const IllustrationFb4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/illustrations%2Fundraw_Social_friends_re_7uaa%201.png?alt=media&token=25201ff9-7b37-4f0d-ac86-66d98283d4c4",
      fit: BoxFit.cover,
    );
  }
}
