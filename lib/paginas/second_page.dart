import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:hands_on/widgets/adicionar_item.dart';
import 'package:hands_on/widgets/voltar_home.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<int> numero = [0];
  int n = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          centerTitle: true,
          title: const Text(
            "List Page",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                width: 300,
                height: 420,
                child: Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: ListView(
                    children: [
                      for (int i = 0; i < n; i++)
                        AdicionarItem(contador: numero[i + 1]),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: SizedBox(
                        width: 240.0,
                        height: 45,
                        child: FloatingActionButton(
                          elevation: 0,
                          backgroundColor: Colors.red,
                          onPressed: () {
                            setState(() {
                              n = n + 1;
                              numero.add(numero.length);
                            });
                          },
                          child: const Text(
                            " Adicionar Item",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const VoltarHome(),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
