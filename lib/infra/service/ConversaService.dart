import 'package:hive/hive.dart';

import '../../domain/entidades/Conversa.dart';
import '../hive/Boxes.dart';

class ConversaService {
  static Box service = Boxes.getTaskConversa();

  static salvar(Conversa novoRegistro) async {
    await service.add(novoRegistro);
  }

  static delete(Conversa excluirRegistro) async {
    var key = excluirRegistro.key;
    await service.delete(key);
  }

  static recuperar() async {
    return service.values.toList();
  }
}
