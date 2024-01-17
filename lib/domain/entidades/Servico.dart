import 'dart:convert';

Servico servicoFromJson(String str) => Servico.fromJson(json.decode(str));

String servicoToJson(Servico data) => json.encode(data.toJson());

class Servico {
  late String nomeServico;

  late String detalhes;

  late String finalidadeServico;

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
