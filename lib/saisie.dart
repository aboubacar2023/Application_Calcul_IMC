import 'package:flutter/material.dart';

class Saisie extends StatelessWidget {
  Saisie({super.key, required this.refresh});
  final Function refresh;
  double imc = 0;
  double taille = 0;
  double poids = 0;
  final tailleController = TextEditingController();
  final poidsController = TextEditingController();

  void calcul() {
    if (tailleController.text.isEmpty) {
      return;
    } else {
      taille = double.tryParse(tailleController.text) ?? 0;
    }
    taille = double.parse(tailleController.text) / 100;
    poids = double.parse(poidsController.text);
    imc = poids / (taille * taille);
    refresh(imc);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 200,
          child: Center(
            child: Text(
              "Calcul IMC",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        TextField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Saisir la taille",
          ),
          controller: tailleController,
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 16),
        TextField(
          decoration: const InputDecoration(
              border: OutlineInputBorder(), labelText: "Saisir le poids"),
          controller: poidsController,
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 16),
        FilledButton(onPressed: calcul, child: const Text("Calculer")),
      ],
    );
  }
}
