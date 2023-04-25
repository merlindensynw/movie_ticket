import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:movieticket/ui.dart';
import 'package:movieticket/view_model/app_view_model.dart';
import 'package:movieticket/views/cast_screen.dart';
import 'package:movieticket/views/home_screen.dart';
import 'package:movieticket/views/synopsis_screen.dart';

void main() {
  runApp(
    AppProvider(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Movie',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomeScreen(),
    );
  }
}
