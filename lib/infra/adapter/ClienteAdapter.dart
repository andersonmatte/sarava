import 'package:hive/hive.dart';

import '../../domain/entidades/Cliente.dart';

class ClienteAdapter extends TypeAdapter<Cliente> {
  @override
  int get typeId => 2;

  @override
  Cliente read(BinaryReader reader) {
    return Cliente(
        numeroVinculo: reader.read(),
        dataVinculacaoCasa: reader.read(),
        casaVinculada: reader.read(),
        pesquisarCasas: reader.read(),
        acessoAgenda: reader.read());
  }

  @override
  void write(BinaryWriter writer, Cliente obj) {
    writer.write(obj.numeroVinculo);
    writer.write(obj.dataVinculacaoCasa);
    writer.write(obj.casaVinculada);
    writer.write(obj.pesquisarCasas);
    writer.write(obj.acessoAgenda);
  }
}
