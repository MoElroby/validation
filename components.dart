import 'package:flutter/material.dart';

Widget defaultButton ({
  required double width  ,
  required Color background ,
  required Function() function ,
  required String text ,
  double? radius   ,

}) => Container(

  width: width,
  decoration:

  BoxDecoration(borderRadius: BorderRadius.circular(radius!) , color: background)
  ,
  child: MaterialButton(
    onPressed: ( )
    {
      function!( ) ;
    }
     ,
    child: Text(
      text.toUpperCase(),
      style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white),
    ),
  ),
);

Widget defaultFormField  ({
    required TextEditingController  controler ,
  required TextInputType type ,
      Function? onsubmited  ,
    Function? onchange  ,
  required String label ,
  required IconData prefix ,
  required Function? valiadtror ,



}) => TextFormField(
  controller: controler,
  keyboardType: type,
  onFieldSubmitted: (value ){

    onsubmited!(value );
  }  ,

    onChanged: (value) {
    onchange!(value);
  },

  validator: (value)
  {  return valiadtror!(value); },

  decoration: InputDecoration(
      labelText: label,
      prefixIcon: Icon(prefix),
      suffixIcon: Icon(Icons.remove_red_eye),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),


);
