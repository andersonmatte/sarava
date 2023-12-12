import 'package:flutter/material.dart';

import '../menu/AppMenu.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => InicioState();
}

class InicioState extends State<Inicio> {
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
