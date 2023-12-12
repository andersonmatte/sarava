import 'dart:convert';

import 'package:hive/hive.dart';

Conversa conversaFromJson(String str) => Conversa.fromJson(json.decode(str));

String conversaToJson(Conversa data) => json.encode(data.toJson());

@HiveType(typeId: 11)
class Conversa extends HiveObject {
  @HiveField(0)
  late String dialogos;

  @HiveField(1)
  late int id;

  Conversa({
    required this.dialogos,
    required this.id,
  });

  factory Conversa.fromJson(Map<String, dynamic> json) => Conversa(
        dialogos: json['dialogos'],
        id: json['id'],
      );

  Map<String, dynamic> toJson() => {
        'dialogos': dialogos,
        'id': id,
      };
}
