import 'dart:convert';

import 'package:hive/hive.dart';

Calendario calendarioFromJson(String str) => Calendario.fromJson(json.decode(str));

String calendarioToJson(Calendario data) => json.encode(data.toJson());

@HiveType(typeId: 4)
class Calendario extends HiveObject {
  @HiveField(0)
  late DateTime dia;

  @HiveField(1)
  late double horaInicio;

  @HiveField(2)
  late double horaFim;

  @HiveField(3)
  late String homenagemSanto;

  @HiveField(4)
  late String obrigacao;

  Calendario({
    required this.dia,
    required this.horaInicio,
    required this.horaFim,
    required this.homenagemSanto,
    required this.obrigacao,
  });

  factory Calendario.fromJson(Map<String, dynamic> json) => Calendario(
        dia: DateTime.parse(json['dia']),
        horaInicio: json['hora_inicio'],
        horaFim: json['hora_fim'],
        homenagemSanto: json['homenagem_santo'],
        obrigacao: json['obrigacao'],
      );

  Map<String, dynamic> toJson() => {
        'dia': dia.toIso8601String(),
        'hora_inicio': horaInicio,
        'hora_fim': horaFim,
        'homenagem_santo': homenagemSanto,
        'obrigacao': obrigacao,
      };
}
