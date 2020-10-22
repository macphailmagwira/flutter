import 'package:flutter/material.dart';
import 'package:hotel_search/components/text_field_container.dart';
import 'package:hotel_search/constants.dart';

class RoundedInputField extends StatelessWidget {
TextEditingController controller;
   String hintText;
   IconData icon;
   ValueChanged<String> onChanged;
 RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration( 
          icon: Icon( 
            icon, size: 17,
            color: Color(0xff008d4b),
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
