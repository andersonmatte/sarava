import 'dart:convert';

import 'package:hive/hive.dart';

Imagem imagemFromJson(String str) => Imagem.fromJson(json.decode(str));

String imagemToJson(Imagem data) => json.encode(data.toJson());

@HiveType(typeId: 10)
class Imagem extends HiveObject {
  @HiveField(0)
  late String imagem;

  @HiveField(1)
  late int id;

  Imagem({
    required this.imagem,
    required this.id,
  });

  factory Imagem.fromJson(Map<String, dynamic> json) => Imagem(
        imagem: json['imagem'],
        id: json['id'],
      );

  Map<String, dynamic> toJson() => {
        'imagem': imagem,
        'id': id,
      };
}
