import 'package:flutter/material.dart';
import 'result_page.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  bool _isMale = true;
  Map<String, bool> _languages = {
    'Dart': false,
    'Java': false,
    'Python': false,
  };

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

  void _submitForm() {
    final selectedLanguages = _languages.entries
        .where((entry) => entry.value)
        .map((entry) => entry.key)
        .toList();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(
          firstName: _firstNameController.text,
          lastName: _lastNameController.text,
          isMale: _isMale,
          languages: selectedLanguages,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Formulaire')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _firstNameController,
              decoration: const InputDecoration(labelText: 'Prénom'),
            ),
            TextField(
              controller: _lastNameController,
              decoration: const InputDecoration(labelText: 'Nom'),
            ),
            SwitchListTile(
              title: const Text('Sexe masculin'),
              value: _isMale,
              onChanged: (val) => setState(() => _isMale = val),
            ),
            const SizedBox(height: 10),
            const Text(
              'Langages',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ..._languages.keys.map((lang) {
              return CheckboxListTile(
                title: Text(lang),
                value: _languages[lang],
                onChanged: (val) {
                  setState(() => _languages[lang] = val ?? false);
                  _submitForm(); // Optional: automatically submit when a language is selected
                },
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
