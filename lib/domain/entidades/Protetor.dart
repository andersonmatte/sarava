import 'dart:convert';

import 'package:hive/hive.dart';

Protetor protetorFromJson(String str) => Protetor.fromJson(json.decode(str));

String protetorToJson(Protetor data) => json.encode(data.toJson());

@HiveType(typeId: 3)
class Protetor extends HiveObject {
  @HiveField(0)
  late String orixa;

  @HiveField(1)
  late int lode;

  @HiveField(2)
  late String caboclo;

  @HiveField(3)
  late String exu;

  @HiveField(4)
  late String exuFechamento;

  @HiveField(5)
  late String pretoVelho;

  @HiveField(6)
  late String cosme;

  @HiveField(7)
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
    lode: json.containsKey('lode') && json['lode'] is bool ? json['lode'] : false,
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
