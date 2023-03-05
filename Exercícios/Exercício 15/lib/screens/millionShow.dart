import 'package:flutter/material.dart';
import 'package:projeto_aula_avancado/models/questionModel.dart';

class MillionShow extends StatefulWidget {
  final QuestionModel model;

  const MillionShow({required this.model, Key? key}) : super(key: key);

  @override
  State<MillionShow> createState() => _MillionShowState();
}

class _MillionShowState extends State<MillionShow> {
  int _currentAnswer = -1;
  bool _answered = false;

  Color _currentColor() {
    if ((this._answered) &&
        (this.widget.model.corretAnswer(this._currentAnswer)))
      return Colors.green;

    if ((this._answered) &&
        (!this.widget.model.corretAnswer(this._currentAnswer)))
      return Colors.red;

    return Colors.blueGrey;
  }

  IconData _currentIcon() {
    if ((this._answered) &&
        (this.widget.model.corretAnswer(this._currentAnswer)))
      return Icons.check_circle_outline_rounded;

    if ((this._answered) &&
        (!this.widget.model.corretAnswer(this._currentAnswer)))
      return Icons.error_outline;

    return Icons.question_mark;
  }

  String _getCurrentText() {
    if ((this._answered) &&
        (this.widget.model.corretAnswer(this._currentAnswer))) return "Certo";

    if ((this._answered) &&
        (!this.widget.model.corretAnswer(this._currentAnswer))) return "Errado";

    return "Responda a pergunta";
  }

  Widget _getOptionButton(int prIndex) {
    Color vrTextColor = Colors.white;

    if (this._answered)
      vrTextColor = (this.widget.model.corretAnswer(prIndex) ? Colors.green : Colors.red);

    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: this._answered
              ? null
              : () {
                  setState(() {
                    this._currentAnswer = prIndex;
                    this._answered = true;
                  });
                },
          child: Text(this.widget.model.options[prIndex], style: TextStyle(color: vrTextColor),)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pergunta"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: this._currentColor(),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(this._currentIcon()),
                  Text(this._getCurrentText()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(this.widget.model.question,
                  style: TextStyle(fontSize: 22)),
            ),
            for (var i = 0; i < this.widget.model.options.length; i++)
              this._getOptionButton(i)
          ],
        ),
      ),
    );
  }
}
