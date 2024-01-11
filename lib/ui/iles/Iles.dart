import 'package:flutter/material.dart';

import '../menu/AppMenu.dart';

class Iles extends StatefulWidget {
  const Iles({Key? key}) : super(key: key);

  @override
  State<Iles> createState() => IlesState();
}

class IlesState extends State<Iles> {
  @override
  Widget build(BuildContext context) {
    return AppMenu(
      pageTitle: '',
      pageBody: const Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(25),
          child: Text("teste"),
        ),
      ),
    );
  }
}
