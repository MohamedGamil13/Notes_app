import 'package:flutter/material.dart';
import 'package:notes_app/pages/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: Homepage(),
    ),
  );
}
