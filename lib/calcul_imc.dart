import 'package:flutter/material.dart';
import 'package:flutter_application_1/resultat.dart';
import 'package:flutter_application_1/saisie.dart';

class CalculIMC extends StatefulWidget {
  const CalculIMC({super.key});

  @override
  State<CalculIMC> createState() => _CalculIMCState();
}

class _CalculIMCState extends State<CalculIMC> {
  double imc = 0;
  bool visible = false;

  void refresh(double result) {
    print("Execution du setState");
    visible = true;
    imc = result;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Visibility(
                visible: !visible,
                child: Saisie(
                  refresh: refresh,
                ),
              ),
              Visibility(
                visible: visible,
                child: Resultat(
                  imc: imc,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
