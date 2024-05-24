import 'package:flutter/material.dart';
import 'dart:async';

class ComputationScreen extends StatelessWidget {
  const ComputationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Heavy Computation',
        ),
        backgroundColor: Colors.green,
      ),
      body: FutureBuilder<BigInt>(
        future: heavyComputation(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return Center(child: Text('Result: ${snapshot.data}'));
          } else {
            return const Center(child: Text('No result'));
          }
        },
      ),
    );
  }

  Future<BigInt> heavyComputation() async {
    return await Future<BigInt>.delayed(const Duration(seconds: 2), () {
      int n = 10000000000;
      BigInt bigN = BigInt.from(n);
      BigInt sum = bigN * (bigN + BigInt.one) ~/ BigInt.from(2);
      return sum;
    });
  }
}
