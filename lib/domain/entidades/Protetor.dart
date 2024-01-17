import 'dart:convert';

Protetor protetorFromJson(String str) => Protetor.fromJson(json.decode(str));

String protetorToJson(Protetor data) => json.encode(data.toJson());

class Protetor {
  late String orixa;

  late int lode;

  late String caboclo;

  late String exu;

  late String exuFechamento;

  late String pretoVelho;

  late String cosme;

  late String tronqueira;

  Protetor({
    required this.orixa,
    required this.lode,
    required this.caboclo,
    required this.exu,
    required this.exuFechamento,
    required this.pretoVelho,
    required this.cosme,
    required this.tronqueira,
  });

  factory Protetor.fromJson(Map<String, dynamic> json) => Protetor(
        orixa: json['orixa'],
        lode: json.containsKey('lode') && json['lode'] is bool
            ? json['lode']
            : false,
        caboclo: json['caboclo'],
        exu: json['exu'],
        exuFechamento: json['exuFechamento'],
        pretoVelho: json['pretoVelho'],
        cosme: json['cosme'],
        tronqueira: json['tronqueira'],
      );

  Map<String, dynamic> toJson() => {
        'orixa': orixa,
        'lode': lode,
        'caboclo': caboclo,
        'exu': exu,
        'exuFechamento': exuFechamento,
        'pretoVelho': pretoVelho,
        'cosme': cosme,
        'tronqueira': tronqueira,
      };
}
