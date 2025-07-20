import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/pages/homepage.dart';
import 'package:notes_app/widgets/constansts.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(KBox);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: Homepage(),
    ),
  );
}
