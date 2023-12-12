import 'dart:convert';

import 'package:hive/hive.dart';

Filho filhoFromJson(String str) => Filho.fromJson(json.decode(str));

String filhoToJson(Filho data) => json.encode(data.toJson());

@HiveType(typeId: 1)
class Filho extends HiveObject {
  @HiveField(0)
  late int matricula;

  @HiveField(1)
  late String nomeIniciado;

  @HiveField(2)
  late DateTime dataVinculacaoCasa;

  Filho({
    required this.matricula,
    required this.nomeIniciado,
    required this.dataVinculacaoCasa,
  });

  factory Filho.fromJson(Map<String, dynamic> json) => Filho(
        matricula: json['matricula'],
        nomeIniciado: json['nomeIniciado'],
        dataVinculacaoCasa: DateTime.parse(json['dataVinculacaoCasa']),
      );

  Map<String, dynamic> toJson() => {
        'matricula': matricula,
        'nomeIniciado': nomeIniciado,
        'dataVinculacaoCasa': dataVinculacaoCasa.toIso8601String(),
      };
}
