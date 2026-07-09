import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

import '../models/prompt_model.dart';

class PromptDetailsScreen extends StatelessWidget {
  final PromptModel prompt;

  const PromptDetailsScreen({
    super.key,
    required this.prompt,
  });

  @override
  Widget build(BuildContext context) {
    final promptText =
        "${prompt.title}\n\n${prompt.description}\n\nCategory: ${prompt.category}";

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

            const SizedBox(height: 20),

            Chip(
              label: Text(prompt.category),
            ),

            const Spacer(),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.copy),
                    label: const Text("Copy"),
                    onPressed: ()  {
                       Clipboard.setData(
                        ClipboardData(text: promptText),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Prompt copied!"),
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.share),
                    label: const Text("Share"),
                    onPressed: () {
                      Share.share(promptText);
                    },
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}