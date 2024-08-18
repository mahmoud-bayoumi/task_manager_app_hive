import 'package:flutter/material.dart';
import 'package:task_manager_app/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFED42C),
      appBar: AppBar(
        backgroundColor: const Color(0xffFED42C),
        title: const Text(
          'Notes',
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return const CustomNote();
          },
        ),
      ),
      floatingActionButton: IconButton.filled(
        style: IconButton.styleFrom(
          iconSize: 35,
          backgroundColor: Colors.black,
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
