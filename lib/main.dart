import 'package:flutter/material.dart';
import 'package:machine_test/src/controller/api_integration.dart';
import 'package:machine_test/src/view/First_Screen/first_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Api_Intergration>(
      create: (context) => Api_Intergration(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: First_Screen(),
      ),
    );
  }
}
