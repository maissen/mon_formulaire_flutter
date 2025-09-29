import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String firstName;
  final String lastName;
  final bool isMale;
  final List<String> languages;

  const ResultPage({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.isMale,
    required this.languages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Résultats')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Prénom : $firstName'),
                Text('Nom : $lastName'),
                Text('Sexe : ${isMale ? "Masculin" : "Féminin"}'),
                Text('Langages : ${languages.join(", ")}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
