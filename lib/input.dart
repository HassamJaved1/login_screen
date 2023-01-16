import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Input extends StatelessWidget {
  String text;
  Icon icon;

  Input({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: icon,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Color(0xffE4E7EB)),
          ),
          filled: true,
          fillColor: const Color(0xffF8F9FA),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE4E7EB))),
          errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: Colors.red)),
          focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: Colors.red)),
          errorStyle: const TextStyle(color: Colors.red),
          errorMaxLines: 1,
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    );
  }
}
