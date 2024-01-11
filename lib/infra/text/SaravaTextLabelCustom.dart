import 'package:flutter/material.dart';

import '../color/AppColors.dart';

class SaravaTextLabelCustom extends StatefulWidget {
  String label;

  SaravaTextLabelCustom({required this.label});

  @override
  State<SaravaTextLabelCustom> createState() => _SaravaTextLabelCustomState();
}

class _SaravaTextLabelCustomState extends State<SaravaTextLabelCustom> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.label,
        style: const TextStyle(
          color: AppColors.preto,
          fontSize: 14,
          fontFamily: 'Poller One',
          fontWeight: FontWeight.bold,
        ));
  }
}
