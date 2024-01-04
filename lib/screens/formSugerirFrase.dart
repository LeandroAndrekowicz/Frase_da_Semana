// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FormSugerirFrase extends StatelessWidget {
  const FormSugerirFrase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sugestão de frase'),
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          TituloFrase()
        ],
      ),
      ) 
    );

  }
}

class TituloFrase extends StatelessWidget {
  const TituloFrase({Key? key}) : super(key: key); // Constructor for the StatelessWidget

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            keyboardType: TextInputType.text,
            maxLength: 150,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Titulo da Frase',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Insira aqui a Frase',
            ),
          ),
        ),
        const Column(
          children: [
            Align(
              // ignore: sort_child_properties_last
              child: Text('Adicione arquivos aqui', 
              style: TextStyle(height: 10, fontSize: 20),), 
              alignment: Alignment.topLeft
            ),
            Column(
              children: [
                Center(
                child: Image(image: AssetImage('assets/add.png'),
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover, 
                  alignment: Alignment.center,
                  ),
                ),
                Text("Toque em '+' para adicionar arquivos")
              ],
            )
          ],
        )
      ],
    );
  }
}