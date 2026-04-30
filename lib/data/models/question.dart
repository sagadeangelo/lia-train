class Question {
  final String id;
  final String text;
  final List<String> options;
  final int correctIndex;
  final String category;
  final String difficulty;
  final String? subtopic; // Agregado para análisis granular

  Question({
    required this.id,
    required this.text,
    required this.options,
    required this.correctIndex,
    required this.category,
    required this.difficulty,
    this.subtopic,
  });

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'],
      text: map['text'],
      options: List<String>.from(map['options']),
      correctIndex: map['correctIndex'],
      category: map['category'],
      difficulty: map['difficulty'],
      subtopic: map['subtopic'],
    );
  }
}
