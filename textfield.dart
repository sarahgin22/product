import 'package:flutter/material.dart';

dynamic kTextInputDefault(String label, dynamic onChanged) {
  return Container(
      padding: EdgeInsets.only(top: 16.0),
      width: double.infinity,
      child: Expanded(
        child: TextFormField(
          onChanged: onChanged,
          decoration: InputDecoration(labelText: label),
        ),
      ));
}