import 'package:flutter/material.dart';
import 'package:task_it/features/home/presentation/screens/home_screens.dart';

import 'core/utils/helpers/helper_methods.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        navigatorKey: navKey,
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Almarai',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomeScreen(),
    );
    }
}
