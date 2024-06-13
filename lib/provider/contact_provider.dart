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
      _confService.config.serviceId,
      _confService.config.templateId,
      Options(
        publicKey: _confService.config.publicKey,
        privateKey: _confService.config.privateKey,
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
  }

  void updateLoadingState({required bool state}) {
    isLoading = state;
    notifyListeners();
  }
}
