import 'package:flutter/material.dart';

class AdicionarItem extends StatelessWidget {
  final int contador;

  const AdicionarItem({super.key, required this.contador});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: 240,
        height: 45,
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 16),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            Text(
              "Item ${contador.toString()}",
              style: const TextStyle(fontSize: 16),
            ),
            Container(
              padding: const EdgeInsets.only(left: 184),
              child: const Icon(
                Icons.delete,
                size: 28,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
