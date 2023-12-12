import 'dart:convert';
import 'dart:core';

import 'package:hive/hive.dart';

import 'Calendario.dart';
import 'Casa.dart';
import 'Filho.dart';
import 'Pessoa.dart';
import 'Protetor.dart';

Sacerdote sacerdoteFromJson(String str) => Sacerdote.fromJson(json.decode(str));

String sacerdoteToJson(Sacerdote data) => json.encode(data.toJson());

@HiveType(typeId: 0)
class Sacerdote extends HiveObject {
  Sacerdote({
    required this.dataVinculacaoCasa,
    required this.dataApronte,
    required this.dataCriacaoCasa,
    required this.nomeCasaDeSanto,
    required this.quemAprontou,
    required this.qualBacia,
    required this.qualNacao,
    required this.casaAberta,
    required this.protetores,
    required this.calendario,
    required this.casaDeSanto,
    required this.filhoDeSanto,
    required this.pessoa,
  });

  @HiveField(0)
  late DateTime dataVinculacaoCasa;
  @HiveField(1)
  late DateTime dataApronte;
  @HiveField(2)
  late DateTime dataCriacaoCasa;
  @HiveField(3)
  late String nomeCasaDeSanto;
  @HiveField(4)
  late String quemAprontou;
  @HiveField(5)
  late String qualBacia;
  @HiveField(6)
  late String qualNacao;
  @HiveField(7)
  late int casaAberta;
  @HiveField(8)
  late List<Protetor> protetores;
  @HiveField(9)
  late List<Calendario> calendario;
  @HiveField(10)
  late List<Casa> casaDeSanto;
  @HiveField(11)
  late List<Filho> filhoDeSanto;
  @HiveField(12)
  late Pessoa pessoa;

  factory Sacerdote.fromJson(Map<String, dynamic> json) => Sacerdote(
        dataVinculacaoCasa: DateTime.parse(json["dataVinculacaoCasa"]),
        dataApronte: DateTime.parse(json["dataApronte"]),
        dataCriacaoCasa: DateTime.parse(json["dataCriacaoCasa"]),
        nomeCasaDeSanto: json["nomeCasaDeSanto"],
        quemAprontou: json["quemAprontou"],
        qualBacia: json["qualBacia"],
        qualNacao: json["qualNacao"],
    casaAberta: json.containsKey('casaAberta') && json['casaAberta'] is bool ? json['casaAberta'] : false,
    protetores: List<Protetor>.from(json["protetores"].map((x) => Protetor.fromJson(x))),
        calendario: List<Calendario>.from(json["calendario"].map((x) => Calendario.fromJson(x))),
        casaDeSanto: List<Casa>.from(json["casaDeSanto"].map((x) => Casa.fromJson(x))),
        filhoDeSanto: List<Filho>.from(json["filhoDeSanto"].map((x) => Filho.fromJson(x))),
        pessoa: Pessoa.fromJson(json['representante']),
      );

  Map<String, dynamic> toJson() => {
        "dataVinculacaoCasa": dataVinculacaoCasa.toIso8601String(),
        "dataApronte": dataApronte.toIso8601String(),
        "dataCriacaoCasa": dataCriacaoCasa.toIso8601String(),
        "nomeCasaDeSanto": nomeCasaDeSanto,
        "quemAprontou": quemAprontou,
        "qualBacia": qualBacia,
        "qualNacao": qualNacao,
        "casaAberta": casaAberta,
        "protetores": List<dynamic>.from(protetores.map((x) => x.toJson())),
        "calendario": List<dynamic>.from(calendario.map((x) => x.toJson())),
        "casaDeSanto": List<dynamic>.from(casaDeSanto.map((x) => x.toJson())),
        "filhoDeSanto": List<dynamic>.from(filhoDeSanto.map((x) => x.toJson())),
        "pessoa": pessoa,
      };
}
