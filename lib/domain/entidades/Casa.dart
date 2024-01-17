import 'dart:convert';

Casa casaFromJson(String str) => Casa.fromJson(json.decode(str));

String casaToJson(Casa data) => json.encode(data.toJson());

class Casa {
  late int matricula;

  late String nomeCasa;

  late String endereco;

  late String cep;

  late DateTime dataFundacao;

  late int filial;

  late String orixaRegente;

  late String cabocloRegente;

  late String exuRegente;

  late List<Casa> filiais;

  Casa({
    required this.matricula,
    required this.nomeCasa,
    required this.endereco,
    required this.cep,
    required this.dataFundacao,
    required this.filial,
    required this.orixaRegente,
    required this.cabocloRegente,
    required this.exuRegente,
    required this.filiais,
  });

  factory Casa.fromJson(Map<String, dynamic> json) => Casa(
        matricula: json['matricula'],
        nomeCasa: json['nomeCasa'],
        endereco: json['endereco'],
        cep: json['cep'],
        dataFundacao: DateTime.parse(json['dataFundacao']),
        filial: json.containsKey('filial') && json['filial'] is bool
            ? json['filial']
            : false,
        orixaRegente: json['orixaRegente'],
        cabocloRegente: json['cabocloRegente'],
        exuRegente: json['exuRegente'],
        filiais: List<Casa>.from(json["filiais"].map((x) => Casa.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'matricula': matricula,
        'nomeCasa': nomeCasa,
        'endereco': endereco,
        'cep': cep,
        'dataFundacao': dataFundacao.toIso8601String(),
        'filial': filial,
        'orixaRegente': orixaRegente,
        'cabocloRegente': cabocloRegente,
        'exuRegente': exuRegente,
        "filiais": List<dynamic>.from(filiais.map((x) => x.toJson())),
      };
}
