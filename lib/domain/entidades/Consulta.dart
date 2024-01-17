import 'dart:convert';

import 'Horario.dart';

Consulta consultaFromJson(String str) => Consulta.fromJson(json.decode(str));

String consultaToJson(Consulta data) => json.encode(data.toJson());

class Consulta {
  late Horario horario;

  late String servico;

  late int retorno;

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
