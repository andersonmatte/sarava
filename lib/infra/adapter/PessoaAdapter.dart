import 'package:hive/hive.dart';
import 'package:sarava/domain/entidades/Favorito.dart';

import '../../domain/entidades/Pessoa.dart';

class PessoaAdapter extends TypeAdapter<Pessoa> {
  @override
  int get typeId => 11;

  @override
  Pessoa read(BinaryReader reader) {
    return Pessoa(
        login: reader.read(),
        senha: reader.read(),
        nome: reader.read(),
        dataNascimento: reader.read(),
        horarioNasc: reader.read(),
        idade: reader.read(),
        genero: reader.read(),
        naturalidade: reader.read(),
        nacionalidade: reader.read(),
        cpf: reader.read(),
        contatoTelefonico: reader.read(),
        email: reader.read(),
        favoritos: List<Favorito>.from(reader.readList().map((x) => Favorito.fromJson(x))),
        obrigacao: reader.read(),
        dataObrigacao: reader.read(),
        endereco: reader.read(),
        isTamboreiro: reader.read());
  }

  @override
  void write(BinaryWriter writer, Pessoa obj) {
    writer.write(obj.login);
    writer.write(obj.senha);
    writer.write(obj.nome);
    writer.write(obj.dataNascimento);
    writer.write(obj.horarioNasc);
    writer.write(obj.idade);
    writer.write(obj.genero);
    writer.write(obj.naturalidade);
    writer.write(obj.nacionalidade);
    writer.write(obj.cpf);
    writer.write(obj.contatoTelefonico);
    writer.write(obj.email);
    writer.writeList(obj.favoritos);
    writer.write(obj.obrigacao);
    writer.write(obj.dataObrigacao);
    writer.write(obj.endereco);
    writer.write(obj.isTamboreiro);
  }
}
