import 'package:flutter/material.dart';

import '../models/paramModel.dart';
import 'onOffSwitch.dart';

class OnOffSwitchAnimated extends StatelessWidget {
  final ParamModel model;
  final OnOffSwitchChange onChange;

  const OnOffSwitchAnimated(
      {required this.model, required this.onChange, Key? key})
      : super(key: key);

  Widget _getSwitch(List<Color> prColors, Alignment prAlignment) {
    return Container(
      height: 50,
      width: 100,
      alignment: prAlignment,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: LinearGradient(colors: prColors)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => this.onChange(!this.model.active),
      child: AnimatedSwitcher(
        transitionBuilder: (child, animation) {
          return ScaleTransition(
            scale: animation,
            child: child,
          );
        },
        duration: Duration(milliseconds: 300),
        child: (this.model.active
            ? this._getSwitch([Colors.red, Colors.redAccent], Alignment.topLeft)
            : this._getSwitch(
                [Colors.green, Colors.lightGreenAccent], Alignment.topRight)),
      ),
    );
  }
}
