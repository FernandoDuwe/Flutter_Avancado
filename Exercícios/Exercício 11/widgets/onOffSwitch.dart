import 'package:flutter/material.dart';

typedef OnOffSwitchResponseCallBack = void Function(bool prNewValue);

class OnOffSwitch extends StatelessWidget {
  final bool isOn;
  final OnOffSwitchResponseCallBack onChange;

  const OnOffSwitch({required this.isOn, required this.onChange, Key? key})
      : super(key: key);

  Widget _getSwitch(List<Color> prColor, Alignment prSwitchPosition) {
    return Container(
      height: 50,
      width: 150,
      alignment: prSwitchPosition,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            gradient: LinearGradient(colors: [
              Colors.white30,
              Colors.white30,
              Colors.white
            ]),
            border: Border.all(
                color: Colors.black12, width: 1, style: BorderStyle.none)),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: prColor),
          border: Border.all(
              color: Colors.black12, width: 3, style: BorderStyle.solid)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        this.onChange(!this.isOn);
      },
      child: AnimatedCrossFade(
          firstChild: this._getSwitch(
              [Colors.white, Colors.red, Colors.redAccent], Alignment.topLeft),
          secondChild: this._getSwitch([
            Colors.green,
            Colors.lightGreen,
            Colors.lightGreenAccent,
            Colors.white
          ], Alignment.topRight),
          crossFadeState: (this.isOn
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond),
          duration: Duration(milliseconds: 500)),
    );
  }
}
