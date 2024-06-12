import 'package:flutter/material.dart';

class Naviagators{
  static pushNavigate(BuildContext context, Widget page){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> page));
  }
  static popNavigate(BuildContext context){
    Navigator.pop(context);
  }
}