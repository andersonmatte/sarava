import 'package:flutter/material.dart';
import 'package:sarava/cadastro/Cadastro.dart';

import '../infra/color/AppColors.dart';

class CadastroFormulario extends StatefulWidget {
  String tipoCadastro;

  CadastroFormulario(this.tipoCadastro);

  @override
  CadastroFormularioState createState() => CadastroFormularioState();
}

class CadastroFormularioState extends State<CadastroFormulario> {
  TextEditingController nomeCompletoController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController dataNascimentoController = TextEditingController();
  TextEditingController idadeController = TextEditingController();
  TextEditingController generoController = TextEditingController();
  TextEditingController nacionalidadeController = TextEditingController();
  TextEditingController naturalidadeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.corPrincipal,
      appBar: AppBar(
        titleSpacing: 0,
        title: const Text(
          'Cadastro',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Cadastro()));
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                const Text('Nome Completo',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 8),
                buildTextField('Nome Completo', nomeCompletoController,
                    'Informe seu nome completo'),
                const SizedBox(height: 8),
                const Text('CPF',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 8),
                buildTextField('CPF', cpfController, 'Informe seu CPF'),
                const SizedBox(height: 8),
                const Text('Data de Nascimento',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 8),
                buildTextField('Data de Nascimento', dataNascimentoController,
                    'Informe sua data de nascimento'),
                const SizedBox(height: 8),
                const Text('E-mail',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 8),
                buildTextField('E-mail', idadeController, 'Informe seu e-mail'),
                const SizedBox(height: 8),
                const Text('Gênero',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 8),
                buildTextField(
                    'Gênero', generoController, 'Informe seu gênero'),
                const SizedBox(height: 8),
                const Text('Nacionalidade',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 8),
                buildTextField('Nacionalidade', nacionalidadeController,
                    'Informe sua nacionalidade'),
                const SizedBox(height: 8),
                const Text('Naturalidade',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 8),
                buildTextField('Naturalidade', naturalidadeController,
                    'Informe sua naturalidade'),
                const SizedBox(height: 24),
                Container(
                  height: 40,
                  width: 250,
                  margin: const EdgeInsets.only(top: 30.0),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Salvar'.toUpperCase(),
                      style: const TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, TextEditingController controller, String hint) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.corBackCampo,
        borderRadius: BorderRadius.circular(10),
        // Define o raio do arredondamento aqui (8 neste exemplo)
        border: Border.all(
            color: Colors
                .black), // Define a cor e a espessura da borda, caso necessário
      ),
      child: TextFormField(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: 'Poller One',
          fontWeight: FontWeight.w400,
        ),
        controller: controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'Poller One',
            fontWeight: FontWeight.w400,
          ),
          //labelText: labelText,
          hintText: hint,
          contentPadding: const EdgeInsets.symmetric(
              horizontal: 16, vertical: 12), // Define o padding interno
          border: InputBorder.none, // Remove a borda padrão do TextFormField
        ),
      ),
    );
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
}
