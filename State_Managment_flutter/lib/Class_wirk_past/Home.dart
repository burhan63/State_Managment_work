import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Home Screen"),
      ),
      body: const Column(
        children: [
          Text("Welcome to Home Screen"),
        ],
      ),
    );
  }
}