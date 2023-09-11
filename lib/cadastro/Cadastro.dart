import 'package:flutter/material.dart';
import 'package:sarava/cadastro/CadastroFormulario.dart';

import '../infra/color/AppColors.dart';
import '../login/Login.dart';

void main() => runApp(Cadastro());

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CadastroPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

enum TipoCadastro {
  Simpatizante,
  Babalorixa,
  Tamboreiro,
  Fornecedor,
}

class CadastroPage extends StatefulWidget {
  @override
  CadastroState createState() => CadastroState();
}

class CadastroState extends State<CadastroPage> {
  final usuarioController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Text(
          'Em que perfil você deseja se cadastrar?',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => Login()));
          },
        ),
        backgroundColor: AppColors.corPrincipal,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgroudsarava.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20.0),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: montaCardPerfil(
                        'Simpatizante',
                        'assets/images/simpatizante.png',
                        TipoCadastro.Simpatizante,
                      ),
                    ),
                    Expanded(
                      child: montaCardPerfil(
                        'Babalorixa/Yalorixá',
                        'assets/images/babalorixa.png',
                        TipoCadastro.Babalorixa,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: montaCardPerfil(
                        'Tamboreiro',
                        'assets/images/tamboreiro.png',
                        TipoCadastro.Tamboreiro,
                      ),
                    ),
                    Expanded(
                      child: montaCardPerfil(
                        'Fornecedor',
                        'assets/images/fornecedor.png',
                        TipoCadastro.Fornecedor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget montaCardPerfil(String title, String imagePath, TipoCadastro tipoCadastro) {
    return InkWell(
      onTap: () {
        // Navegar para a nova tela ao clicar no card
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CadastroFormulario(tipoCadastro.toString())),
        );
      },
      child: Card(
        elevation: 3,
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

  void showToast(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
            fontFamily: 'Roboto',
          ),
        ),
        backgroundColor: AppColors.corPrincipal
            .withOpacity(0.7), // Define a cor de fundo com 50% de transparência
      ),
    );
  }

