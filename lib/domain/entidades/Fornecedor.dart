import 'dart:convert';

import 'package:sarava/domain/entidades/Pessoa.dart';

import 'Cliente.dart';
import 'Endereco.dart';

Fornecedor fornecedorFromJson(String str) =>
    Fornecedor.fromJson(json.decode(str));

String fornecedorToJson(Fornecedor data) => json.encode(data.toJson());

class Fornecedor {
  late String cnpj;

  late List<String> contatoTelefonico;

  late List<String> email;

  late DateTime fundacao;

  late int idProduto;

  late String produto;

  late double valorItem;

  late int pedido;

  late Cliente cliente;

  late Endereco endereco;

  late String razaoSocial;

  late Pessoa representante;

  Fornecedor({
    required this.cnpj,
    required this.contatoTelefonico,
    required this.email,
    required this.fundacao,
    required this.idProduto,
    required this.produto,
    required this.valorItem,
    required this.pedido,
    required this.cliente,
    required this.endereco,
    required this.razaoSocial,
    required this.representante,
  });

  factory Fornecedor.fromJson(Map<String, dynamic> json) => Fornecedor(
        cnpj: json['CNPJ'],
        contatoTelefonico: List<String>.from(json['contatoTelefonico']),
        email: List<String>.from(json['e-mail']),
        fundacao: DateTime.parse(json['fundacao']),
        idProduto: json['idProduto'],
        produto: json['produto'],
        valorItem: json['valorItem'],
        pedido: json['pedido'],
        cliente: Cliente.fromJson(json['cliente']),
        endereco: Endereco.fromJson(json['endereco']),
        razaoSocial: json['razaoSocial'],
        representante: Pessoa.fromJson(json['representante']),
      );

  Map<String, dynamic> toJson() => {
        'CNPJ': cnpj,
        'contatoTelefonico':
            List<dynamic>.from(contatoTelefonico.map((x) => x)),
        'e-mail': List<dynamic>.from(email.map((x) => x)),
        'fundacao': fundacao.toIso8601String(),
        'idProduto': idProduto,
        'produto': produto,
        'valorItem': valorItem,
        'pedido': pedido,
        'cliente': cliente.toJson(),
        'endereco': endereco.toJson(),
        'razaoSocial': razaoSocial,
        'representante': representante,
      };
}
