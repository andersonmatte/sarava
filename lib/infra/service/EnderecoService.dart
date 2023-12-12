import 'package:hive/hive.dart';

import '../../domain/entidades/Endereco.dart';
import '../hive/Boxes.dart';

class EnderecoService {
  static Box service = Boxes.getTaskEndereco();

  static salvar(Endereco novoRegistro) async {
    await service.add(novoRegistro);
  }

  static delete(Endereco excluirRegistro) async {
    var key = excluirRegistro.key;
    await service.delete(key);
  }

  static recuperar() async {
    return service.values.toList();
  }
}
