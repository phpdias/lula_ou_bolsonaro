import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String valor;

  Resultado(this.valor);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    var caminhoImagem;
    if(widget.valor == "lula"){
      caminhoImagem = "images/lula.jpg";
    }else{
      caminhoImagem = "images/bolso.png";
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            //Imagem moeda
            Image.asset(caminhoImagem),

            //botao voltar
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset("images/botao_voltar.png"),
            ),

          ],
        ),
      ),
    );
  }
}
