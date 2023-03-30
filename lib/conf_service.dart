
import 'package:flutter/material.dart';

class ConfService{

  Size getScreenSize (BuildContext context){
    return MediaQuery.of(context).size;
  }
}