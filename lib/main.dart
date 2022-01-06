import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final String _title = "Frases do dia";
  final String _textButton = "Gerar nova frase!";

  final _phrases = [
    "Seja o piloto de suas histórias e voe o mais alto que conseguir.",
    "Algumas vezes, coisas ruins acontecem em nossas vidas para nos colocar na direção das melhores coisas que poderíamos viver.",
    "Nenhuma noite é escura demais para aqueles que têm luz própria.",
    "Se a caminhada está difícil, é porque você está no caminho certo.",
    "A vida é de quem se atreve a viver.",
    "Quando algo ruim acontece, você tem três escolhas: deixar isso definir você, deixar isso destruir você ou fazer isso te deixar mais forte.",
    "Você é mais corajoso do que pensa, mais forte do que parece e mais esperto do que acredita.",
    "Seja humilde para admitir seus erros, inteligente para aprender com eles e maduro para corrigi-los.",
    "Prefira o sorriso, faz bem a você e aos que estão ao seu redor. Dê risada de tudo, de si mesmo. Não adie alegrias. Seja feliz hoje!",
    "Nunca deixe de lutar por medo de errar ou de se machucar. As feridas com o tempo se curam, mas as oportunidades não voltam.",
    "Viver não é esperar a tempestade passar, é aprender a dançar na chuva."
  ];

  String generatedPhrase = "Clique abaixo para gerar uma frase!";

  void generate(){
    var randomNumber = Random().nextInt(_phrases.length);
    setState(() {
      generatedPhrase = _phrases[randomNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Text(
              generatedPhrase,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black),
            ),
            ElevatedButton(
              onPressed: generate,
              child: Text(
                _textButton,
                style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            )
          ],
        ),
      ),
    );
  }
}
