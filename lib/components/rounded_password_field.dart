import 'package:flutter/material.dart';
import 'package:hotel_search/components/text_field_container.dart';
import 'package:hotel_search/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  TextEditingController controller;
   RoundedPasswordField({
    Key key,
    this.onChanged,
    this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: controller,
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,size: 17,
            color: Color(0xff008d4b),
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Color(0xff008d4b),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
