import 'package:flutter/material.dart';

import '../menu/AppMenu.dart';

class Mensagem extends StatefulWidget {
  const Mensagem({Key? key}) : super(key: key);

  @override
  State<Mensagem> createState() => MensagemState();
}

class MensagemState extends State<Mensagem> {
  @override
  Widget build(BuildContext context) {
    return AppMenu(
      pageTitle: '',
      pageBody: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Text("teste"),
        ),
      ),
    );
  }
}
