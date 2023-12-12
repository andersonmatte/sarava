import 'package:hive/hive.dart';

import '../../domain/entidades/Fornecedor.dart';

class FornecedorAdapter extends TypeAdapter<Fornecedor> {
  @override
  int get typeId => 8;

  @override
  Fornecedor read(BinaryReader reader) {
    return Fornecedor(
        cnpj: reader.read(),
        contatoTelefonico: reader.read(),
        email: reader.read(),
        fundacao: reader.read(),
        idProduto: reader.read(),
        produto: reader.read(),
        valorItem: reader.read(),
        pedido: reader.read(),
        cliente: reader.read(),
        endereco: reader.read(),
        razaoSocial: reader.read(),
        representante: reader.read());
  }

  @override
  void write(BinaryWriter writer, Fornecedor obj) {
    writer.write(obj.cnpj);
    writer.write(obj.contatoTelefonico);
    writer.write(obj.email);
    writer.write(obj.fundacao);
    writer.write(obj.idProduto);
    writer.write(obj.produto);
    writer.write(obj.valorItem);
    writer.write(obj.pedido);
    writer.write(obj.cliente);
    writer.write(obj.endereco);
    writer.write(obj.razaoSocial);
    writer.write(obj.representante);
  }
}
