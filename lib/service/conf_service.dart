import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:whiteforest_website/data/models/config.dart';

class ConfService {
  final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
  late Config config;

  void init() async {
    await dotenv.load(fileName: '.env');
    if (dotenv.env['ENV'] == 'development') {
      config = await loadLocalConfig();
    } else {
      config = loadFirebaseConfig();
    }
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
