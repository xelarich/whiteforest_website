import 'package:emailjs/emailjs.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:whiteforest_website/service/conf_service.dart';
import 'package:whiteforest_website/service/contact_service.dart';

class ContactProvider extends ChangeNotifier {
  final ConfService _confService = GetIt.I.get<ConfService>();
  final ContactService _contactService = GetIt.I.get<ContactService>();
  bool isLoading = false;
  bool mailSent = false;

  Future<void> sendMail(
    String name,
    String mail,
    String message,
    Function() onFailure,
  ) async {
    updateLoadingState(state: true);
    await _contactService
        .sendMail(
      name,
      mail,
      message,
      'service_trcy7zq',
      'template_r486v6l',
      Options(
        publicKey: '9g4nW2brfly0sSDOm',
        privateKey: 'deRMn1Hho0fcRxVTgsjNV',
      ),
    )
        .then((value) {
      mailSent = true;
    }).catchError((error, stackTrace) {
      updateLoadingState(state: false);
      if (error is EmailJSResponseStatus) {
        onFailure();
      } else {
        throw error!;
      }
    });
    updateLoadingState(state: false);
  }

  void updateLoadingState({required bool state}) {
    isLoading = state;
    notifyListeners();
  }
}
