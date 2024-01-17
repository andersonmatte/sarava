import 'dart:convert';

Cliente clienteFromJson(String str) => Cliente.fromJson(json.decode(str));

String clienteToJson(Cliente data) => json.encode(data.toJson());

class Cliente {
  late int numeroVinculo;

  late DateTime dataVinculacaoCasa;

  late String casaVinculada;

  late String pesquisarCasas;

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
