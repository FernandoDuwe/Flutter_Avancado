import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/models/pergunta_model.dart";

class ShowMilhaoWidget extends StatefulWidget {
  final PerguntaModel perguntaModel;

  const ShowMilhaoWidget({ required this.perguntaModel, super.key});

  @override
  State<ShowMilhaoWidget> createState() => _ShowMilhaoWidgetState();
}

class _ShowMilhaoWidgetState extends State<ShowMilhaoWidget> {
  int? _opcaoRespondida;

  String getTextoResposta() {
    if (_opcaoRespondida == null)
      return "Clique abaixo para responder";

    return (widget.perguntaModel.responder(_opcaoRespondida!)
        ? "Certa resposta!" : "Resposta incorreta");
  }

  Color? getColorResposta() {
    if (_opcaoRespondida == null)
      return null;

    return (widget.perguntaModel.responder(_opcaoRespondida!)
        ? Colors.green : Colors.red);
  }

  Color? getColorRespostaItem(int item) {
    if (_opcaoRespondida == null)
      return null;

    return widget.perguntaModel.responder(item) ? Colors.lightGreen : Colors.redAccent;
  }

  List<Widget> getRespostas() {
    List<Widget> widgetList = [];

    widget.perguntaModel.respostas.forEach((element) {
      widgetList.add(ListTile(
        title: Text(element.titulo, style: TextStyle(color: getColorRespostaItem(element.id),)),
        onTap: _opcaoRespondida == null ? () {
          setState(() {
            _opcaoRespondida = element.id;
          });
        } : null,
      ));
    });

    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          height: 200,
          color: getColorResposta(),
          child: Text(getTextoResposta()),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.perguntaModel.pergunta),
          ),
        ),
        ...getRespostas()
      ],
    );
  }
}
