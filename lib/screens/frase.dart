// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Frases extends StatelessWidget {
  const Frases({super.key});

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
                ),
              ),
              const SizedBox(height: 16.0),
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 45,
                animation: true,
                animationDuration: 1000,
                lineHeight: 5,
                percent: 0.94,
                progressColor: Colors.blue,
              ),
              const SizedBox(height: 16.0),
              const SizedBox(height: 16.0),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.orange,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.green,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.green,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.green,
                      ),
                    ],
                  )),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}