import 'package:flutter/material.dart';
import '../models/prompt_model.dart';
import '../screens/prompt_details_screen.dart';

class PromptCard extends StatelessWidget {
  final PromptModel prompt;

  const PromptCard({
    super.key,
    required this.prompt,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => PromptDetailsScreen(prompt: prompt),
            ),
          );
        },
        child: ListTile(
          contentPadding: const EdgeInsets.all(16),

          leading: CircleAvatar(
            radius: 28,
            child: Text(
              prompt.icon,
              style: const TextStyle(fontSize: 22),
            ),
          ),

          title: Text(
            prompt.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

          subtitle: Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(prompt.description),
          ),

          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}