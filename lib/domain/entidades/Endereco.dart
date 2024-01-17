import 'dart:convert';

Endereco enderecoFromJson(String str) => Endereco.fromJson(json.decode(str));

String enderecoToJson(Endereco data) => json.encode(data.toJson());

class Endereco {
  late String logradouro;

  late String numeroEndereco;

  late String complemento;

  late String bairro;

  late String cep;

  late String cidade;

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
