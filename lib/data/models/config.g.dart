// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Config _$ConfigFromJson(Map<String, dynamic> json) => Config(
      publicKey: json['publicKey'] as String? ?? '',
      privateKey: json['privateKey'] as String? ?? '',
      serviceId: json['serviceId'] as String? ?? '',
      templateId: json['templateId'] as String? ?? '',
    );

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'publicKey': instance.publicKey,
      'privateKey': instance.privateKey,
      'serviceId': instance.serviceId,
      'templateId': instance.templateId,
    };
