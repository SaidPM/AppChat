import 'package:flutter/material.dart';

class Loadingg extends StatelessWidget {
  const Loadingg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: const Text(
        'Por favor espere',
        style: TextStyle(color: Colors.white),
      ),
    ),
    body: Stack(
      children: [
        Center(
          child: Column(
            children: [
              Image.network(
                'https://img.pikbest.com/png-images/20190918/cartoon-snail-loading-loading-gif-animation_2734139.png!sw800',
                height: 400,
              ),
              const SizedBox(height: 2),
              const SizedBox(height: 15),
              const Text(
                'Cargando...',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    ),
        );
  }
}