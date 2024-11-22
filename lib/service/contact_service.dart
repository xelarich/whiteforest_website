import 'package:emailjs/emailjs.dart' as emailjs;

class ContactService {
  Future<emailjs.EmailJSResponseStatus> sendMail(
    String name,
    String mail,
    String message,
    String serviceId,
    String templateId,
    emailjs.Options options,
  ) async {
    {
      Map<String, dynamic> templateParams = {
        'from_name': name,
        'from_mail': mail,
        'reply_to': mail,
        'message': message,
      };
      return emailjs.send(serviceId, templateId, templateParams, options);
    }
  }
}
