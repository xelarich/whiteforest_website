import 'package:emailjs/emailjs.dart' as emailjs;
import 'package:emailjs/emailjs.dart';
import 'package:get_it/get_it.dart';
import 'package:whiteforest_website/service/conf_service.dart';

class ContactService {
  final confService = GetIt.I.get<ConfService>();

  Future<emailjs.EmailJSResponseStatus> sendMail(
    String name,
    String mail,
    String message,
  ) async {
    {
      emailjs.Options options = Options(
        publicKey: confService.config.publicKey,
        privateKey: confService.config.privateKey,
      );
      Map<String, dynamic> templateParams = {
        'from_name': name,
        'from_mail': mail,
        'reply_to': mail,
        'message': message,
      };
      return emailjs.send(confService.config.serviceId,
          confService.config.templateId, templateParams, options);
    }
  }
}
