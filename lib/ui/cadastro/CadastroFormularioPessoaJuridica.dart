import 'package:flutter/material.dart';

import '../../../infra/color/AppColors.dart';
import '../../../infra/text/TextFormFieldCustom.dart';
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
                const Text('Dados Empresa',
                    style: TextStyle(
                      color: AppColors.preto,
                      fontSize: 17,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 16),
                const Text('Razão Social',
                    style: TextStyle(
                      color: AppColors.preto,
                      fontSize: 14,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 8),
                TextFormFieldCustom(
                    labelText: 'Razão Social', controller: razaoSocialController, hint: 'Informe sua razão social', type: TextInputType.text),
                const SizedBox(height: 8),
                const Text('CNPJ',
                    style: TextStyle(
                      color: AppColors.preto,
                      fontSize: 14,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 8),
                TextFormFieldCustom(labelText: 'CNPJ', controller: cnpjController, hint: 'Informe seu CNPJ', type: TextInputType.number),
                const SizedBox(height: 8),
                const Text('E-mail',
                    style: TextStyle(
                      color: AppColors.preto,
                      fontSize: 14,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 8),
                TextFormFieldCustom(labelText: 'E-mail', controller: emailController, hint: 'Informe seu e-mail', type: TextInputType.emailAddress),
                const SizedBox(height: 16),
                const Text('Endereço',
                    style: TextStyle(
                      color: AppColors.preto,
                      fontSize: 17,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 16),
                Column(
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Text('Logradouro',
                              style: TextStyle(color: AppColors.preto, fontSize: 14, fontFamily: 'Poller One', fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(width: 40),
                        Expanded(
                          flex: 3,
                          child: Text('Nº',
                              style: TextStyle(color: AppColors.preto, fontSize: 14, fontFamily: 'Poller One', fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: TextFormFieldCustom(
                              labelText: 'Logradouro', controller: logradouroController, hint: 'Informe o seu logradouro', type: TextInputType.text),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          flex: 3,
                          child: TextFormFieldCustom(labelText: 'Nº', controller: numeroController, hint: 'Número', type: TextInputType.number),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text('Complemento',
                    style: TextStyle(
                      color: AppColors.preto,
                      fontSize: 14,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 8),
                TextFormFieldCustom(
                    labelText: 'Complemento', controller: complementoController, hint: 'Informe o seu complemento', type: TextInputType.text),
                const SizedBox(height: 8),
                const Text('Bairro',
                    style: TextStyle(
                      color: AppColors.preto,
                      fontSize: 14,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 8),
                TextFormFieldCustom(labelText: 'Bairro', controller: bairroController, hint: 'Informe o seu bairro', type: TextInputType.text),
                const SizedBox(height: 8),
                const Text('CEP',
                    style: TextStyle(
                      color: AppColors.preto,
                      fontSize: 14,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 8),
                TextFormFieldCustom(labelText: 'CEP', controller: cepController, hint: 'Informe o seu CEP', type: TextInputType.number),
                const SizedBox(height: 16),
                const Text('Representante',
                    style: TextStyle(
                      color: AppColors.preto,
                      fontSize: 17,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 16),
                const Text('Nome Completo',
                    style: TextStyle(
                      color: AppColors.preto,
                      fontSize: 14,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 8),
                TextFormFieldCustom(
                    labelText: 'Nome Completo', controller: nomeCompletoController, hint: 'Informe seu nome completo', type: TextInputType.text),
                const SizedBox(height: 8),
                const Text('CPF',
                    style: TextStyle(
                      color: AppColors.preto,
                      fontSize: 14,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 8),
                TextFormFieldCustom(labelText: 'CPF', controller: cpfController, hint: 'Informe seu CPF', type: TextInputType.number),
                const SizedBox(height: 16),
                const Text('Definir Senha',
                    style: TextStyle(
                      color: AppColors.preto,
                      fontSize: 17,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 4),
                const Text('A senha deve ter entre 6 e 8 caracteres.',
                    style: TextStyle(
                      color: AppColors.branco,
                      fontSize: 12,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 16),
                const Text('Senha',
                    style: TextStyle(
                      color: AppColors.preto,
                      fontSize: 14,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 8),
                TextFormFieldCustom(labelText: 'Senha', controller: senhaController, hint: 'Informe sua senha', type: TextInputType.text),
                const SizedBox(height: 8),
                const Text('Confirmar senha',
                    style: TextStyle(
                      color: AppColors.preto,
                      fontSize: 14,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 8),
                TextFormFieldCustom(
                    labelText: 'Confirmar senha', controller: repetirSenhaController, hint: 'Confirme a sua senha', type: TextInputType.number),
                const SizedBox(height: 8),
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
