import 'package:json_annotation/json_annotation.dart';

part 'config.g.dart';

@JsonSerializable()
class Config {
  String publicKey;
  String privateKey;
  String serviceId;
  String templateId;

  Config({
    this.publicKey = '',
    this.privateKey = '',
    this.serviceId = '',
    this.templateId = '',
  });

  @override
  String toString() {
    return 'Config{publicKey: $publicKey, privateKey: $privateKey, serviceId: $serviceId, templateId: $templateId}';
  }

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigToJson(this);
}
