import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:welfarebrothers_for_worker/utils/input_decoration.dart';

enum TextInputMode { text, number }

class WelfarebrothersInput extends StatefulWidget {
  final Object text;
  final validator;
  final onChanged;
  final String labelText;
  final TextInputMode textInputMode;
  final TextInputType textInputType;

  @override
  _WelfarebrothersInput createState() => _WelfarebrothersInput();

  WelfarebrothersInput(
      {Object text,
      String labelText,
      Function validator,
      Function onChanged,
      TextInputMode textInputMode,
      TextInputType textInputType})
      : this.text = text,
        this.labelText = labelText,
        this.validator = validator,
        this.onChanged = onChanged,
        this.textInputMode = textInputMode ?? TextInputMode.text,
        this.textInputType = textInputType ?? TextInputType.text;
}

class _WelfarebrothersInput extends State<WelfarebrothersInput> {
  TextEditingController _controller;
  @override
  void initState() {
    setState(() {
      _controller = TextEditingController(text: widget.text != null ? widget.text.toString() : null);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var textInputType = widget.textInputType;
    var inputFormatters;
    if (widget.textInputMode == TextInputMode.number) {
      textInputType = TextInputType.number;
      inputFormatters = [
        FilteringTextInputFormatter.deny(
          RegExp("^0"),
        ),
        FilteringTextInputFormatter.digitsOnly,
      ];
    }
    return TextFormField(
      validator: widget.validator,
      controller: _controller,
      autovalidateMode: AutovalidateMode.always,
      inputFormatters: inputFormatters,
      keyboardType: textInputType,
      decoration: inputDecoration(context, widget.labelText),
      onChanged: (value) {
        widget.onChanged(value);
      },
    );
  }
}
