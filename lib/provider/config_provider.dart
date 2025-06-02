import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:whiteforest_website/data/models/config.dart';
import 'package:whiteforest_website/service/conf_service.dart';

class ConfigProvider extends ChangeNotifier {
  Config? _config;

  bool loadingState = false;

  Config? get config => _config;

  void setConfig(Config config) {
    GetIt.I.get<ConfService>().setConfig(config);
    _config = config;
    notifyListeners();
  }

  void loadConfig() {
    updateState(true);
    final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance
      ..setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 10),
          minimumFetchInterval: const Duration(hours: 1),
        ),
      )
      ..fetchAndActivate();

    try {
      remoteConfig.getAll();
      print('Remote config fetched successfully');
      setConfig(
        Config(
          publicKey: remoteConfig.getString('public_key'),
          privateKey: remoteConfig.getString('private_key'),
          serviceId: remoteConfig.getString('service_id'),
          templateId: remoteConfig.getString('template_id'),
        ),
      );
    } catch (e) {
      print('Error fetching remote config: $e');
    } finally {
      updateState(false);
    }
  }

  void updateState(bool loading) {
    loadingState = loading;
    notifyListeners();
  }
}
