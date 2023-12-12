import 'package:hive/hive.dart';

import '../../domain/entidades/Fornecedor.dart';
import '../hive/Boxes.dart';

class FornecedorService {
  static Box service = Boxes.getTaskFornecedor();

  static salvar(Fornecedor novoRegistro) async {
    await service.add(novoRegistro);
  }

  static delete(Fornecedor excluirRegistro) async {
    var key = excluirRegistro.key;
    await service.delete(key);
  }

  static recuperar() async {
    return service.values.toList();
  }
}
