import 'dart:convert';

import 'package:hive/hive.dart';

Servico servicoFromJson(String str) => Servico.fromJson(json.decode(str));

String servicoToJson(Servico data) => json.encode(data.toJson());

@HiveType(typeId: 14)
class Servico extends HiveObject {
  @HiveField(0)
  late String nomeServico;

  @HiveField(1)
  late String detalhes;

  @HiveField(2)
  late String finalidadeServico;

  @HiveField(3)
  late String orientacoes;

  Servico({
    required this.nomeServico,
    required this.detalhes,
    required this.finalidadeServico,
    required this.orientacoes,
  });

  factory Servico.fromJson(Map<String, dynamic> json) => Servico(
        nomeServico: json['nome_servico'],
        detalhes: json['detalhes'],
        finalidadeServico: json['finalidade_servico'],
        orientacoes: json['orientacoes'],
      );

  Map<String, dynamic> toJson() => {
        'nome_servico': nomeServico,
        'detalhes': detalhes,
        'finalidade_servico': finalidadeServico,
        'orientacoes': orientacoes,
      };
}
