import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:whiteforest_website/page/contact/widget/text_form_field_contact.dart';
import 'package:whiteforest_website/provider/contact_provider.dart';
import 'package:whiteforest_website/shared/utils/extension.dart';

class FormContact extends StatefulWidget {
  const FormContact({super.key});

  @override
  State<FormContact> createState() => _FormContactState();
}

class _FormContactState extends State<FormContact> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _nameController;

  late final TextEditingController _mailController;

  late final TextEditingController _messageController;

  final ContactProvider contactProvider = ContactProvider();

  @override
  void initState() {
    // TODO: implement initState
    _nameController = TextEditingController();
    _mailController = TextEditingController();
    _messageController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ContactProvider>.value(
      value: contactProvider,
      child: Consumer<ContactProvider>(
        builder: (context, provider, child) {
          if (provider.mailSent) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                  child: Text(
                    'Contactez-nous !'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: ResponsiveValue<double>(
                        context,
                        defaultValue: 24,
                        conditionalValues: [
                          const Condition<double>.largerThan(
                            name: MOBILE,
                            value: 38,
                          ),
                        ],
                      ).value,
                      fontFamily: 'WickedGrit',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SvgPicture.asset(
                  'assets/icons/mail_sent.svg',
                  height: ResponsiveValue<double>(
                    context,
                    defaultValue: 100,
                    conditionalValues: [
                      const Condition<double>.largerThan(
                        name: MOBILE,
                        value: 150,
                      ),
                    ],
                  ).value,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                  child: Text(
                    'Message envoyé avec succès !'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: ResponsiveValue<double>(
                        context,
                        defaultValue: 16,
                        conditionalValues: [
                          const Condition<double>.largerThan(
                            name: MOBILE,
                            value: 24,
                          ),
                        ],
                      ).value,
                    ),
                  ),
                ),
              ],
            );
          }
          return Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24,
                    horizontal: 16,
                  ),
                  child: Text(
                    'Contactez-nous !'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: ResponsiveValue<double>(
                        context,
                        defaultValue: 28,
                        conditionalValues: [
                          const Condition<double>.largerThan(
                            name: MOBILE,
                            value: 38,
                          ),
                        ],
                      ).value,
                      fontFamily: 'WickedGrit',
                    ),
                  ),
                ),
                TextFormFieldContact(
                  _nameController,
                  'Entrez votre nom',
                  'Nom',
                  (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre nom';
                    }
                    return null;
                  },
                  maxLines: 1,
                ),
                TextFormFieldContact(
                  _mailController,
                  'Entrez votre mail',
                  'Mail',
                  (value) {
                    if (value == null || !value.isValidEmail()) {
                      return 'Veuillez entrer votre mail';
                    }
                    return null;
                  },
                  maxLines: 1,
                ),
                //DropdownTextFieldContact(),
                Container(
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
                      fixedSize: const Size(150, 50),
                      backgroundColor: Colors.brown,
                      disabledBackgroundColor: Colors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    onPressed: provider.isLoading
                        ? null
                        : () async {
                          print(_nameController.text);
                          print(_mailController.text);
                          print(_messageController.text);
                          

                            if (_formKey.currentState!.validate()) {
                              await contactProvider.sendMail(
                                _nameController.text,
                                _mailController.text,
                                _messageController.text,
                                () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        'Erreur lors de l\'envoi du message !',
                                      ),
                                    ),
                                  );
                                },
                              );
                            }
                          },
                    child: provider.isLoading
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          )
                        : const Text(
                            'Envoyer',
                            style: TextStyle(color: Colors.white),
                          ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
