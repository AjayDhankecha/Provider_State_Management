import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/count_example_with_provider_screen.dart';
import 'package:provider_state_management/provider_state_management.dart';
import 'package:provider_state_management/slider_with_provider_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => SliderProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SliderWithProvider(),
      ),
    );
  }
}
