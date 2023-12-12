import 'package:hive/hive.dart';

import '../../domain/entidades/Endereco.dart';

class EnderecoAdapter extends TypeAdapter<Endereco> {
  @override
  int get typeId => 5;

  @override
  Endereco read(BinaryReader reader) {
    return Endereco(
        logradouro: reader.read(),
        numeroEndereco: reader.read(),
        complemento: reader.read(),
        bairro: reader.read(),
        cep: reader.read(),
        cidade: reader.read(),
        estado: reader.read());
  }

  @override
  void write(BinaryWriter writer, Endereco obj) {
    writer.write(obj.logradouro);
    writer.write(obj.numeroEndereco);
    writer.write(obj.complemento);
    writer.write(obj.bairro);
    writer.write(obj.cep);
    writer.write(obj.cidade);
    writer.write(obj.estado);
  }
}
