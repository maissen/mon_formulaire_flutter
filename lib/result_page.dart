import 'package:flutter/material.dart';
import 'form_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon Formulaire',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FormPage(), // La page de formulaire est la page d'accueil
    );
  }
}
