import 'package:flutter/material.dart';
import 'package:flutter_avancado_aula4/models/paramModel.dart';

typedef OnOffSwitchChange = void Function(bool newValue);

class OnOffSwitch extends StatelessWidget {
  final ParamModel model;
  final OnOffSwitchChange onChange;

  const OnOffSwitch({required this.model, required this.onChange, Key? key}) : super(key: key);

  Widget _getSwitch(List<Color> prColors, Alignment prAlignment) {
    return Container(
      height: 50,
      width: 100,
      alignment: prAlignment,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: LinearGradient(
          colors: prColors
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => this.onChange(!this.model.active),
      child: AnimatedCrossFade(
          firstChild: this._getSwitch([Colors.red, Colors.redAccent], Alignment.topLeft),
          secondChild: this._getSwitch([Colors.green, Colors.lightGreenAccent], Alignment.topRight),
          crossFadeState: (this.model.active
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst),
          duration: Duration(milliseconds: 300)),
    );
  }
}
