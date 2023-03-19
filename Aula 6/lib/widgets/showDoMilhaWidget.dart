import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/models/questionModel.dart';
import 'package:flutter_avancado_aula4/widgets/showDoMilhaoTitle.dart';

class ShowDoMilhaoWidget extends StatefulWidget {
  final QuestionModel pergunta;

  const ShowDoMilhaoWidget({required this.pergunta, Key? key})
      : super(key: key);

  @override
  State<ShowDoMilhaoWidget> createState() => _ShowDoMilhaoWidgetState();
}

class _ShowDoMilhaoWidgetState extends State<ShowDoMilhaoWidget> {
  bool _respondida = false;
  int _resposta = -1;

  ShowDoMilhaoState _getState() {
    if (this._respondida) if (this.widget.pergunta.isCorrreta(this._resposta))
      return ShowDoMilhaoState.respostaCerta;
    else
      return ShowDoMilhaoState.respostaErrada;

    return ShowDoMilhaoState.semResposta;
  }

  Color _getContainerColor() {
    if (this._getState() == ShowDoMilhaoState.respostaCerta)
      return Colors.green;

    if (this._getState() == ShowDoMilhaoState.respostaErrada) return Colors.red;

    return Colors.grey;
  }

  Color _getRespostaColor(int prCurrentIndex) {
    if (this._getState() == ShowDoMilhaoState.semResposta) return Colors.white;

    if (this.widget.pergunta.isCorrreta(prCurrentIndex)) return Colors.green;

    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: this._getContainerColor(),
                    height: double.infinity,
                    width: double.infinity,
                    child: ShowDoMilhaoTitle(showState: this._getState()),
                  ),
                ),
                Text(this.widget.pergunta.pergunta)
              ],
            )),
        Flexible(
            flex: 1,
            child: ListView.builder(
                itemCount: this.widget.pergunta.respostas.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                      onPressed:
                          (this._getState() == ShowDoMilhaoState.semResposta
                              ? () {
                                  setState(() {
                                    this._respondida = true;
                                    this._resposta = index;
                                  });
                                }
                              : null),
                      child: Text(
                        this.widget.pergunta.respostas[index],
                        style: TextStyle(color: this._getRespostaColor(index)),
                      ));
                }))
      ],
    );
  }
}
