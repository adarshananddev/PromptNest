import '../models/prompt_model.dart';

class PromptService {
  static List<PromptModel> getPrompts() {
    return [
      PromptModel(
        title: "Create a YouTube Script",
        description: "Generate engaging YouTube video scripts.",
        category: "Content",
        icon: "🎥",
      ),
      PromptModel(
        title: "Instagram Caption",
        description: "Write viral Instagram captions.",
        category: "Marketing",
        icon: "📸",
      ),
      PromptModel(
        title: "AI Image Prompt",
        description: "Generate realistic AI image prompts.",
        category: "Design",
        icon: "🖼️",
      ),
      PromptModel(
        title: "Resume Builder",
        description: "Create ATS-friendly resumes.",
        category: "Career",
        icon: "📄",
      ),
      PromptModel(
        title: "Study Notes",
        description: "Generate quick study notes.",
        category: "Education",
        icon: "📚",
      ),
    ];
  }
}