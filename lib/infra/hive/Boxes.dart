import 'package:hive/hive.dart';

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

class Boxes {
  static Box<Calendario> getTaskCalendario() => Hive.box<Calendario>("dbcalendario");

  static Box<Casa> getTaskCasa() => Hive.box<Casa>("dbcasa");

  static Box<Cliente> getTaskCliente() => Hive.box<Cliente>("dbcliente");

  static Box<Consulta> getTaskConsulta() => Hive.box<Consulta>("dbconsulta");

  static Box<Conversa> getTaskConversa() => Hive.box<Conversa>("dbconversa");

  static Box<Endereco> getTaskEndereco() => Hive.box<Endereco>("dbendereco");

  static Box<Favorito> getTaskFavorito() => Hive.box<Favorito>("dbfavorito");

  static Box<Filho> getTaskFilho() => Hive.box<Filho>("dbfilho");

  static Box<Fornecedor> getTaskFornecedor() => Hive.box<Fornecedor>("dbfornecedor");

  static Box<Horario> getTaskHorario() => Hive.box<Horario>("dbhorario");

  static Box<Imagem> getTaskImagem() => Hive.box<Imagem>("dbimagem");

  static Box<Pessoa> getTaskPessoa() => Hive.box<Pessoa>("dbpessoa");

  static Box<Protetor> getTaskProtetor() => Hive.box<Protetor>("dbprotetor");

  static Box<Sacerdote> getTaskSacerdote() => Hive.box<Sacerdote>("dbsacerdote");

  static Box<Servico> getTaskServico() => Hive.box<Servico>("dbservico");
}
