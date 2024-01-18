import 'package:flutter/material.dart';

AppBar appbar(String title1) => AppBar(
  title: Text(title1,style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
  backgroundColor: const Color(0xFF6762FF),
  centerTitle: true,
  iconTheme: const IconThemeData(
    color: Colors.white, //change your color here
  ),
);