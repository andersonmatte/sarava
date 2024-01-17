import 'dart:convert';

import 'Casa.dart';
import 'Fornecedor.dart';
import 'Pessoa.dart';

Favorito favoritoFromJson(String str) => Favorito.fromJson(json.decode(str));

String favoritoToJson(Favorito data) => json.encode(data.toJson());

class Favorito {
  late Pessoa pessoa;

  late Casa casa;

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
