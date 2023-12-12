import 'dart:convert';

import 'package:hive/hive.dart';

Cliente clienteFromJson(String str) => Cliente.fromJson(json.decode(str));

String clienteToJson(Cliente data) => json.encode(data.toJson());

@HiveType(typeId: 5)
class Cliente extends HiveObject {
  @HiveField(0)
  late int numeroVinculo;

  @HiveField(1)
  late DateTime dataVinculacaoCasa;

  @HiveField(2)
  late String casaVinculada;

  @HiveField(3)
  late String pesquisarCasas;

  @HiveField(4)
  late DateTime acessoAgenda;

  Cliente({
    required this.numeroVinculo,
    required this.dataVinculacaoCasa,
    required this.casaVinculada,
    required this.pesquisarCasas,
    required this.acessoAgenda,
  });

  factory Cliente.fromJson(Map<String, dynamic> json) => Cliente(
        numeroVinculo: json['numeroVinculo'],
        dataVinculacaoCasa: DateTime.parse(json['dataVinculacaoCasa']),
        casaVinculada: json['casaVinculada'],
        pesquisarCasas: json['pesquisarCasas'],
        acessoAgenda: DateTime.parse(json['acessoAgenda']),
      );

  Map<String, dynamic> toJson() => {
        'numeroVinculo': numeroVinculo,
        'dataVinculacaoCasa': dataVinculacaoCasa.toIso8601String(),
        'casaVinculada': casaVinculada,
        'pesquisarCasas': pesquisarCasas,
        'acessoAgenda': acessoAgenda.toIso8601String(),
      };
}
