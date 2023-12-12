import 'dart:convert';

import 'package:hive/hive.dart';

import 'Horario.dart';

Consulta consultaFromJson(String str) => Consulta.fromJson(json.decode(str));

String consultaToJson(Consulta data) => json.encode(data.toJson());

@HiveType(typeId: 13)
class Consulta extends HiveObject {
  @HiveField(0)
  late Horario horario;

  @HiveField(1)
  late String servico;

  @HiveField(2)
  late int retorno;

  @HiveField(3)
  late DateTime dataRetorno;

  Consulta({
    required this.horario,
    required this.servico,
    required this.retorno,
    required this.dataRetorno,
  });

  factory Consulta.fromJson(Map<String, dynamic> json) => Consulta(
        horario: Horario.fromJson(json['horario']),
        servico: json['servico'],
        retorno: json['retorno'] ?? false,
        dataRetorno: DateTime.parse(json['data_retorno']),
      );

  Map<String, dynamic> toJson() => {
        'horario': horario.toJson(),
        'servico': servico,
        'retorno': retorno,
        'data_retorno': dataRetorno.toIso8601String(),
      };
}
