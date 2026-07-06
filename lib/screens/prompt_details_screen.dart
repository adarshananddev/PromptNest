import 'package:flutter/material.dart';
import '../models/prompt_model.dart';

class PromptDetailsScreen extends StatelessWidget {
  final PromptModel prompt;

  const PromptDetailsScreen({
    super.key,
    required this.prompt,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(prompt.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              prompt.icon,
              style: const TextStyle(fontSize: 60),
            ),

            const SizedBox(height: 20),

            Text(
              prompt.title,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Text(
              prompt.description,
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 25),

            Chip(
              label: Text(prompt.category),
            ),
          ],
        ),
      ),
    );
  }
}