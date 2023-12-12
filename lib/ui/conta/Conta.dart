import 'package:flutter/material.dart';

import '../menu/AppMenu.dart';

class Conta extends StatefulWidget {
  const Conta({Key? key}) : super(key: key);

  @override
  State<Conta> createState() => ContaState();
}

class ContaState extends State<Conta> {
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
