// ignore: file_names
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sugestão de Frase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FormSugerirFrase(),
    );
  }
}

class FormSugerirFrase extends StatelessWidget {
  // ignore: use_super_parameters
  const FormSugerirFrase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sugestão de frase'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TituloFrase(),
          ],
        ),
      ),
    );
  }
}

class TituloFrase extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables, use_super_parameters
  TituloFrase({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _TituloFraseState createState() => _TituloFraseState();
}

class _TituloFraseState extends State<TituloFrase> {
  XFile? imagem;
  XFile? imagemAnterior;

  Future<void> _selecionarImagem() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? imagemSelecionada = await _picker.pickImage(
      source: ImageSource.gallery,
    );

    if (imagemSelecionada != null) {
      setState(() {
        imagemAnterior = imagem;
        imagem = imagemSelecionada;
      });
    }
  }

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
        Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Adicione arquivos aqui',
                style: TextStyle(height: 10, fontSize: 20),
              ),
            ),
            Column(
              children: [
                (imagem != null || imagemAnterior != null)
                    ? Image.file(
                        File(imagem?.path ?? imagemAnterior!.path),
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      )
                    : Image.asset(
                        'assets/add.png',
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                        alignment: Alignment.center
                      ),
                      ElevatedButton(
                        child: const Align(
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.add_circle_outlined,
                            color: Colors.green,
                            size: 35,
                          ),
                        ),
                        onPressed: () {
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 150,
                                width: double.infinity,
                                color: Colors.white,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      TextButton(
                                          onPressed: _selecionarImagem, 
                                          child: const Row(
                                            children: [
                                              Icon(Icons.camera),
                                              SizedBox(height: 16.0),
                                              Text('Foto')
                                            ],
                                          )
                                        ),
                                        TextButton(
                                          onPressed: _selecionarImagem, 
                                          child: const Row(
                                            children: [
                                              Icon(Icons.videocam_rounded),
                                              SizedBox(height: 16.0),
                                              Text('Video')
                                            ],
                                          )
                                        ),
                                        TextButton(
                                          onPressed: _selecionarImagem, 
                                          child: const Row(
                                            children: [
                                              Icon(Icons.audiotrack_rounded),
                                              SizedBox(height: 16.0),
                                              Text('Áudio')
                                            ],
                                          )
                                        ),
                                    ],
                                  ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Autores',
                    style: TextStyle(height: 10, fontSize: 20),
                    ),
                  ),
                  Container(
                    color: Colors.amber,
                    child: Text('Sya nae de 51223'),
                  )
                ],
              )
            ],
          );
        }
      }



// Align(
//                   alignment: Alignment.bottomRight,
//                   child: IconButton(
//                     onPressed: _selecionarImagem,
//                     icon: const Icon(
//                       Icons.add_circle_outlined,
//                       color: Colors.green,
//                       size: 35,
//                     ),
//                   ),
//                 )