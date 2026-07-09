import 'package:flutter/material.dart';
import '../services/prompt_service.dart';
import '../widgets/prompts_card.dart';
import '../models/prompt_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<PromptModel> allPrompts = PromptService.getPrompts();
  String searchText = "";

  @override
  Widget build(BuildContext context) {
    final filteredPrompts = allPrompts.where((prompt) {
      return prompt.title.toLowerCase().contains(searchText.toLowerCase()) ||
          prompt.description.toLowerCase().contains(searchText.toLowerCase()) ||
          prompt.category.toLowerCase().contains(searchText.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("PromptNest"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            const Text(
              "👋 Hello, Adarsh",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "What would you like to create today?",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 25),

            TextField(
              onChanged: (value) {
                setState(() {
                  searchText = value;
                });
              },
              decoration: InputDecoration(
                hintText: "Search prompts...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Popular Categories",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: const [
                Chip(
                  avatar: Icon(Icons.chat),
                  label: Text("ChatGPT"),
                ),
                Chip(
                  avatar: Icon(Icons.code),
                  label: Text("Coding"),
                ),
                Chip(
                  avatar: Icon(Icons.brush),
                  label: Text("Design"),
                ),
                Chip(
                  avatar: Icon(Icons.school),
                  label: Text("Study"),
                ),
                Chip(
                  avatar: Icon(Icons.campaign),
                  label: Text("Marketing"),
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "🔥 Trending Prompts",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            ...filteredPrompts.map(
              (prompt) => PromptCard(prompt: prompt),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}