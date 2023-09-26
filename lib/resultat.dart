import 'package:flutter/material.dart';

class Resultat extends StatelessWidget {
  const Resultat({super.key, this.imc});
  final imc;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 300,
          ),
          Text(
            "Votre IMC :",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Text(
            imc.toStringAsFixed(2),
            style: Theme.of(context).textTheme.displayLarge,
          )
        ],
      ),
    ));
  }
}
