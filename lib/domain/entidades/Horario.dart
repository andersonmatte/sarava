import 'dart:convert';

import 'package:hive/hive.dart';

Horario horarioFromJson(String str) => Horario.fromJson(json.decode(str));

String horarioToJson(Horario data) => json.encode(data.toJson());

@HiveType(typeId: 12)
class Horario extends HiveObject {
  @HiveField(0)
  late DateTime dia;

  @HiveField(1)
  late double horaInicio;

  @HiveField(2)
  late double horaFim;

  @HiveField(3)
  late int agendado;

  Horario({
    required this.dia,
    required this.horaInicio,
    required this.horaFim,
    required this.agendado,
  });

  factory Horario.fromJson(Map<String, dynamic> json) => Horario(
        dia: DateTime.parse(json['dia']),
        horaInicio: json['hora_inicio'],
        horaFim: json['hora_fim'],
        agendado: json['agendado']?? false,
      );

  Map<String, dynamic> toJson() => {
        'dia': dia.toIso8601String(),
        'hora_inicio': horaInicio,
        'hora_fim': horaFim,
        'agendado': agendado,
      };
}
