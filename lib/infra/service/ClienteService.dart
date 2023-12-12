import 'package:hive/hive.dart';

import '../../domain/entidades/Cliente.dart';
import '../hive/Boxes.dart';

class ClienteService {
  static Box service = Boxes.getTaskCliente();

  static salvar(Cliente novoRegistro) async {
    await service.add(novoRegistro);
  }

  static delete(Cliente excluirRegistro) async {
    var key = excluirRegistro.key;
    await service.delete(key);
  }

  static recuperar() async {
    return service.values.toList();
  }
}
