import 'package:flutter/material.dart';

enum ShowDoMilhaoState { semResposta, respostaCerta, respostaErrada }

class ShowDoMilhaoTitle extends StatelessWidget {
  final ShowDoMilhaoState showState;

  const ShowDoMilhaoTitle({required this.showState, Key? key}) : super(key: key);

  Widget _getIcon() {
    switch (this.showState) {
      case ShowDoMilhaoState.semResposta:
          return Icon(Icons.question_mark);

          break;

      case ShowDoMilhaoState.respostaCerta:
        return Icon(Icons.check);
        break;

      case ShowDoMilhaoState.respostaErrada:
        return Icon(Icons.error_outline);
        break;
    }

    return Container();
  }

  String _getText() {
    switch (this.showState) {
      case ShowDoMilhaoState.semResposta:
        return "Responda a pergunta!";

        break;

      case ShowDoMilhaoState.respostaCerta:
        return "Certa resposta!";
        break;

      case ShowDoMilhaoState.respostaErrada:
        return "Que pena, você errou!";
        break;
    }

    return "";
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        this._getIcon(),
        SizedBox(width: 20,),
        Text(this._getText()),
      ],
    );
  }
}
