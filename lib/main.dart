import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('MaterialBanner'),
        ),
        body: Center(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(
                30.0,
              ),
              padding: const EdgeInsets.all(
                25.0,
              ),
              child: const Text(
                'Click the Button below to show MaterialBanner',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(
                30.0,
              ),
              padding: const EdgeInsets.all(
                25.0,
              ),
              child: ElevatedButton(
                child: const Text(
                  'Click Me!',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () =>
                    ScaffoldMessenger.of(context).showMaterialBanner(
                  MaterialBanner(
                    content: const Text(
                      'Hello from Material Banner',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: const Icon(Icons.balcony_outlined),
                    backgroundColor: Colors.amberAccent,
                    actions: [
                      TextButton(
                        child: const Text('Dismiss'),
                        onPressed: () => ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )),
      );
}
