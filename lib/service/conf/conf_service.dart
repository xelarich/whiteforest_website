import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:whiteforest_website/data/models/config.dart';

class ConfService {
  Future<String> getPublicKey() async {
    final Config config = await loadLocalConfig();
    return config.publicKey;
  }

  Future<String> getPrivateKey() async {
    final Config config = await loadLocalConfig();
    return config.privateKey;
  }

  Future<String> getServiceId() async {
    final Config config = await loadLocalConfig();
    return config.serviceId;
  }

  Future<String> getTemplateId() async {
    final Config config = await loadLocalConfig();
    return config.templateId;
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
}
