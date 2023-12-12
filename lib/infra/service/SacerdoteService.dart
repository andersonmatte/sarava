import 'package:hive/hive.dart';

import '../../domain/entidades/Sacerdote.dart';
import '../hive/Boxes.dart';

class SacerdoteService {
  static Box service = Boxes.getTaskSacerdote();

  static salvar(Sacerdote novoRegistro) async {
    await service.add(novoRegistro);
  }

  static delete(Sacerdote excluirRegistro) async {
    var key = excluirRegistro.key;
    await service.delete(key);
  }

  static recuperar() async {
    return service.values.toList();
  }
}
