import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'default_stac_options.dart';

void main() {
  Stac.initialize(options: defaultStacOptions);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Stac(routeName: "hello_world"),
    );
  }
}
