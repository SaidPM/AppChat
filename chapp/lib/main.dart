import 'package:chapp/features/home/presentation/initialview.dart';
import 'package:flutter/material.dart';

import 'features/home/presentation/failureview.dart';
import 'features/home/presentation/loadingview.dart';
import 'features/home/presentation/succesview.dart';

void main(){
  runApp(Pol());

}

class Pol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatAI',
      home: SuccesV()
    );
  }
}


