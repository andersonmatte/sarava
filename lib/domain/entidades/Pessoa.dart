import 'dart:convert';

import 'Endereco.dart';
import 'Favorito.dart';

Pessoa pessoaFromJson(String str) => Pessoa.fromJson(json.decode(str));

String pessoaToJson(Pessoa data) => json.encode(data.toJson());

class Pessoa {
  late String login;

  late String senha;

  late String nome;

  late DateTime dataNascimento;

  late String horarioNasc;

  late String idade;

  late String genero;

  late String naturalidade;

  late String nacionalidade;

  late String cpf;

  late List<String> contatoTelefonico;

  late List<String> email;

  late List<Favorito> favoritos;

  late int obrigacao;

  late DateTime dataObrigacao;

  late Endereco endereco;

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
        favoritos: List<Favorito>.from(
            json['favorito'].map((x) => Favorito.fromJson(x))),
        obrigacao: json.containsKey('obrigacao') && json['obrigacao'] is bool
            ? json['obrigacao']
            : false,
        dataObrigacao: DateTime.parse(json['dataObrigacao']),
        endereco: Endereco.fromJson(json['endereco']),
        isTamboreiro:
            json.containsKey('isTamboreiro') && json['isTamboreiro'] is bool
                ? json['isTamboreiro']
                : false,
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
        'contatoTelefonico':
            List<dynamic>.from(contatoTelefonico.map((x) => x)),
        'e-mail': List<dynamic>.from(email.map((x) => x)),
        'favoritos': List<dynamic>.from(favoritos.map((x) => x.toJson())),
        'obrigacao': obrigacao,
        'dataObrigacao': dataObrigacao.toIso8601String(),
        'endereco': endereco.toJson(),
        'isTamboreiro': isTamboreiro,
      };
}
