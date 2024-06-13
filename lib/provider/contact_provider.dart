import 'package:emailjs/emailjs.dart';
import 'package:get_it/get_it.dart';
import 'package:whiteforest_website/service/conf_service.dart';
import 'package:whiteforest_website/service/contact_service.dart';

class ContactProvider {
  final ConfService _confService = GetIt.I.get<ConfService>();
  final ContactService _contactService = GetIt.I.get<ContactService>();

  Future<void> sendMail(
    String name,
    String mail,
    String message,
    Function() onSuccess,
    Function(Exception error) onFailure,
  ) async {
    final config = _confService.loadFirebaseConfig();
    await _contactService
        .sendMail(
            name,
            mail,
            message,
        'service_knj7ebb',
        'template_yvvbo5t',
            Options(
              publicKey: 'r1ebTYygl4PIUJ9Ro',
              privateKey: 'zHiAHh6-ncSFoHezGpEs',
            ))
        .then((value) {
      onSuccess();
    }).onError((error, stackTrace) {
      onFailure(error as Exception);
    });
  }
}
