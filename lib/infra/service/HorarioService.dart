import 'package:hive/hive.dart';

import '../../domain/entidades/Horario.dart';
import '../hive/Boxes.dart';

class HorarioService {
  static Box service = Boxes.getTaskHorario();

  static salvar(Horario novoRegistro) async {
    await service.add(novoRegistro);
  }

  static delete(Horario excluirRegistro) async {
    var key = excluirRegistro.key;
    await service.delete(key);
  }

  static recuperar() async {
    return service.values.toList();
  }
}
