import 'package:flutter/material.dart';
import 'package:sarava/infra/color/AppColors.dart';

import '../menu/AppMenu.dart';

class Sobre extends StatefulWidget {
  const Sobre({Key? key}) : super(key: key);

  @override
  State<Sobre> createState() => SobreState();
}

class SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return AppMenu(
      pageTitle: '',
      pageBody: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/backgroudsarava.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Versão',
                      style: TextStyle(
                        fontSize: 40,
                        color: AppColors.preto,
                        fontFamily: 'Poller One',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '1.0',
                      style: TextStyle(
                        fontSize: 40,
                        color: AppColors.branco,
                        fontFamily: 'Poller One',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Estamos trabalhando incessantemente para melhorar a aplicação e facilitar a navegação de todos os nossos usuários.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: 'Poller One',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
