import 'package:hive/hive.dart';

import '../../domain/entidades/Servico.dart';

class ServicoAdapter extends TypeAdapter<Servico> {
  @override
  int get typeId => 14;

  @override
  Servico read(BinaryReader reader) {
    return Servico(nomeServico: reader.read(), detalhes: reader.read(), finalidadeServico: reader.read(), orientacoes: reader.read());
  }

  @override
  void write(BinaryWriter writer, Servico obj) {
    writer.write(obj.nomeServico);
    writer.write(obj.detalhes);
    writer.write(obj.finalidadeServico);
    writer.write(obj.orientacoes);
  }
}
