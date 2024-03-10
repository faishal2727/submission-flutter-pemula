import 'package:flutter/material.dart';
import 'package:submission_pemula_dicoding/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JapanMV',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
        fontFamily: 'Poppins'
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
