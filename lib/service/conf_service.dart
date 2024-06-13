import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/services.dart';
import 'package:whiteforest_website/data/models/config.dart';

class ConfService {
  final remoteConfig = FirebaseRemoteConfig.instance;

  static const String publicKey = 'public_key';
  static const String privateKey = 'private_key';
  static const String serviceId = 'service_id';
  static const String templateId = 'template_id';

  void init() async {
    remoteConfig.fetchAndActivate();
  }

  Future<Config> getConfig() async {
    final Config config = await loadFirebaseConfig();
    return config;
  }

  Future<Config> loadLocalConfig() async {
    try {
      final String json =
          await rootBundle.loadString('assets/config/config.json');

      return Config.fromJson(jsonDecode(json) as Map<String, dynamic>);
    } catch (e) {
      return Config();
    }
  }

  Config loadFirebaseConfig() {
    return Config(
      publicKey: remoteConfig.getString('public_key'),
      privateKey: remoteConfig.getString('private_key'),
      serviceId: remoteConfig.getString('service_id'),
      templateId: remoteConfig.getString('template_id'),
    );
  }
}
