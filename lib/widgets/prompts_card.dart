import 'package:flutter/material.dart';
import '../models/prompt_model.dart';
import '../screens/prompt_details_screen.dart';

class PromptCard extends StatefulWidget {
  final PromptModel prompt;

  const PromptCard({
    super.key,
    required this.prompt,
  });

  @override
  State<PromptCard> createState() => _PromptCardState();
}

class _PromptCardState extends State<PromptCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => PromptDetailsScreen(prompt: widget.prompt),
            ),
          );
        },
        child: ListTile(
          contentPadding: const EdgeInsets.all(16),

          leading: CircleAvatar(
            radius: 30,
            child: Text(
              widget.prompt.icon,
              style: const TextStyle(fontSize: 20),
            ),
          ),

          title: Text(
            widget.prompt.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

          subtitle: Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(widget.prompt.description),
          ),

          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                icon: Icon(
                  isFavorite
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: Colors.red,
                ),
              ),

              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}