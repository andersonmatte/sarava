import 'package:flutter/material.dart';

import '../color/AppColors.dart';

class SaravaTextFormFieldLoginCustom extends StatefulWidget {
  String labelText;
  TextEditingController controller;
  String hint;
  TextInputType type;

  SaravaTextFormFieldLoginCustom({required this.labelText, required this.controller, required this.hint, required this.type});

  @override
  State<SaravaTextFormFieldLoginCustom> createState() => _SaravaTextFormFieldLoginCustomState();
}

class _SaravaTextFormFieldLoginCustomState extends State<SaravaTextFormFieldLoginCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.branco,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: TextFormField(
        keyboardType: widget.type,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: 'Poller One',
          fontWeight: FontWeight.w400,
        ),
        controller: widget.controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'Poller One',
            fontWeight: FontWeight.w400,
          ),
          //labelText: labelText,
          hintText: widget.hint,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
