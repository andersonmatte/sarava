import 'dart:convert';

Conversa conversaFromJson(String str) => Conversa.fromJson(json.decode(str));

String conversaToJson(Conversa data) => json.encode(data.toJson());

class Conversa {
  late String dialogos;

  late int id;

  Conversa({
    required this.dialogos,
    required this.id,
  });

  factory Conversa.fromJson(Map<String, dynamic> json) => Conversa(
        dialogos: json['dialogos'],
        id: json['id'],
      );

  Map<String, dynamic> toJson() => {
        'dialogos': dialogos,
        'id': id,
      };
}
