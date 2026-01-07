import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/counter_provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
        elevation: 1.5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Text("${context.watch<CounterProvider>().count}", style: TextStyle(fontSize: 40, color: Colors.teal)),
            SizedBox(height: 150),
            GestureDetector(
              onTap: () {
                context.read<CounterProvider>().updateCount();
              },
              child: Container(
                height: 50,
                width: 250,
                alignment: .center,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Text(
                  "Tap to Increment",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                context.read<CounterProvider>().resetCount();
              },
              child: Container(
                height: 50,
                width: 250,
                alignment: .center,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: Text(
                  "Reset",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
