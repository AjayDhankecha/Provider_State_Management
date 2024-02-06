import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider_state_management.dart';

class CountWithProvider extends StatefulWidget {
  const CountWithProvider({super.key});

  @override
  State<CountWithProvider> createState() => _CountWithProviderState();
}

class _CountWithProviderState extends State<CountWithProvider> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Counter With Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CountProvider>(
              builder: (context, value, child) {
                return Center(
                    child: Text(
                  provider.i.toString(),
                  style: TextStyle(fontSize: 50),
                ));
              },
            ),
            FloatingActionButton(
              onPressed: () {
                provider.changeValue();
              },
              child: Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
