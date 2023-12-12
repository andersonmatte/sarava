import 'package:hive/hive.dart';

import '../../domain/entidades/Pessoa.dart';
import '../hive/Boxes.dart';

class PessoaService {
  static Box service = Boxes.getTaskPessoa();

  static salvar(Pessoa novoRegistro) async {
    await service.add(novoRegistro);
  }

  static delete(Pessoa excluirRegistro) async {
    var key = excluirRegistro.key;
    await service.delete(key);
  }

  static recuperar() async {
    return service.values.toList();
  }

  static Future<bool> login(String login, String senha) async {
    final result = service.values.where((pessoa) => pessoa.login == login && pessoa.senha == senha).isNotEmpty;
    await service.close();
    return result;
  }
}
