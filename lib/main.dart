import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
   @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Já pensaram no poder curativo das gargalhadas?",
    "Faça seus medos terem medo de você.",
    "Nós caímos para aprendermos a nos levantar!",
    "Não é o que sou por dentro, é o que eu faço que me define.",
    "Para superar o medo, você precisa se tornar o medo.",
    "Sabe por que caímos ? Para aprendermos a levantar....",
    "Eu não vou matar você... mas também não tenho nenhuma obrigação de salvá-lo.",
    "A noite é mais sombria um pouco antes do amanhecer.",
    "Paramos de procurar monstros embaixo da nossa cama quando percebemos que eles estão dentro de nós.",
    "As vezes as pessoas merecem mais que a verdade, merecem ter sua fé recompensada.",
    "Se um dia você perder a confiança em mim, eu quero que você continue confiando nas pessoas.",
    "As pessoas são tão boas quando o mundo as deixa ser.",
    "Se você é bom em alguma coisa, nunca a faça de graça.",
    "Quando se percebe o perigo, devemos ficar alerta e traçar uma estratégia para superá-lo.",
    "Às vezes, a verdade não é boa o bastante. Às vezes, as pessoas merecem mais. Às vezes, merecem ter toda a sua fé recompensada.",
    "A ferramenta de um homem é a arma de outro.",
    "Todo aquele circo para enterrar um caixão vazio."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){

    var numeroSorteado = Random().nextInt( _frases.length );

    setState(() {
     
    _fraseGerada = _frases[ numeroSorteado ];

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Batman"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        /*decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber)
        ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),
            RaisedButton(
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                ),
              color: Colors.black,
              onPressed: _gerarFrase,
            )
          ],
        ),
      ),
    );
  }
}