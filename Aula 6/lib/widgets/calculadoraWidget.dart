import 'package:flutter/material.dart';

class CalculadoraWidget extends StatefulWidget {
  const CalculadoraWidget({Key? key}) : super(key: key);

  @override
  State<CalculadoraWidget> createState() => _CalculadoraWidgetState();
}

class _CalculadoraWidgetState extends State<CalculadoraWidget> {
  double resultado = 0;

  TextEditingController valor1Controller = TextEditingController();
  TextEditingController valor2Controller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool _internalValidation(BuildContext context) {
    if ((this.valor1Controller.text == "") ||
        (this.valor2Controller.text == ""))
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            String vrContent = (this.valor1Controller.text == ""
                ? "O valor 1 é obrigatório"
                : "O valor 2 é obrigatório");

            return AlertDialog(
              title: Text("Erro!"),
              content: Text(vrContent),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Ok"))
              ],
            );
          });

    return (this.valor1Controller.text != "") &&
        (this.valor2Controller.text != "");
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value == "") return "O valor 1 é obrigatório";
            },
            controller: valor1Controller,
            key: ValueKey<String>("calculadora_valor1"),
            decoration: InputDecoration(labelText: "Valor 1"),
          ),
          TextFormField(
            controller: valor2Controller,
            validator: (value) {
              if (value == "") return "O valor 2 é obrigatório";
            },
            key: ValueKey<String>("calculadora_valor2"),
            decoration: InputDecoration(labelText: "Valor 2"),
          ),
          ElevatedButton(
              key: ValueKey<String>("calculadora_soma"),
              onPressed: () {
                // if (this._formKey.currentState!.validate())
                if (this._internalValidation(context))
                  setState(() {
                    resultado = double.parse(valor1Controller.text) +
                        double.parse(valor2Controller.text);
                  });
              },
              child: Text("Soma")),
          ElevatedButton(
              onPressed: () {
                // if (this._formKey.currentState!.validate())
                if (this._internalValidation(context))
                  setState(() {
                    resultado = double.parse(valor1Controller.text) -
                        double.parse(valor2Controller.text);
                  });
              },
              child: Text("Subtração")),
          ElevatedButton(
              onPressed: () {
                // if (this._formKey.currentState!.validate())
                if (this._internalValidation(context))
                  setState(() {
                    resultado = double.parse(valor1Controller.text) *
                        double.parse(valor2Controller.text);
                  });
              },
              child: Text("Multiplicação")),
          ElevatedButton(
              onPressed: () {
                // if (this._formKey.currentState!.validate())
                if (this._internalValidation(context))
                  setState(() {
                    resultado = double.parse(valor1Controller.text) /
                        double.parse(valor2Controller.text);
                  });
              },
              child: Text("Divisão")),
          Text(
              key: ValueKey<String>("calculadora_resultado"),
              "${this.resultado.toStringAsFixed(2)}")
        ],
      ),
    );
  }
}
