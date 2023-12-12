import 'package:flutter/material.dart';

import '../color/AppColors.dart';

class ToastCustom {
  void showToast(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: AppColors.branco,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: 'Roboto',
          ),
        ),
        backgroundColor: AppColors.corPrincipal,
      ),
    );
  }
}
