import 'package:hive/hive.dart';

import '../../domain/entidades/Servico.dart';
import '../hive/Boxes.dart';

class ServicoService {
  static Box service = Boxes.getTaskServico();

  static salvar(Servico novoRegistro) async {
    await service.add(novoRegistro);
  }

  static delete(Servico excluirRegistro) async {
    var key = excluirRegistro.key;
    await service.delete(key);
  }

  static recuperar() async {
    return service.values.toList();
  }
}
