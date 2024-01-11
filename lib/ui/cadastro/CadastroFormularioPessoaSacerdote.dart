import 'package:flutter/material.dart';
import 'package:sarava/domain/entidades/Pessoa.dart';
import 'package:sarava/domain/entidades/Protetor.dart';
import 'package:sarava/domain/entidades/Sacerdote.dart';
import 'package:sarava/infra/service/SacerdoteService.dart';

import '../../../infra/color/AppColors.dart';
import '../../../infra/text/SaravaTextFormFieldCustom.dart';
import '../../domain/entidades/Endereco.dart';
import '../../infra/text/SaravaSpacer.dart';
import '../../infra/text/SaravaTextLabelCustom.dart';
import '../../infra/text/SaravaTextLabelGenericCustom.dart';
import '../../infra/toast/ToastCustom.dart';
import '../home/Home.dart';
import 'Cadastro.dart';

class CadastroFormularioPessoaSacerdote extends StatefulWidget {
  String tipoCadastro;

  CadastroFormularioPessoaSacerdote(this.tipoCadastro);

  @override
  CadastroFormularioPessoaSacerdoteState createState() => CadastroFormularioPessoaSacerdoteState();
}

class CadastroFormularioPessoaSacerdoteState extends State<CadastroFormularioPessoaSacerdote> {
  TextEditingController nomeCasaController = TextEditingController();
  TextEditingController orixaController = TextEditingController();
  TextEditingController nacaoController = TextEditingController();
  TextEditingController dataCriacaoCasaController = TextEditingController();
  TextEditingController aprontadoPorController = TextEditingController();
  TextEditingController nomeCompletoController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController emailController = TextEditingController();
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
                const Text('Dados Pessoais',
                    style: TextStyle(
                      color: AppColors.preto,
                      fontSize: 17,
                      fontFamily: 'Poller One',
                      fontWeight: FontWeight.bold,
                    )),
                SaravaSpacer.m(),
                SaravaTextLabelCustom(label: 'Nome Completo'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'Nome Completo', controller: nomeCompletoController, hint: 'Informe seu nome completo', type: TextInputType.text),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'CPF'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(labelText: 'CPF', controller: cpfController, hint: 'Informe seu CPF', type: TextInputType.number),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'E-mail'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'E-mail', controller: emailController, hint: 'Informe seu e-mail', type: TextInputType.emailAddress),
                SaravaSpacer.m(),
                SaravaTextLabelGenericCustom(
                  label: 'Dados da Casa',
                  size: 17,
                  color: AppColors.preto,
                ),
                SaravaSpacer.m(),
                SaravaTextLabelCustom(label: 'Nome da casa'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'Nome da casa', controller: nomeCasaController, hint: 'Informe o nome da casa', type: TextInputType.text),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'Nome do Orixá'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'Nome do Orixá', controller: orixaController, hint: 'Informe o nome do orixá', type: TextInputType.text),
                SaravaSpacer.p(),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: SaravaTextLabelCustom(label: 'Nação'),
                        ),
                        const SizedBox(width: 40),
                        Expanded(
                          flex: 4,
                          child: SaravaTextLabelCustom(label: 'Data de Fundação'),
                        ),
                        SizedBox(width: 8),
                      ],
                    ),
                    SaravaSpacer.p(),
                    Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: SaravaTextFormFieldCustom(
                              labelText: 'Nação', controller: nacaoController, hint: 'Informe a sua nação', type: TextInputType.text),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          flex: 4,
                          child: SaravaTextFormFieldCustom(
                              labelText: 'Data de Fundação', controller: dataCriacaoCasaController, hint: 'Data', type: TextInputType.number),
                        ),
                      ],
                    ),
                  ],
                ),
                SaravaSpacer.p(),
                SaravaTextLabelCustom(label: 'Aprontado Por'),
                SaravaSpacer.p(),
                SaravaTextFormFieldCustom(
                    labelText: 'Aprontado Por', controller: aprontadoPorController, hint: 'Informe quem aprontou você', type: TextInputType.text),
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
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      if (validateFields()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
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
    if (nomeCasaController.text.isEmpty ||
        orixaController.text.isEmpty ||
        emailController.text.isEmpty ||
        nacaoController.text.isEmpty ||
        dataCriacaoCasaController.text.isEmpty ||
        aprontadoPorController.text.isEmpty ||
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

  salvar() async {
    try {
      Protetor protetor = Protetor(
        orixa: orixaController.text,
        lode: 0,
        caboclo: '',
        exu: '',
        exuFechamento: '',
        pretoVelho: '',
        cosme: '',
        tronqueira: '',
      );

      List<Protetor> protetores = [protetor];

      Endereco endereco = Endereco(
        logradouro: '',
        numeroEndereco: '',
        complemento: '',
        bairro: '',
        cep: '',
        cidade: '',
        estado: '',
      );

      Pessoa pessoa = Pessoa(
        login: emailController.text,
        senha: senhaController.text,
        nome: nomeCompletoController.text,
        dataNascimento: DateTime.now(),
        horarioNasc: '',
        idade: '',
        genero: '',
        naturalidade: '',
        nacionalidade: '',
        cpf: cpfController.text,
        contatoTelefonico: [],
        email: [],
        favoritos: [],
        obrigacao: 1,
        dataObrigacao: DateTime.now(),
        endereco: endereco,
        isTamboreiro: 0,
      );

      Sacerdote sacerdote = Sacerdote(
        dataVinculacaoCasa: DateTime.now(),
        dataApronte: DateTime.now(),
        dataCriacaoCasa: DateTime.parse(dataCriacaoCasaController.text),
        nomeCasaDeSanto: nomeCasaController.text,
        quemAprontou: aprontadoPorController.text,
        qualBacia: '',
        qualNacao: nacaoController.text,
        casaAberta: 1,
        protetores: protetores,
        calendario: [],
        casaDeSanto: [],
        filhoDeSanto: [],
        pessoa: pessoa,
      );
      print(sacerdote.protetores.first.lode);
      print(sacerdote.casaAberta);
      print(sacerdote.pessoa.isTamboreiro);
      print(sacerdote.pessoa.obrigacao);
      if (sacerdote.casaAberta != null && sacerdote.pessoa != null) {
        if (await SacerdoteService.salvar(sacerdote)) {
          toastCustom.showToast(context, 'Cadastro salvo com sucesso!');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        } else {
          toastCustom.showToast(context, 'Erro ao realizar cadastro, revise seus dados ou entre em contato com o administrador.');
        }
      }
    } catch (error) {
      // Captura qualquer exceção lançada durante a execução do bloco try
      print('Erro: $error');
      toastCustom.showToast(context, 'Erro durante o cadastro. Por favor, revise seus dados.');
    }
  }
}

// DateTime now = DateTime.now();
// String dataFormatada = DateFormat('dd/MM/yyyy').format(now);
