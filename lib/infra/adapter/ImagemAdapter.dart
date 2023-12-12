import 'package:hive/hive.dart';

import '../../domain/entidades/Imagem.dart';

class ImagemAdapter extends TypeAdapter<Imagem> {
  @override
  int get typeId => 10;

  @override
  Imagem read(BinaryReader reader) {
    return Imagem(imagem: reader.read(), id: reader.read());
  }

  @override
  void write(BinaryWriter writer, Imagem obj) {
    writer.write(obj.imagem);
    writer.write(obj.id);
  }
}
