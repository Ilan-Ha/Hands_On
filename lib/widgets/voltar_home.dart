import 'package:flutter/material.dart';

class VoltarHome extends StatelessWidget {
  const VoltarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240.0,
      height: 45,
      child: FloatingActionButton(
        elevation: 0,
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text(
          " Voltar para Home",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
