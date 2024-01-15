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
<<<<<<< Updated upstream
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [Inicio()],
=======
            const frases(),
            comentarios(),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class frases extends StatelessWidget {
  const frases({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          )),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).padding.top),
              const SizedBox(height: 12.0),
              const Text(
                "Negociação de Sucesso",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'A apresentação da proposta personalizada para o cliente é o nosso diferencial para fechamento do negócio.',
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 16.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Quando fazemos uma proposta para o cliente até o fechamento leva-se em média 40 dias.',
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 16.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Devido a isso é tão importante ter um momento com o cliente onde devemos reforçar toda consultoria feita em obra, debater os detalhes dos ambientes e reforçar todos os benefícios do produto.',
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 16.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Com isso, além de lembrar o cliente do que fizemos passamos segurança e autoridade para finalizar a venda',
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 16.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'O que acha disso? Conte uma experiência positiva que já teve.',
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Por: João Ricardo Olinquevicz.',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 10),
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
    return const Column(
      children: [
        Frases(),
        SizedBox(height: 16.0),
        Comentarios(),
      ],
=======
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.0),
                  Text(
                    'Teste testilson',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like',
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 16.0),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Icon(Icons.favorite_border),
                ),
              ],
            ),
          ],
        ),
      ),
>>>>>>> Stashed changes
    );
  }
}