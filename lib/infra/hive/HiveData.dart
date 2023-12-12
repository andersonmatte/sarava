import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import '../../domain/entidades/Calendario.dart';
import '../../domain/entidades/Casa.dart';
import '../../domain/entidades/Cliente.dart';
import '../../domain/entidades/Consulta.dart';
import '../../domain/entidades/Conversa.dart';
import '../../domain/entidades/Endereco.dart';
import '../../domain/entidades/Favorito.dart';
import '../../domain/entidades/Filho.dart';
import '../../domain/entidades/Fornecedor.dart';
import '../../domain/entidades/Horario.dart';
import '../../domain/entidades/Imagem.dart';
import '../../domain/entidades/Pessoa.dart';
import '../../domain/entidades/Protetor.dart';
import '../../domain/entidades/Sacerdote.dart';
import '../../domain/entidades/Servico.dart';
import '../adapter/CalendarioAdapter.dart';
import '../adapter/CasaAdapter.dart';
import '../adapter/ClienteAdapter.dart';
import '../adapter/ConsultaAdapter.dart';
import '../adapter/ConversaAdapter.dart';
import '../adapter/EnderecoAdapter.dart';
import '../adapter/FavoritoAdapter.dart';
import '../adapter/FilhoAdapter.dart';
import '../adapter/FornecedorAdapter.dart';
import '../adapter/HorarioAdapter.dart';
import '../adapter/ImagemAdapter.dart';
import '../adapter/PessoaAdapter.dart';
import '../adapter/ProtetorAdapter.dart';
import '../adapter/SacerdoteAdapter.dart';
import '../adapter/ServicoAdapter.dart';

class HiveData {
  static Future<void> init() async {
    final appDocumentDirectory = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(appDocumentDirectory.path);

    Hive.registerAdapter(CalendarioAdapter());
    Hive.registerAdapter(CasaAdapter());
    Hive.registerAdapter(ClienteAdapter());
    Hive.registerAdapter(ConsultaAdapter());
    Hive.registerAdapter(ConversaAdapter());
    Hive.registerAdapter(EnderecoAdapter());
    Hive.registerAdapter(FavoritoAdapter());
    Hive.registerAdapter(FilhoAdapter());
    Hive.registerAdapter(FornecedorAdapter());
    Hive.registerAdapter(HorarioAdapter());
    Hive.registerAdapter(ImagemAdapter());
    Hive.registerAdapter(PessoaAdapter());
    Hive.registerAdapter(ProtetorAdapter());
    Hive.registerAdapter(SacerdoteAdapter());
    Hive.registerAdapter(ServicoAdapter());

    await Hive.openBox<Calendario>("dbcalendario");
    await Hive.openBox<Casa>("dbcasa");
    await Hive.openBox<Cliente>("dbcliente");
    await Hive.openBox<Consulta>("dbconsulta");
    await Hive.openBox<Conversa>("dbconversa");
    await Hive.openBox<Endereco>("dbendereco");
    await Hive.openBox<Favorito>("dbfavorito");
    await Hive.openBox<Filho>("dbfilho");
    await Hive.openBox<Fornecedor>("dbfornecedor");
    await Hive.openBox<Horario>("dbhorario");
    await Hive.openBox<Imagem>("dbimagem");
    await Hive.openBox<Pessoa>("dbpessoa");
    await Hive.openBox<Protetor>("dbprotetor");
    await Hive.openBox<Sacerdote>("dbsacerdote");
    await Hive.openBox<Servico>("dbservico");
  }
}
