import 'package:flutter/material.dart';
import 'package:sarava/infra/color/AppColors.dart';

import '../../infra/text/SaravaSpacer.dart';
import '../../infra/text/SaravaTextLabelGenericCustom.dart';
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SaravaTextLabelGenericCustom(
                      label: 'Versão',
                      size: 40,
                      color: AppColors.preto,
                    ),
                    SaravaSpacer.p(),
                    SaravaTextLabelGenericCustom(
                      label: '1.0.',
                      size: 40,
                      color: AppColors.branco,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SaravaTextLabelGenericCustom(
                  label: 'Estamos trabalhando incessantemente para melhorar a aplicação e facilitar a navegação de todos os nossos usuários.',
                  size: 18,
                  color: AppColors.preto,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
