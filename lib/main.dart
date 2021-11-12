import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home()
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var frases = [
    'Você é a luz que me ilumina',
    'Lembranças vão e vem',
    'A noite eu olho pro céu e vejo você',
    'Dancei na chuva pensando em você',
    'Você nunca saberá o que eu realmente sinto por você',
    'Sinto que o amanhã nunca chegará',
    'Durmo pensando em você, e acordo sem ter você ao meu lado',
    'O som da tua voz acalma minha alma',
    'Você está tão distante, mas ao mesmo tempo tão perto',
    'Sonhei com isso a minha vida inteira, mas no final era só um pesadelo',
    'Pensei que seu amor era real, mas no final era apenas um delírio',
  ];

  var gerandoFrase = 'Clique abaixo para gerar uma frase';

  void gerarFrase(){
    var sorted = Random().nextInt( frases.length );

    setState(() {
      gerandoFrase = frases[sorted];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases de Edna'),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
                'assets/images/logo.png'
            ),
            Text(gerandoFrase),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent , // background
                  onPrimary: Colors.black, // foreground
                ),
                onPressed: gerarFrase,
                child: Text('Gerar Frase')
            ),
          ],
        ),
      ),
    );
  }
}
