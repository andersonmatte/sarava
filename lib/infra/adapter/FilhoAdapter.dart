import 'package:hive/hive.dart';

import '../../domain/entidades/Filho.dart';

class FilhoAdapter extends TypeAdapter<Filho> {
  @override
  int get typeId => 7;

  @override
  Filho read(BinaryReader reader) {
    return Filho(matricula: reader.read(), nomeIniciado: reader.read(), dataVinculacaoCasa: reader.read());
  }

  @override
  void write(BinaryWriter writer, Filho obj) {
    writer.write(obj.matricula);
    writer.write(obj.nomeIniciado);
    writer.write(obj.dataVinculacaoCasa);
  }
}
