import 'package:flutter/material.dart';

class PasswordInputFiled extends StatefulWidget {


  final TextEditingController controller;
  const PasswordInputFiled({super.key, required this.controller});

  @override
  State<PasswordInputFiled> createState() => _PasswordInputFiledState();
}

class _PasswordInputFiledState extends State<PasswordInputFiled> {

  bool _obscureText = true;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.text,
      maxLines: 1,
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: "Password",
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),


      validator: (value) {
        if(value == null || value.isEmpty) {
          return 'Please enter a password';
        }

        else if(value.length < 6) {
          return 'Password must be at least 6 characters long';
        }

        else if(value.length > 20) {
          return 'Password must be less than 20 characters long';
        }

        else if(!RegExp(r'[A-Z]').hasMatch(value)) {
          return 'Password must contain at least one uppercase letter';
        }

        else if(!RegExp(r'[a-z]').hasMatch(value)) {
          return 'Password must contain at least one lowercase letter';
        }

        else if(!RegExp(r'[0-9]').hasMatch(value)) {
          return 'Password must contain at least one digit';
        }

        return null;
      },


    );
  }
}