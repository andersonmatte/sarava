import 'package:hive/hive.dart';

import '../../domain/entidades/Consulta.dart';

class ConsultaAdapter extends TypeAdapter<Consulta> {
  @override
  int get typeId => 3;

  @override
  Consulta read(BinaryReader reader) {
    return Consulta(horario: reader.read(), servico: reader.read(), retorno: reader.read(), dataRetorno: reader.read());
  }

  @override
  void write(BinaryWriter writer, Consulta obj) {
    writer.write(obj.horario);
    writer.write(obj.servico);
    writer.write(obj.retorno);
    writer.write(obj.dataRetorno);
  }
}
