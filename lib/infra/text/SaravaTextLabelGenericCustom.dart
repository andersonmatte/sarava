import 'package:flutter/material.dart';

class SaravaTextLabelGenericCustom extends StatefulWidget {
  String label;
  double size;
  Color color;

  SaravaTextLabelGenericCustom({required this.label, required this.size, required this.color});

  @override
  State<SaravaTextLabelGenericCustom> createState() => _SaravaTextLabelGenericCustomState();
}

class _SaravaTextLabelGenericCustomState extends State<SaravaTextLabelGenericCustom> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.label,
        style: TextStyle(
          color: widget.color,
          fontSize: widget.size,
          fontFamily: 'Poller One',
          fontWeight: FontWeight.bold,
        ));
  }
}
