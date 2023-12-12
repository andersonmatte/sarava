import 'package:hive/hive.dart';

import '../../domain/entidades/Protetor.dart';
import '../../domain/entidades/Sacerdote.dart';

class SacerdoteAdapter extends TypeAdapter<Sacerdote> {
  @override
  int get typeId => 13;

  @override
  Sacerdote read(BinaryReader reader) {
    return Sacerdote(
        dataVinculacaoCasa: reader.read(),
        dataApronte: reader.read(),
        dataCriacaoCasa: reader.read(),
        nomeCasaDeSanto: reader.read(),
        quemAprontou: reader.read(),
        qualBacia: reader.read(),
        qualNacao: reader.read(),
        casaAberta: reader.read(),
        //protetores: List<Protetor>.from(reader.readList().map((x) => Protetor.fromJson(x))),
        protetores: (reader.readList() as List<dynamic>).map((dynamic item) {
          return Protetor.fromJson(item); // Substitua 'Protetor.fromJson' pela lógica real de criação do objeto Protetor
        }).toList(),
        calendario: reader.read(),
        casaDeSanto: reader.read(),
        filhoDeSanto: reader.read(),
        pessoa: reader.read());
  }

  @override
  void write(BinaryWriter writer, Sacerdote obj) {
    writer.write(obj.dataVinculacaoCasa);
    writer.write(obj.dataApronte);
    writer.write(obj.dataCriacaoCasa);
    writer.write(obj.nomeCasaDeSanto);
    writer.write(obj.quemAprontou);
    writer.write(obj.qualBacia);
    writer.write(obj.qualNacao);
    writer.write(obj.casaAberta);
    writer.writeList(obj.protetores);
    writer.write(obj.calendario);
    writer.write(obj.casaDeSanto);
    writer.write(obj.filhoDeSanto);
    writer.write(obj.pessoa);
  }
}
