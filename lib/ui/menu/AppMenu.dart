import 'package:flutter/material.dart';
import 'package:sarava/ui/conta/Conta.dart';
import 'package:sarava/ui/iles/Iles.dart';
import 'package:sarava/ui/mapa/Mapa.dart';
import 'package:sarava/ui/mensagem/Mensagem.dart';
import 'package:sarava/ui/perfil/Perfil.dart';

import '../../infra/color/AppColors.dart';
import '../inicio/Inicio.dart';
import '../sobre/Sobre.dart';

class AppMenu extends StatelessWidget {
  final String pageTitle;
  final Widget pageBody;

  AppMenu({required this.pageTitle, required this.pageBody});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            pageTitle.isEmpty ? 'APP Saravá' : pageTitle,
            style: const TextStyle(
              color: AppColors.preto,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              fontFamily: 'Roboto',
            ),
          ),
          backgroundColor: AppColors.corPrincipal,
        ),
        drawer: Drawer(
          backgroundColor: AppColors.corPrincipal,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(height: 30),
              const UserAccountsDrawerHeader(
                accountName: Text('Pedro da Silva Santos'),
                accountEmail: Text(''),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://www.esportesdp.com.br/static/app/noticia_157970175445/2023/10/20/15742/20231020125505883641o.png',
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                arrowColor: Colors.black, // Cor da seta
              ),
              ListTile(
                //selectedTileColor: const Color(0xFFFF69B4),
                leading: const Icon(Icons.home, color: Colors.white),
                title: const Text(
                  'Início',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const Inicio(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = const Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
              ),
              const Divider(
                color: Colors.white,
                thickness: 0.5,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                leading:
                    const Icon(Icons.person_2_rounded, color: Colors.white),
                title: const Text(
                  'Perfil',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const Perfil(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = const Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
              ),
              const Divider(
                color: Colors.white,
                thickness: 0.5,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                leading:
                    const Icon(Icons.message_outlined, color: Colors.white),
                title: const Text(
                  'Mensagem',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const Mensagem(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = const Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
              ),
              const Divider(
                color: Colors.white,
                thickness: 0.5,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                leading:
                    const Icon(Icons.houseboat_outlined, color: Colors.white),
                title: const Text(
                  'Ilês',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const Iles(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = const Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
              ),
              const Divider(
                color: Colors.white,
                thickness: 0.5,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                leading: const Icon(Icons.map_sharp, color: Colors.white),
                title: const Text(
                  'Mapa',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const Mapa(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = const Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
              ),
              const Divider(
                color: Colors.white,
                thickness: 0.5,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                leading: const Icon(Icons.account_box, color: Colors.white),
                title: const Text(
                  'Conta',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const Conta(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = const Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
              ),
              const Divider(
                color: Colors.white,
                thickness: 0.5,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                leading: const Icon(Icons.info, color: Colors.white),
                title: const Text(
                  'Sobre',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const Sobre(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = const Offset(1.0, 0.0);
                        var end = Offset.zero;
                        var curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        body: pageBody,
      ),
    );
  }
}
