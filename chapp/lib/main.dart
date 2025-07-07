import 'package:chapp/features/home/presentation/initialview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Pol());

}

class Pol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatAI',
      home: InicialV()

      );
    
  }

}

