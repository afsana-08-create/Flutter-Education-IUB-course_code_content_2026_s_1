import 'package:flutter/material.dart';

class CoreInputField extends StatefulWidget {

  final TextEditingController controller;
  final TextInputType? keyboardType;
  final int? maxLines;
  final String labelText;
  final String? Function(String?)? validator;

  const CoreInputField({super.key, required this.controller, this.keyboardType, this.maxLines, required this.labelText, this.validator});

  @override
  State<CoreInputField> createState() => _CoreInputFieldState();
}

class _CoreInputFieldState extends State<CoreInputField> {


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      maxLines: widget.maxLines ?? 1,
      decoration: InputDecoration(
        labelText: widget.labelText,
        border: OutlineInputBorder(),
      ),


      validator: widget.validator,
    );
  }
}
