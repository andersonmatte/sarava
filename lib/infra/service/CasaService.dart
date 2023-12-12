import 'package:hive/hive.dart';

import '../../domain/entidades/Casa.dart';
import '../hive/Boxes.dart';

class CasaService {
  static Box service = Boxes.getTaskCasa();

  static salvar(Casa novoRegistro) async {
    await service.add(novoRegistro);
  }

  static delete(Casa excluirRegistro) async {
    var key = excluirRegistro.key;
    await service.delete(key);
  }

  static recuperar() async {
    return service.values.toList();
  }
}
