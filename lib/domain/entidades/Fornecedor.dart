import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:sarava/domain/entidades/Pessoa.dart';

import 'Cliente.dart';
import 'Endereco.dart';

Fornecedor fornecedorFromJson(String str) => Fornecedor.fromJson(json.decode(str));

String fornecedorToJson(Fornecedor data) => json.encode(data.toJson());

@HiveType(typeId: 9)
class Fornecedor extends HiveObject {
  @HiveField(0)
  late String cnpj;

  @HiveField(1)
  late List<String> contatoTelefonico;

  @HiveField(2)
  late List<String> email;

  @HiveField(3)
  late DateTime fundacao;

  @HiveField(4)
  late int idProduto;

  @HiveField(5)
  late String produto;

  @HiveField(6)
  late double valorItem;

  @HiveField(7)
  late int pedido;

  @HiveField(8)
  late Cliente cliente;

  @HiveField(9)
  late Endereco endereco;

  @HiveField(10)
  late String razaoSocial;

  @HiveField(11)
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
        'contatoTelefonico': List<dynamic>.from(contatoTelefonico.map((x) => x)),
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
