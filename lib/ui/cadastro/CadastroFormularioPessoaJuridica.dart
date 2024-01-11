import 'package:flutter/material.dart';

import '../../../infra/color/AppColors.dart';
import '../../../infra/text/SaravaTextFormFieldCustom.dart';
import '../../infra/text/SaravaSpacer.dart';
import '../../infra/text/SaravaTextLabelCustom.dart';
import '../../infra/text/SaravaTextLabelGenericCustom.dart';
import '../../infra/toast/ToastCustom.dart';
import 'Cadastro.dart';

class CadastroFormularioPessoaJuridica extends StatefulWidget {
  String tipoCadastro;

  CadastroFormularioPessoaJuridica(this.tipoCadastro);

  @override
  CadastroFormularioPessoaJuridicaState createState() => CadastroFormularioPessoaJuridicaState();
}

class CadastroFormularioPessoaJuridicaState extends State<CadastroFormularioPessoaJuridica> {
  TextEditingController razaoSocialController = TextEditingController();
  TextEditingController cnpjController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController logradouroController = TextEditingController();
  TextEditingController numeroController = TextEditingController();
  TextEditingController complementoController = TextEditingController();
  TextEditingController bairroController = TextEditingController();
  TextEditingController cepController = TextEditingController();
  TextEditingController nomeCompletoController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
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
            color: AppColors.preto,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.preto),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => Cadastro()));
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
                SaravaTextLabelGenericCustom(
                  label: 'Dados Empresa',
                  size: 17,
                  color: AppColors.preto,
                ),
                SaravaSpacer.m(),
                SaravaTextLabelCustom(label: 'Razão Social'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'Razão Social', controller: razaoSocialController, hint: 'Informe sua razão social', type: TextInputType.text),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'CNPJ'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(labelText: 'CNPJ', controller: cnpjController, hint: 'Informe seu CNPJ', type: TextInputType.number),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'E-mail'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'E-mail', controller: emailController, hint: 'Informe seu e-mail', type: TextInputType.emailAddress),
                SaravaSpacer.m(),
                SaravaTextLabelGenericCustom(
                  label: 'Endereço',
                  size: 17,
                  color: AppColors.preto,
                ),
                SaravaSpacer.m(),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: SaravaTextLabelCustom(label: 'Logradouro'),
                        ),
                        const SizedBox(width: 40),
                        Expanded(
                          flex: 3,
                          child: SaravaTextLabelCustom(label: 'Nº'),
                        ),
                        SaravaSpacer.p(),
                      ],
                    ),
                    SaravaSpacer.p(),
                    Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: SaravaTextFormFieldCustom(
                              labelText: 'Logradouro', controller: logradouroController, hint: 'Informe o seu logradouro', type: TextInputType.text),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          flex: 3,
                          child: SaravaTextFormFieldCustom(labelText: 'Nº', controller: numeroController, hint: 'Número', type: TextInputType.number),
                        ),
                      ],
                    ),
                  ],
                ),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'Complemento'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'Complemento', controller: complementoController, hint: 'Informe o seu complemento', type: TextInputType.text),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'Bairro'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(labelText: 'Bairro', controller: bairroController, hint: 'Informe o seu bairro', type: TextInputType.text),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'CEP'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(labelText: 'CEP', controller: cepController, hint: 'Informe o seu CEP', type: TextInputType.number),
                SaravaSpacer.m(),
                SaravaTextLabelGenericCustom(
                  label: 'Representante',
                  size: 17,
                  color: AppColors.preto,
                ),
                SaravaSpacer.m(),
                SaravaTextLabelCustom(label: 'Nome Completo'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'Nome Completo', controller: nomeCompletoController, hint: 'Informe seu nome completo', type: TextInputType.text),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'CPF'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(labelText: 'CPF', controller: cpfController, hint: 'Informe seu CPF', type: TextInputType.number),
                SaravaSpacer.m(),
                SaravaTextLabelGenericCustom(
                  label: 'Definir Senha',
                  size: 17,
                  color: AppColors.preto,
                ),
                SaravaSpacer.pp(),
                SaravaTextLabelGenericCustom(
                  label: 'A senha deve ter entre 6 e 8 caracteres.',
                  size: 12,
                  color: AppColors.branco,
                ),
                SaravaSpacer.m(),
                SaravaTextLabelCustom(label: 'Senha'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(labelText: 'Senha', controller: senhaController, hint: 'Informe sua senha', type: TextInputType.text),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'Confirmar senha'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'Confirmar senha', controller: repetirSenhaController, hint: 'Confirme a sua senha', type: TextInputType.number),
                SaravaSpacer.p(),
                Container(
                  height: 40,
                  width: 250,
                  margin: const EdgeInsets.only(top: 30.0),
                  decoration: BoxDecoration(color: AppColors.preto, borderRadius: BorderRadius.circular(20)),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool validateFields() {
    if (razaoSocialController.text.isEmpty ||
        cnpjController.text.isEmpty ||
        emailController.text.isEmpty ||
        logradouroController.text.isEmpty ||
        numeroController.text.isEmpty ||
        complementoController.text.isEmpty ||
        bairroController.text.isEmpty ||
        cepController.text.isEmpty ||
        nomeCompletoController.text.isEmpty ||
        cpfController.text.isEmpty ||
        senhaController.text.isEmpty ||
        repetirSenhaController.text.isEmpty) {
      toastCustom.showToast(context, 'Todos os campos são obrigatórios.');
      return false;
    } else if (senhaController.text.length < 6 || senhaController.text.length > 8) {
      toastCustom.showToast(context, 'Atenção! A senha deve ter entre 6 e 8 caracteres.');
      return false;
    } else if (senhaController.text != repetirSenhaController.text) {
      toastCustom.showToast(context, 'Atenção! Senha e confirmação de senha devem ser iguais.');
      return false;
    }
    return true;
  }

//
// salvar() async {
//
//   Endereco endereco = Endereco(logradouro: logradouroController.text, numeroEndereco: numeroController.text, complemento: complementoController.text, bairro: bairroController.text, cep: cepController.text, cidade: cidade, estado: estado)
//   Fornecedor novoRegistro = Fornecedor(cnpj: cnpj, contatoTelefonico: contatoTelefonico, email: email, fundacao: fundacao, idProduto: idProduto, produto: produto, valorItem: valorItem, pedido: pedido, cliente: cliente, endereco: endereco, razaoSocial: razaoSocial);
//
//   if (await repository.salvar(novoRegistro)) {
//     toastCustom.showToast(context, 'Registro salvo com sucesso!.');
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => Home()),
//     );
//   } else {
//     toastCustom.showToast(context, 'Login não encontrado, revise seus dados ou entre em contato com o administrador.');
//   }
// }
}
