import 'package:amount_without_vat/Functions/functions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _spWithVat = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vat reducer'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _spWithVat,
              decoration: const InputDecoration(
                labelText: 'SP With VAT',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                if (_spWithVat.text.isEmpty) return;
                double spWithoutVatAmount =
                    spWithoutVat(double.parse(_spWithVat.text));
              },
              child: const Text('Calculate'),
            ),
          )
        ],
      ),
    );
  }
}
