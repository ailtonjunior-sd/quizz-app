import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado, {super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(
        color: Colors.black,
      ),
      backgroundColor: Colors.blue,
    );

    return Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: quandoSelecionado,
          style: style,
          child: Text(texto),
        ));
  }
}
