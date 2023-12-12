import 'dart:convert';

import 'package:hive/hive.dart';

import 'Endereco.dart';
import 'Favorito.dart';

Pessoa pessoaFromJson(String str) => Pessoa.fromJson(json.decode(str));

String pessoaToJson(Pessoa data) => json.encode(data.toJson());

@HiveType(typeId: 7)
class Pessoa extends HiveObject {
  @HiveField(0)
  late String login;

  @HiveField(1)
  late String senha;

  @HiveField(2)
  late String nome;

  @HiveField(3)
  late DateTime dataNascimento;

  @HiveField(4)
  late String horarioNasc;

  @HiveField(5)
  late String idade;

  @HiveField(6)
  late String genero;

  @HiveField(7)
  late String naturalidade;

  @HiveField(8)
  late String nacionalidade;

  @HiveField(9)
  late String cpf;

  @HiveField(10)
  late List<String> contatoTelefonico;

  @HiveField(11)
  late List<String> email;

  @HiveField(12)
  late List<Favorito> favoritos;

  @HiveField(13)
  late int obrigacao;

  @HiveField(14)
  late DateTime dataObrigacao;

  @HiveField(15)
  late Endereco endereco;

  @HiveField(16)
  late int isTamboreiro;

  Pessoa({
    required this.login,
    required this.senha,
    required this.nome,
    required this.dataNascimento,
    required this.horarioNasc,
    required this.idade,
    required this.genero,
    required this.naturalidade,
    required this.nacionalidade,
    required this.cpf,
    required this.contatoTelefonico,
    required this.email,
    required this.favoritos,
    required this.obrigacao,
    required this.dataObrigacao,
    required this.endereco,
    required this.isTamboreiro,
  });

  factory Pessoa.fromJson(Map<String, dynamic> json) => Pessoa(
        login: json['login'],
        senha: json['senha'],
        nome: json['nome'],
        dataNascimento: DateTime.parse(json['dataNascimento']),
        horarioNasc: json['horarioNasc'],
        idade: json['idade'],
        genero: json['genero'],
        naturalidade: json['naturalidade'],
        nacionalidade: json['nacionalidade'],
        cpf: json['CPF'],
        contatoTelefonico: List<String>.from(json['contatoTelefonico']),
        email: List<String>.from(json['e-mail']),
        favoritos: List<Favorito>.from(json['favorito'].map((x) => Favorito.fromJson(x))),
    obrigacao: json.containsKey('obrigacao') && json['obrigacao'] is bool ? json['obrigacao'] : false,
        dataObrigacao: DateTime.parse(json['dataObrigacao']),
        endereco: Endereco.fromJson(json['endereco']),
    isTamboreiro: json.containsKey('isTamboreiro') && json['isTamboreiro'] is bool ? json['isTamboreiro'] : false,
      );

  Map<String, dynamic> toJson() => {
        'login': login,
        'senha': senha,
        'nome': nome,
        'dataNascimento': dataNascimento.toIso8601String(),
        'horarioNasc': horarioNasc,
        'idade': idade,
        'genero': genero,
        'naturalidade': naturalidade,
        'nacionalidade': nacionalidade,
        'CPF': cpf,
        'contatoTelefonico': List<dynamic>.from(contatoTelefonico.map((x) => x)),
        'e-mail': List<dynamic>.from(email.map((x) => x)),
        'favoritos': List<dynamic>.from(favoritos.map((x) => x.toJson())),
        'obrigacao': obrigacao,
        'dataObrigacao': dataObrigacao.toIso8601String(),
        'endereco': endereco.toJson(),
        'isTamboreiro': isTamboreiro,
      };
}
