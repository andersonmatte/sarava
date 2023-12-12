import 'package:hive/hive.dart';

import '../../domain/entidades/Casa.dart';

class CasaAdapter extends TypeAdapter<Casa> {
  @override
  int get typeId => 1;

  @override
  Casa read(BinaryReader reader) {
    return Casa(
        matricula: reader.read(),
        nomeCasa: reader.read(),
        endereco: reader.read(),
        cep: reader.read(),
        dataFundacao: reader.read(),
        filial: reader.read(),
        orixaRegente: reader.read(),
        cabocloRegente: reader.read(),
        exuRegente: reader.read(),
        filiais: reader.read());
  }

  @override
  void write(BinaryWriter writer, Casa obj) {
    writer.write(obj.matricula);
    writer.write(obj.nomeCasa);
    writer.write(obj.endereco);
    writer.write(obj.cep);
    writer.write(obj.dataFundacao);
    writer.write(obj.filial);
    writer.write(obj.orixaRegente);
    writer.write(obj.cabocloRegente);
    writer.write(obj.exuRegente);
    writer.write(obj.filiais);
  }
}
