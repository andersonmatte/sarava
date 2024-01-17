import 'package:flutter/material.dart';
import 'package:sarava/ui/cadastro/CadastroFormularioPessoaJuridica.dart';
import 'package:sarava/ui/cadastro/CadastroFormularioPessoaSacerdote.dart';

import '../../../infra/color/AppColors.dart';
import '../login/Login.dart';
import 'CadastroFormularioPessoa.dart';

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
          'Em que perfil você deseja se cadastrar ?',
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

  Widget montaCardPerfil(
      String title, String imagePath, TipoCadastro tipoCadastro) {
    return InkWell(
      onTap: () {
        if (tipoCadastro.name == 'Simpatizante' ||
            tipoCadastro.name == 'Tamboreiro') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    CadastroFormularioPessoa(tipoCadastro.name)),
          );
        } else if (tipoCadastro.name == 'Fornecedor') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    CadastroFormularioPessoaJuridica(tipoCadastro.name)),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    CadastroFormularioPessoaSacerdote(tipoCadastro.name)),
          );
        }
      },
      child: Card(
        shadowColor: Colors.transparent,
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
            Expanded(
                child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
