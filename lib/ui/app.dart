import 'package:flutter/material.dart';
import 'package:note_app/ui/pages/add_note_page/add_note_page.dart';
import 'package:note_app/ui/pages/home_page/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddNotePage(),
    );
  }
}
