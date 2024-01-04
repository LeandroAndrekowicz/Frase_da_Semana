// ignore_for_file: unused_import, unnecessary_new, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'screens/frase.dart';
import 'screens/comentarios.dart';
import 'components/rodape.dart';
import 'screens/sugerirFrase.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      home: MeuApp(),
    );
  }
}

// ignore: camel_case_types, use_key_in_widget_constructors
class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Sugerir frase'),
                trailing: const Icon(Icons.add),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Builder(
                        builder: (BuildContext context) {
                          return const SugerirFraseScreen();
                        },
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('Últimos Sorteios'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Editar meu Perfil'),
                shape: const Border(
                    bottom: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0), width: 1)),
                trailing: const Icon(Icons.person_pin),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                  title: const Text('Sair'),
                  trailing: const Icon(Icons.power_settings_new),
                  onTap: () {})
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          actions: [
            IconButton(
              icon: Image.asset(
                'assets/icone.png',
              ),
              onPressed: () {},
            )
          ],
          title: const Text('Frase da semana'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [Inicio()],
                ),
              ),
            ),
            const Rodape(), // Rodape fixo na parte inferior da tela
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types, use_key_in_widget_constructors
class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Frases(),
        SizedBox(height: 16.0),
        Comentarios(),
      ],
    );
  }
}