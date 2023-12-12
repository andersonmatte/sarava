import 'package:hive/hive.dart';

import '../../domain/entidades/Conversa.dart';

class ConversaAdapter extends TypeAdapter<Conversa> {
  @override
  int get typeId => 4;

  @override
  Conversa read(BinaryReader reader) {
    return Conversa(dialogos: reader.read(), id: reader.read());
  }

  @override
  void write(BinaryWriter writer, Conversa obj) {
    writer.write(obj.dialogos);
    writer.write(obj.id);
  }
}
