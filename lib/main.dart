import 'package:flutter/material.dart';

import 'package:flutter_tmdb/src/ui/screens/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),

    theme: ThemeData.dark(),
  ));
}
