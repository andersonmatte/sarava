import 'package:hive/hive.dart';

import '../../domain/entidades/Imagem.dart';
import '../hive/Boxes.dart';

class ImagemService {
  static Box service = Boxes.getTaskImagem();

  static salvar(Imagem novoRegistro) async {
    await service.add(novoRegistro);
  }

  static delete(Imagem excluirRegistro) async {
    var key = excluirRegistro.key;
    await service.delete(key);
  }

  static recuperar() async {
    return service.values.toList();
  }
}
