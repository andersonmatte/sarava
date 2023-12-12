import 'dart:convert';

import 'package:hive/hive.dart';

import 'Casa.dart';
import 'Fornecedor.dart';
import 'Pessoa.dart';

Favorito favoritoFromJson(String str) => Favorito.fromJson(json.decode(str));

String favoritoToJson(Favorito data) => json.encode(data.toJson());

@HiveType(typeId: 8)
class Favorito extends HiveObject {
  @HiveField(0)
  late Pessoa pessoa;

  @HiveField(1)
  late Casa casa;

  @HiveField(2)
  late Fornecedor fornecedor;

  Favorito({
    required this.pessoa,
    required this.casa,
    required this.fornecedor,
  });

  factory Favorito.fromJson(Map<String, dynamic> json) => Favorito(
        pessoa: Pessoa.fromJson(json['pessoa']),
        casa: Casa.fromJson(json['casa']),
        fornecedor: Fornecedor.fromJson(json['fornecedor']),
      );

  Map<String, dynamic> toJson() => {
        'pessoa': pessoa.toJson(),
        'casa': casa.toJson(),
        'fornecedor': fornecedor.toJson(),
      };
}
