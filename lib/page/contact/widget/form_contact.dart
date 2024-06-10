import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:whiteforest_website/page/contact/widget/dropdown_text_field_contact.dart';
import 'package:whiteforest_website/page/contact/widget/text_form_field_contact.dart';

class FormContact extends StatefulWidget {
  const FormContact({super.key});

  @override
  State<FormContact> createState() => _FormContactState();
}

class _FormContactState extends State<FormContact> {
  final List<String> _queries = [
    'Demande de renseignements',
    'Demande de devis',
    'Autre'
  ];
  String? _query;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.7),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormFieldContact('Entrez votre nom', 'Nom', (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer votre nom';
              }
              return null;
            }),
            TextFormFieldContact('Entrez votre mail', 'Mail', (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer votre mail';
              }
              return null;
            }),
            DropdownTextFieldContact(),
            SizedBox(
              height: 200,
              child : TextFormFieldContact('Écrivez ici votre message', 'Message', (value) {
                if (value == null || value.isEmpty) {
                  return 'Veuillez entrer un message';
                }
                return null;
              }, maxLines: 10),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Envoi du message')),
                  );
                }
              },
              child: const Text('Envoyer'),
            ),
          ],
        ),
      ),
    );
  }
}
