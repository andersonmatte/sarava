import 'dart:convert';

import 'package:hive/hive.dart';

Casa casaFromJson(String str) => Casa.fromJson(json.decode(str));

String casaToJson(Casa data) => json.encode(data.toJson());

@HiveType(typeId: 2)
class Casa extends HiveObject {
  @HiveField(0)
  late int matricula;

  @HiveField(1)
  late String nomeCasa;

  @HiveField(2)
  late String endereco;

  @HiveField(3)
  late String cep;

  @HiveField(4)
  late DateTime dataFundacao;

  @HiveField(5)
  late int filial;

  @HiveField(6)
  late String orixaRegente;

  @HiveField(7)
  late String cabocloRegente;

  @HiveField(8)
  late String exuRegente;

  @HiveField(9)
  late List<Casa> filiais;

  Casa({
    required this.matricula,
    required this.nomeCasa,
    required this.endereco,
    required this.cep,
    required this.dataFundacao,
    required this.filial,
    required this.orixaRegente,
    required this.cabocloRegente,
    required this.exuRegente,
    required this.filiais,
  });

  factory Casa.fromJson(Map<String, dynamic> json) => Casa(
        matricula: json['matricula'],
        nomeCasa: json['nomeCasa'],
        endereco: json['endereco'],
        cep: json['cep'],
        dataFundacao: DateTime.parse(json['dataFundacao']),
        filial: json.containsKey('filial') && json['filial'] is bool ? json['filial'] : false,
        orixaRegente: json['orixaRegente'],
        cabocloRegente: json['cabocloRegente'],
        exuRegente: json['exuRegente'],
        filiais: List<Casa>.from(json["filiais"].map((x) => Casa.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'matricula': matricula,
        'nomeCasa': nomeCasa,
        'endereco': endereco,
        'cep': cep,
        'dataFundacao': dataFundacao.toIso8601String(),
        'filial': filial,
        'orixaRegente': orixaRegente,
        'cabocloRegente': cabocloRegente,
        'exuRegente': exuRegente,
        "filiais": List<dynamic>.from(filiais.map((x) => x.toJson())),
      };
}
