import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart';

import '../provider/counter_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Counter = ref.watch(counterProvider);

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
            Text("$Counter", style: TextStyle(fontSize: 40, color: Colors.teal)),
            SizedBox(height: 150),
            GestureDetector(
              onTap: () {
                ref.read(counterProvider.notifier).state++;
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
                ref.read(counterProvider.notifier).state = 0;
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
