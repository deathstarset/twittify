import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twittify_mobile/login.dart';
import 'package:twittify_mobile/posts.dart';
import 'package:twittify_mobile/register.dart';
import 'start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: GoogleFonts.poppinsTextTheme()),
      home: Start(),
      routes: {
        '/start': (context) => Start(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/posts': (context) => Posts()
      },
    );
  }
}
