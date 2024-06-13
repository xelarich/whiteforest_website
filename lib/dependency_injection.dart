import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:get_it/get_it.dart';
import 'package:whiteforest_website/service/conf_service.dart';
import 'package:whiteforest_website/service/contact_service.dart';

GetIt getIt = GetIt.instance;

Function declareServices = () {
  GetIt.I.registerSingleton(FirebaseRemoteConfig.instance)
    ..setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval: const Duration(hours: 1),
    ))
    ..fetchAndActivate();

  GetIt.I.registerSingleton(ConfService()).init();
  GetIt.I.registerSingleton(ContactService());
};
