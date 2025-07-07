import 'package:flutter/material.dart';

class InicialV extends StatelessWidget {
  const InicialV({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
      centerTitle: true,
      title: const Text('Chat con OpenRouterAI',style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.black,
    ),
    body: Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Ingresa tu pregunta para la IA:',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    labelText: 'Escribe tu pregunta...' ,
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text('Enviar', style: TextStyle(color: Colors.black),),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
        );
  }
}