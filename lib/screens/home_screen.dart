import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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

            Card(
              elevation: 3,
              child: ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.auto_awesome),
                ),
                title: const Text("Create a YouTube Script"),
                subtitle: const Text(
                  "Generate engaging YouTube video scripts with AI.",
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),

            const SizedBox(height: 10),

            Card(
              elevation: 3,
              child: ListTile(
                leading: const CircleAvatar(
                  child: Icon(Icons.image),
                ),
                title: const Text("AI Image Prompt"),
                subtitle: const Text(
                  "Create realistic image prompts for AI image generators.",
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}