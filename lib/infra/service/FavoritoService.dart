import 'package:hive/hive.dart';

import '../../domain/entidades/Favorito.dart';
import '../hive/Boxes.dart';

class FavoritoService {
  static Box service = Boxes.getTaskFavorito();

  static salvar(Favorito novoRegistro) async {
    await service.add(novoRegistro);
  }

  static delete(Favorito excluirRegistro) async {
    var key = excluirRegistro.key;
    await service.delete(key);
  }

  static recuperar() async {
    return service.values.toList();
  }
}
