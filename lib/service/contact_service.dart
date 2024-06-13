import 'package:emailjs/emailjs.dart';

class ContactService {
  Future<Future<EmailJSResponseStatus>> sendMail(
    String name,
    String mail,
    String message,
    String serviceId,
    String templateId,
    Options options,
  ) async {
    {
      Map<String, dynamic> templateParams = {
        'from_name': name,
        'from_mail': mail,
        'reply_to': mail,
        'message': message,
      };
      return EmailJS.send(serviceId, templateId, templateParams, options);
    }
  }
}
