import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF1F5A);
const kGreyOutlineColor = Color(0xFF747474);

GetTextFieldDecoration(String label) {
  return InputDecoration(
    focusColor: kPrimaryColor,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: const BorderSide(
        width: 1.0,
        color: kPrimaryColor,
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(7),
      borderSide: const BorderSide(
        width: 1.0,
        color: kGreyOutlineColor,
      ),
    ),
    labelText: label,
  );
}
