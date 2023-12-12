import 'package:hive/hive.dart';

import '../../domain/entidades/Consulta.dart';
import '../hive/Boxes.dart';

class ConsultaService {
  static Box service = Boxes.getTaskConsulta();

  static salvar(Consulta novoRegistro) async {
    await service.add(novoRegistro);
  }

  static delete(Consulta excluirRegistro) async {
    var key = excluirRegistro.key;
    await service.delete(key);
  }

  static recuperar() async {
    return service.values.toList();
  }
}
