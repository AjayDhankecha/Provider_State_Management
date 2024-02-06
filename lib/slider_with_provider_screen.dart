import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider_state_management.dart';

class SliderWithProvider extends StatefulWidget {
  const SliderWithProvider({super.key});

  @override
  State<SliderWithProvider> createState() => _SliderWithProviderState();
}

class _SliderWithProviderState extends State<SliderWithProvider> {
  @override
  Widget build(BuildContext context) {
    final slidProvider = Provider.of<SliderProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Slider With Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<SliderProvider>(
              builder: (context, value, child) {
                return Slider(
                    activeColor: Colors.green,
                    inactiveColor: Colors.red,
                    max: 1,
                    min: 0,
                    value: value.val,
                    onChanged: (newVal) {
                      slidProvider.getValue(newVal);
                    });
              },
            ),
            Consumer<SliderProvider>(
              builder: (context, value, child) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 100,
                          color: Colors.red.withOpacity(value.val),
                          child: const Center(
                            child: Text('Red'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 100,
                          color: Colors.green.withOpacity(value.val),
                          child: const Center(child: Text('Green')),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
