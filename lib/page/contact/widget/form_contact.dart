import 'package:emailjs/emailjs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:whiteforest_website/data/models/config.dart';
import 'package:whiteforest_website/page/contact/widget/text_form_field_contact.dart';
import 'package:whiteforest_website/service/conf/conf_service.dart';
import 'package:whiteforest_website/shared/utils/extension.dart';

class FormContact extends StatefulWidget {
  const FormContact({super.key});

  @override
  State<FormContact> createState() => _FormContactState();
}

class _FormContactState extends State<FormContact> {
  final ConfService confService = GetIt.I.get<ConfService>();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormFieldContact(_nameController, 'Entrez votre nom', 'Nom',
                (value) {
              if (value == null || value.isEmpty) {
                return 'Veuillez entrer votre nom';
              }
              return null;
            }),
            TextFormFieldContact(_mailController, 'Entrez votre mail', 'Mail',
                (value) {
              if (value == null || !value.isValidEmail()) {
                return 'Veuillez entrer votre mail';
              }
              return null;
            }),
            //DropdownTextFieldContact(),
            SizedBox(
              height: 200,
              child: TextFormFieldContact(
                _messageController,
                'Écrivez ici votre message',
                'Message',
                (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un message';
                  }
                  return null;
                },
                maxLines: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                ),
                onPressed: () async {
                  final String service = dotenv.env['SERVICE_ID'] ?? '';
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Service = ${service}'),
                    ),
                  );
                  /*if (_formKey.currentState!.validate()) {
                    sendEmail(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Envoi du message')),
                    );
                  }*/
                },
                child: const Text(
                  'Envoyer',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  sendEmail(BuildContext context) async {
    Map<String, dynamic> templateParams = {
      'from_name': _nameController.text,
      'from_mail': _mailController.text,
      'reply_to': _mailController.text,
      'message': _messageController.text,
    };

    try {
      await EmailJS.send(
        await confService.getServiceId(),
        await confService.getTemplateId(),
        templateParams,
        Options(
          publicKey: await confService.getPublicKey(),
          privateKey: await confService.getPrivateKey(),
        ),
      );
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Message envoyé avec succès !')),
      );
    } catch (error) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Erreur lors de l\'envoi du message !')));
      print(error.toString());
    }
  }
}
