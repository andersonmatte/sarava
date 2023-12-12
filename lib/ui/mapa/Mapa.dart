import 'package:flutter/material.dart';

import '../menu/AppMenu.dart';

class Mapa extends StatefulWidget {
  const Mapa({Key? key}) : super(key: key);

  @override
  State<Mapa> createState() => MapaState();
}

class MapaState extends State<Mapa> {
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
