import 'package:hive/hive.dart';

import '../../domain/entidades/Protetor.dart';

class ProtetorAdapter extends TypeAdapter<Protetor> {
  @override
  int get typeId => 12;

  @override
  Protetor read(BinaryReader reader) {
    return Protetor(
        orixa: reader.read(),
        lode: reader.read(),
        caboclo: reader.read(),
        exu: reader.read(),
        exuFechamento: reader.read(),
        pretoVelho: reader.read(),
        cosme: reader.read(),
        tronqueira: reader.read());
  }

  @override
  void write(BinaryWriter writer, Protetor obj) {
    writer.write(obj.orixa);
    writer.write(obj.lode);
    writer.write(obj.caboclo);
    writer.write(obj.exu);
    writer.write(obj.exuFechamento);
    writer.write(obj.pretoVelho);
    writer.write(obj.cosme);
    writer.write(obj.tronqueira);
  }
}
