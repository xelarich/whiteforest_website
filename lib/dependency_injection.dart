import 'package:get_it/get_it.dart';
import 'package:whiteforest_website/service/conf_service.dart';
import 'package:whiteforest_website/service/contact_service.dart';

GetIt getIt = GetIt.instance;

Function declareServices = () {
  GetIt.I.registerSingleton(ConfService());
  GetIt.I.registerSingleton(ContactService());
};
