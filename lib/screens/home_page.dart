import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        color: Colors.lightBlueAccent,
        height: 50,
        width: 200,
        child: const Center(
          child: DefaultTextStyle(
              style: TextStyle(fontSize: 40, color: Colors.yellow),
              child: Text('Успешно'),
            ),
        )
        ),
      );
  }
}