import 'dart:convert';

import 'package:hive/hive.dart';

Endereco enderecoFromJson(String str) => Endereco.fromJson(json.decode(str));

String enderecoToJson(Endereco data) => json.encode(data.toJson());

@HiveType(typeId: 6)
class Endereco extends HiveObject {
  @HiveField(0)
  late String logradouro;

  @HiveField(1)
  late String numeroEndereco;

  @HiveField(2)
  late String complemento;

  @HiveField(3)
  late String bairro;

  @HiveField(4)
  late String cep;

  @HiveField(5)
  late String cidade;

  @HiveField(6)
  late String estado;

  Endereco({
    required this.logradouro,
    required this.numeroEndereco,
    required this.complemento,
    required this.bairro,
    required this.cep,
    required this.cidade,
    required this.estado,
  });

  factory Endereco.fromJson(Map<String, dynamic> json) => Endereco(
        logradouro: json['logradouro'],
        numeroEndereco: json['numeroEndereco'],
        complemento: json['complemento'],
        bairro: json['bairro'],
        cep: json['cep'],
        cidade: json['cidade'],
        estado: json['estado'],
      );

  Map<String, dynamic> toJson() => {
        'logradouro': logradouro,
        'numeroEndereco': numeroEndereco,
        'complemento': complemento,
        'bairro': bairro,
        'cep': cep,
        'cidade': cidade,
        'estado': estado,
      };
}
