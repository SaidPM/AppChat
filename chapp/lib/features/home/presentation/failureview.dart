import 'package:flutter/material.dart';

class FailureV extends StatelessWidget {
  const FailureV({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Error Ocurrido'),
      backgroundColor: Colors.red,
      centerTitle: true,
    ),
    body: Center(
      child: Column(
        children: [
          const SizedBox(height: 35),
          Image.network(
            'https://png.pngtree.com/png-vector/20220607/ourmid/pngtree-vector-error-icon-white-exclamation-icon-vector-png-image_13830166.png',
            height: 200,
          ),
          const SizedBox(height: 15),
          const Text(
            'Algo salio mal ',
            style: TextStyle(fontSize: 23, color: Colors.red),
          ),
          const SizedBox(height: 15),
          Image.network(
            'https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExcHlkeWd6cnN6ajRibHF0ZzdtcWdnc3g2dTFtc3M2Z2EzZm53eHd6ZyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/1VT3UNeWdijUSMpRL4/giphy.gif',
            height: 150,
          ),
        ],
      ),
    ),
    );
  }
}
