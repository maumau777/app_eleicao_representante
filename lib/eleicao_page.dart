import 'package:flutter/material.dart';

class EleicaoPage extends StatefulWidget {
  const EleicaoPage({super.key});

  @override
  State<EleicaoPage> createState() => _EleicaoPageState();
}

class _EleicaoPageState extends State<EleicaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eleição para representante'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
            'Escolha um candidato ou opte por voto em branco ou nulo:',
            textAlign: TextAlign.center, // Centraliza o texto
            ),
            Wrap(
              children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/candidato_1.jpg',
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                Text('Candidato 1')
                ],
              ),
              SizedBox(width: 16,),
              Column(
                children: [
                  Image.asset(
                    'assets/images/candidato_2.jpg',
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                Text('Candidato 2')
                ],
              ),
              SizedBox(width: 16,),
              Column(
                children: [
                  Image.asset(
                    'assets/images/candidato_3.jpg',
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                Text('Candidato 3')
                ],
              ),
              ],
            ),
            const Wrap(
              children: [
                Column(
                  children: [
                          Icon(
                      Icons.block,
                      size: 200,
                    ),
                    Text('Nulo'),
                  ],
                ),
                Column(
                  children: [
                          Icon(
                  Icons.how_to_vote,
                  size: 200,
                ),
                Text('Branco'),
                  ],
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {}, 
              child: const Text('Finalizar votação'))
          ],
        ),
      ),
    );
  }
}
