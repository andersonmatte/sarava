import 'package:flutter/material.dart';

import '../../../infra/color/AppColors.dart';
import '../../infra/text/SaravaSpacer.dart';
import '../../infra/text/SaravaTextFormFieldLoginCustom.dart';
import '../../infra/text/SaravaTextLabelCustom.dart';
import '../../infra/text/SaravaTextLabelGenericCustom.dart';
import '../cadastro/Cadastro.dart';

void main() => runApp(RecuperarSenha());

class RecuperarSenha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecuperarSenhaPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RecuperarSenhaPage extends StatefulWidget {
  @override
  RecuperarSenhaState createState() => RecuperarSenhaState();
}

class RecuperarSenhaState extends State<RecuperarSenhaPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController repetirSenhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgroudsarava.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Saravá',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 250.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: 'Deslize para ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: 'cima\npara entrar no mundo do\nAxé.'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.7,
              minChildSize: 0.1,
              maxChildSize: 0.7,
              builder: (BuildContext context, ScrollController scrollController) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: ListView(
                    controller: scrollController,
                    children: [
                      const Text(
                        'Cadastre uma nova senha',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SaravaSpacer.pp(),
                      SaravaTextLabelGenericCustom(label: 'A nova senha deve ter entre 6 e 8 caracteres.', size: 12, color: AppColors.vermelho),
                      SaravaSpacer.m(),
                      SaravaTextLabelCustom(label: 'E-mail'),
                      SaravaSpacer.m(),
                      SaravaTextFormFieldLoginCustom(
                          labelText: 'E-mail', controller: emailController, hint: 'Informe seu e-mail', type: TextInputType.emailAddress),
                      SaravaSpacer.m(),
                      SaravaTextLabelCustom(label: 'Senha'),
                      SaravaSpacer.m(),
                      SaravaTextFormFieldLoginCustom(
                          labelText: 'Senha', controller: senhaController, hint: 'Informe sua senha', type: TextInputType.text),
                      SaravaSpacer.m(),
                      SaravaTextLabelCustom(label: 'Confirmar senha'),
                      SaravaSpacer.m(),
                      SaravaTextFormFieldLoginCustom(
                          labelText: 'Confirmar senha',
                          controller: repetirSenhaController,
                          hint: 'Confirme a nova senha',
                          type: TextInputType.number),
                      SaravaSpacer.m(),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 40,
                            width: 350,
                            margin: const EdgeInsets.only(top: 30.0),
                            decoration: BoxDecoration(
                              color: AppColors.corPrincipal,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextButton(
                              onPressed: () async {},
                              child: Text(
                                'redefinir'.toUpperCase(),
                                style: const TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SaravaSpacer.m(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Não tem conta ainda? ',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Cadastro()),
                              );
                            },
                            child: const Text(
                              'Inscreva-se',
                              style: TextStyle(
                                color: AppColors.corPrincipal,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
