// ignore: unused_import
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Comentarios extends StatelessWidget {
  const Comentarios({super.key});

  @override
  Widget build(BuildContext context) {
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
                  ),
                  SizedBox(height: 16.0),
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
    );
  }
}