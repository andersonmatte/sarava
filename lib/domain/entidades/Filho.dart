import 'dart:convert';

Filho filhoFromJson(String str) => Filho.fromJson(json.decode(str));

String filhoToJson(Filho data) => json.encode(data.toJson());

class Filho {
  late int matricula;

  late String nomeIniciado;

  late DateTime dataVinculacaoCasa;

  Filho({
    required this.matricula,
    required this.nomeIniciado,
    required this.dataVinculacaoCasa,
  });

  factory Filho.fromJson(Map<String, dynamic> json) => Filho(
        matricula: json['matricula'],
        nomeIniciado: json['nomeIniciado'],
        dataVinculacaoCasa: DateTime.parse(json['dataVinculacaoCasa']),
      );

  Map<String, dynamic> toJson() => {
        'matricula': matricula,
        'nomeIniciado': nomeIniciado,
        'dataVinculacaoCasa': dataVinculacaoCasa.toIso8601String(),
      };
}
