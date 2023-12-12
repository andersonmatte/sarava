import 'package:hive/hive.dart';

import '../../domain/entidades/Horario.dart';

class HorarioAdapter extends TypeAdapter<Horario> {
  @override
  int get typeId => 9;

  @override
  Horario read(BinaryReader reader) {
    return Horario(dia: reader.read(), horaInicio: reader.read(), horaFim: reader.read(), agendado: reader.read());
  }

  @override
  void write(BinaryWriter writer, Horario obj) {
    writer.write(obj.dia);
    writer.write(obj.horaInicio);
    writer.write(obj.horaFim);
    writer.write(obj.agendado);
  }
}
