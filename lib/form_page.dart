import 'package:flutter/material.dart';
import 'result_page.dart'; // Pour la navigation vers la page de résultats

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _formPageState extends State<FormPage> {
  // controllers de texte pour les champs Nom et Prénoms
  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _prenomController = TextEditingController();

  // status vars for switches and checkboxes
  bool _isHomme = true;

  final Map<String, bool> _languagesValides = {
    'Java': false,
    'Flutter': false,
    'JavaScript': false
  }

}
