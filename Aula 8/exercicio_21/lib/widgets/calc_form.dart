import 'package:exercicio_21/stores/calc_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class CalcForm extends StatelessWidget {
  const CalcForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, labelText: "Valor 1"),
                onChanged: Provider.of<CalcStore>(context).setValue1,
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, labelText: "Valor 2"),
                onChanged: Provider.of<CalcStore>(context).setValue2,
              ),
              Observer(
                builder: (context) {
                  if (!Provider.of<CalcStore>(context).hasError)
                    return Container(
                      height: 0,
                      width: 0,
                    );

                  return Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      Provider.of<CalcStore>(context).errorMessage,
                      style: TextStyle(color: Colors.red),
                    ),
                  );
                },
              )
            ],
          ),
        ),
        Observer(
          builder: (context) => Text(
            Provider.of<CalcStore>(context).result.toStringAsFixed(2),
            style: TextStyle(fontSize: 48, color: Colors.deepPurple),
          ),
        )
      ],
    );
  }
}
