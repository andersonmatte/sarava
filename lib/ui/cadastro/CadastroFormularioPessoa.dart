import 'package:flutter/material.dart';

import '../../../infra/color/AppColors.dart';
import '../../../infra/text/SaravaTextFormFieldCustom.dart';
import '../../infra/text/SaravaSpacer.dart';
import '../../infra/text/SaravaTextLabelCustom.dart';
import '../../infra/text/SaravaTextLabelGenericCustom.dart';
import '../../infra/toast/ToastCustom.dart';
import 'Cadastro.dart';

class CadastroFormularioPessoa extends StatefulWidget {
  String tipoCadastro;

  CadastroFormularioPessoa(this.tipoCadastro);

  @override
  CadastroFormularioPessoaState createState() =>
      CadastroFormularioPessoaState();
}

class CadastroFormularioPessoaState extends State<CadastroFormularioPessoa> {
  TextEditingController nomeCompletoController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController dataNascimentoController = TextEditingController();
  TextEditingController idadeController = TextEditingController();
  TextEditingController generoController = TextEditingController();
  TextEditingController nacionalidadeController = TextEditingController();
  TextEditingController naturalidadeController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController repetirSenhaController = TextEditingController();

  final toastCustom = ToastCustom();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.corPrincipal,
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(
          'Cadastro ${widget.tipoCadastro}',
          style: const TextStyle(
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
                SaravaTextLabelCustom(label: 'Nome Completo'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'Nome Completo',
                    controller: nomeCompletoController,
                    hint: 'Informe seu nome completo',
                    type: TextInputType.text),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'CPF'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'CPF',
                    controller: cpfController,
                    hint: 'Informe seu CPF',
                    type: TextInputType.number),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'Data de Nascimento'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'Data de Nascimento',
                    controller: dataNascimentoController,
                    hint: 'Informe sua data de nascimento',
                    type: TextInputType.datetime),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'E-mail'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'E-mail',
                    controller: idadeController,
                    hint: 'Informe seu e-mail',
                    type: TextInputType.emailAddress),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'Gênero'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'Gênero',
                    controller: generoController,
                    hint: 'Informe seu gênero',
                    type: TextInputType.text),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'Nacionalidade'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'Nacionalidade',
                    controller: nacionalidadeController,
                    hint: 'Informe sua nacionalidade',
                    type: TextInputType.text),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'Naturalidade'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'Naturalidade',
                    controller: naturalidadeController,
                    hint: 'Informe sua naturalidade',
                    type: TextInputType.text),
                SaravaSpacer.m(),
                SaravaTextLabelCustom(label: 'Definir Senha'),
                SaravaSpacer.pp(),
                SaravaTextLabelGenericCustom(
                  label: 'A senha deve ter entre 6 e 8 caracteres.',
                  size: 12,
                  color: AppColors.branco,
                ),
                SaravaSpacer.m(),
                SaravaTextLabelCustom(label: 'Senha'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'Senha',
                    controller: senhaController,
                    hint: 'Informe sua senha',
                    type: TextInputType.text),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'Confirmar senha'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'Confirmar senha',
                    controller: repetirSenhaController,
                    hint: 'Confirme a sua senha',
                    type: TextInputType.number),
                SaravaSpacer.p(),
                Container(
                  height: 40,
                  width: 250,
                  margin: const EdgeInsets.only(top: 30.0),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      if (validateFields()) {
                        //salvar();
                      }
                    },
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

  bool validateFields() {
    if (nacionalidadeController.text.isEmpty ||
        naturalidadeController.text.isEmpty ||
        generoController.text.isEmpty ||
        idadeController.text.isEmpty ||
        dataNascimentoController.text.isEmpty ||
        nomeCompletoController.text.isEmpty ||
        cpfController.text.isEmpty ||
        senhaController.text.isEmpty ||
        repetirSenhaController.text.isEmpty) {
      toastCustom.showToast(context, 'Todos os campos são obrigatórios.');
      return false;
    } else if (senhaController.text.length < 6 ||
        senhaController.text.length > 8) {
      toastCustom.showToast(
          context, 'Atenção! A senha deve ter entre 6 e 8 caracteres.');
      return false;
    } else if (senhaController.text != repetirSenhaController.text) {
      toastCustom.showToast(
          context, 'Atenção! Senha e confirmação de senha devem ser iguais.');
      return false;
    }
    return true;
  }

// Widget buildTextField(
//     String labelText, TextEditingController controller, String hint) {
//   return Container(
//     decoration: BoxDecoration(
//       color: AppColors.corBackCampo,
//       borderRadius: BorderRadius.circular(10),
//       // Define o raio do arredondamento aqui (8 neste exemplo)
//       border: Border.all(
//           color: Colors
//               .black), // Define a cor e a espessura da borda, caso necessário
//     ),
//     child: TextFormField(
//       style: const TextStyle(
//         color: Colors.black,
//         fontSize: 18,
//         fontFamily: 'Poller One',
//         fontWeight: FontWeight.w400,
//       ),
//       controller: controller,
//       decoration: InputDecoration(
//         hintStyle: const TextStyle(
//           color: Colors.black,
//           fontSize: 18,
//           fontFamily: 'Poller One',
//           fontWeight: FontWeight.w400,
//         ),
//         //labelText: labelText,
//         hintText: hint,
//         contentPadding: const EdgeInsets.symmetric(
//             horizontal: 16, vertical: 12), // Define o padding interno
//         border: InputBorder.none, // Remove a borda padrão do TextFormField
//       ),
//     ),
//   );
// }
}
