import 'package:hive/hive.dart';

import '../../domain/entidades/Favorito.dart';

class FavoritoAdapter extends TypeAdapter<Favorito> {
  @override
  int get typeId => 6;

  @override
  Favorito read(BinaryReader reader) {
    return Favorito(pessoa: reader.read(), casa: reader.read(), fornecedor: reader.read());
  }

  @override
  void write(BinaryWriter writer, Favorito obj) {
    writer.write(obj.pessoa);
    writer.write(obj.casa);
    writer.write(obj.fornecedor);
  }
}
