import 'package:hive/hive.dart';

import '../../domain/entidades/Protetor.dart';
import '../hive/Boxes.dart';

class ProtetorService {
  static Box service = Boxes.getTaskProtetor();

  static salvar(Protetor novoRegistro) async {
    await service.add(novoRegistro);
  }

  static delete(Protetor excluirRegistro) async {
    var key = excluirRegistro.key;
    await service.delete(key);
  }

  static recuperar() async {
    return service.values.toList();
  }
}
