
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


InputDecoration AppInputDecoration(LabelTexts){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    border: OutlineInputBorder(),
    labelText: LabelTexts
  );
}


ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.green,  // Color of the background (use 'primary' instead of 'backgroundColor')
    padding: const EdgeInsets.all(18),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
  );
}


SizedBox SizedBox50(child){
  return SizedBox(
    height: 50,
    width: double.infinity,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: child,
    ),
  );
}