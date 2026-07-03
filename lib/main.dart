import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'screens/main_nav_screen.dart';

void main() {
  runApp(const FlowPayApp());
}

class FlowPayApp extends StatelessWidget {
  const FlowPayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flow Pay',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const MainNavScreen(),
    );
  }
}
