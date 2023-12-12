import 'package:hive/hive.dart';

import '../../domain/entidades/Calendario.dart';

class CalendarioAdapter extends TypeAdapter<Calendario> {
  @override
  int get typeId => 0;

  @override
  Calendario read(BinaryReader reader) {
    return Calendario(dia: reader.read(), horaInicio: reader.read(), horaFim: reader.read(), homenagemSanto: reader.read(), obrigacao: reader.read());
  }

  @override
  void write(BinaryWriter writer, Calendario obj) {
    writer.write(obj.dia);
    writer.write(obj.horaInicio);
    writer.write(obj.horaFim);
    writer.write(obj.homenagemSanto);
    writer.write(obj.obrigacao);
  }
}
