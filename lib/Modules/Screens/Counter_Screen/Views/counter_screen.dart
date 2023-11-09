import 'package:contact_diary_app_2/Modules/Screens/Counter_Screen/Providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter_Screen extends StatelessWidget {
  const Counter_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Consumer<CounterProvider>(
        builder: (ctx, cp, _) => FloatingActionButton(
          onPressed: () {
            cp.increment();
          },
          child: Icon(Icons.add),
        ),
      ),
      appBar: AppBar(
        title: Text("Counter Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (ctx, cp, _) => Text(
            "${cp.counter.count}",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
      ),
    );
  }
}
