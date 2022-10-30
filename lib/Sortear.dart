import 'package:flutter/material.dart';
import 'package:lula_ou_bolso/Resultado.dart';
import 'dart:math';

class Sortear extends StatefulWidget {
  const Sortear({Key? key}) : super(key: key);

  @override
  State<Sortear> createState() => _SortearState();
}

class _SortearState extends State<Sortear> {

  void _exibirResultado(){

    var itens = ["lula", "bolsonaro"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Resultado(resultado),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            //Imagem titulo
            Image.asset("images/lulaoubolsonaro.jpeg"),

            //botao jogar
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("images/botao_jogar.png"),
            ),

          ],
        ),
      ),
    );
  }
}


