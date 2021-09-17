import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SoundNullSafety extends StatelessWidget {
  const SoundNullSafety({Key? key}) : super(key: key);

  final String aString = 'Beginning Flutter with Dart'; // Cannot be null.
  final String? aNullableString = null; // Can be null.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nullable Fields Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.brown[100],
              child: Text(
                'A String is $aString.',
                style: const TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.redAccent,
              child: Text(
                'A nullable String is $aNullableString.',
                style: const TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
