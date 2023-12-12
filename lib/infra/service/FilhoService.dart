import 'package:hive/hive.dart';

import '../../domain/entidades/Filho.dart';
import '../hive/Boxes.dart';

class FilhoService {
  static Box service = Boxes.getTaskFilho();

  static salvar(Filho novoRegistro) async {
    await service.add(novoRegistro);
  }

  static delete(Filho excluirRegistro) async {
    var key = excluirRegistro.key;
    await service.delete(key);
  }

  static recuperar() async {
    return service.values.toList();
  }
}
