import 'package:flutter/material.dart';

void main() {
  runApp(meuApp());
}

class meuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
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
                trailing: Icon(Icons.add),
                onTap: () {
                  // Update the state of the app.
                  // ...
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
                shape: Border(
                    bottom: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0), width: 1)),
                trailing: Icon(Icons.person_pin),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                  title: const Text('Sair'),
                  trailing: Icon(Icons.power_settings_new),
                  onTap: () {})
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          actions: [
            IconButton(
              icon: Image.asset(
                'assets/icone.png',
              ),
              onPressed: () {},
            )
          ],
          title: Text('Frase da semana'),
          centerTitle: true,
        ),
        body: frases(),
      ),
    );
  }
}

Widget frases() {
  return (MaterialApp(
    home: Scaffold(
      body: SafeArea(
          left: true,
          right: false,
          top: false,
          bottom: true,
          child: FractionallySizedBox(
              widthFactor: 0.8,
              heightFactor: 0.5,
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'Negociação de Sucesso',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'A apresentação da proposta personalizada para o cliente é o nosso diferencial para fechamento do negócio.',
                  ),
                  Text(
                      'Quando fazemos uma proposta para o cliente até o fechamento leva-se em média 40 dias.'),
                  Text(
                      'Devido a isso é tão importante ter um momento com o cliente onde devemos reforçar toda consultoria feita em obra, debater os detalhes dos ambientes e reforçar todos os beneficios do produto.'),
                  Text(
                      'Com isso, além de lembrar o cliente do que fizemos passamos segurança e autoridade para finalizar a venda'),
                  Text(
                      'O que acha disso? Conte uma experiência positiva que já teve.')
                ],
              ))),
    ),
  ));
}
