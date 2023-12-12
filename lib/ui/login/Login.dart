import 'package:flutter/material.dart';

import '../../../infra/color/AppColors.dart';
import '../../../infra/toast/ToastCustom.dart';
import '../../infra/service/PessoaService.dart';
import '../../infra/text/TextFormFieldLoginCustom.dart';
import '../cadastro/Cadastro.dart';
import '../home/Home.dart';
import '../senha/RecuperarSenha.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  final toastCustom = ToastCustom();

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
              initialChildSize: 0.1,
              minChildSize: 0.1,
              maxChildSize: 0.5,
              builder: (BuildContext context, ScrollController scrollController) {
                return Container(
                  padding: const EdgeInsets.only(left: 16, top: 2, right: 16, bottom: 8),
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
                      const SizedBox(height: 16),
                      const Center(
                        child: Text(
                          'Entre para acessar a sua conta',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text('E-mail',
                          style: TextStyle(
                            color: AppColors.preto,
                            fontSize: 14,
                            fontFamily: 'Poller One',
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 16),
                      TextFormFieldLoginCustom(
                          labelText: 'E-mail', controller: emailController, hint: 'Informe seu e-mail', type: TextInputType.emailAddress),
                      const SizedBox(height: 16),
                      const Text('Senha',
                          style: TextStyle(
                            color: AppColors.preto,
                            fontSize: 14,
                            fontFamily: 'Poller One',
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 16),
                      TextFormFieldLoginCustom(labelText: 'Senha', controller: senhaController, hint: 'Informe sua senha', type: TextInputType.text),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => RecuperarSenha()),
                              );
                            },
                            child: const Text(
                              'Esqueceu a senha?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
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
                              onPressed: () async {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Home()),
                                );
                                // if (emailController.text.isNotEmpty && senhaController.text.isNotEmpty) {
                                //   logar();
                                // } else {
                                //   toastCustom.showToast(context, 'Login e senha são obrigatórios!');
                                // }
                              },
                              child: const Text(
                                "ENTRAR",
                                style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
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

  logar() async {
    if (await PessoaService.login(emailController.text, senhaController.text)) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    } else {
      toastCustom.showToast(context, 'Login não encontrado, revise seus dados ou entre em contato com o administrador.');
    }
  }
}
