import "package:flutter/material.dart";
import "package:flutter_avancado_aula1/widgets/flag_container.dart";

typedef FlagWidgetOnChange = void Function(bool newValue);

class FlagWidget extends StatefulWidget {
  final bool initialValue;
  final FlagWidgetOnChange onChange;

  const FlagWidget(
      {required this.initialValue, required this.onChange, super.key});

  @override
  State<FlagWidget> createState() => _FlagWidgetState();
}

class _FlagWidgetState extends State<FlagWidget> {
  bool _value = false;


  @override
  void initState() {
    _value = widget.initialValue;
  }

  void _click() {
    setState(() {
      _value = !_value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        firstChild: GestureDetector(
            onTap: _click,
            child: FlagContainer(value: false)),
        secondChild: GestureDetector(
          onTap: _click,
          child: FlagContainer(
            value: true,
          ),
        ),
        crossFadeState:
            (_value ? CrossFadeState.showSecond : CrossFadeState.showFirst),
        duration: Duration(milliseconds: 300));
  }
}
