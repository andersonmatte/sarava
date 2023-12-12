import 'package:hive/hive.dart';

import '../../domain/entidades/Calendario.dart';
import '../hive/Boxes.dart';

class CalendarioService {
  static Box service = Boxes.getTaskCalendario();

  static salvar(Calendario novoRegistro) async {
    await service.add(novoRegistro);
  }

  static delete(Calendario excluirRegistro) async {
    var key = excluirRegistro.key;
    await service.delete(key);
  }

  static recuperar() async {
    return service.values.toList();
  }
}
