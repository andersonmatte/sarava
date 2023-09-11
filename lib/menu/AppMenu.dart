import 'package:flutter/material.dart';

import '../infra/color/AppColors.dart';

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
            pageTitle,
            style: const TextStyle(
              color: Colors.white,
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
              // const DrawerHeader(
              //   decoration: BoxDecoration(
              //       color: Colors.transparent,
              //       image: DecorationImage(
              //         image: AssetImage('assets/images/vinheta.gif'),
              //         fit: BoxFit.fill,
              //       )),
              //   child: Text(''),
              // ),
              ListTile(
                //selectedTileColor: const Color(0xFFFF69B4),
                leading: const Icon(Icons.child_friendly, color: Colors.white),
                title: const Text(
                  'Início',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const FiltrarCriancas(),
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
                leading: const Icon(Icons.favorite, color: Colors.white),
                title: const Text(
                  'Perfil',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const FavoritosPage(),
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
                leading: const Icon(Icons.favorite, color: Colors.white),
                title: const Text(
                  'Mensagem',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const FavoritosPage(),
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
                leading: const Icon(Icons.favorite, color: Colors.white),
                title: const Text(
                  'Ilês',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const FavoritosPage(),
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
                leading: const Icon(Icons.favorite, color: Colors.white),
                title: const Text(
                  'Mapa',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const FavoritosPage(),
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
                leading: const Icon(Icons.favorite, color: Colors.white),
                title: const Text(
                  'Conta',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const FavoritosPage(),
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
                leading: const Icon(Icons.favorite, color: Colors.white),
                title: const Text(
                  'Sobre',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const FavoritosPage(),
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
