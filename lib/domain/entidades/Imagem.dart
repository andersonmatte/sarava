import 'dart:convert';

Imagem imagemFromJson(String str) => Imagem.fromJson(json.decode(str));

String imagemToJson(Imagem data) => json.encode(data.toJson());

class Imagem {
  late String imagem;

  late int id;

  Imagem({
    required this.imagem,
    required this.id,
  });

  factory Imagem.fromJson(Map<String, dynamic> json) => Imagem(
        imagem: json['imagem'],
        id: json['id'],
      );

  Map<String, dynamic> toJson() => {
        'imagem': imagem,
        'id': id,
      };
}
