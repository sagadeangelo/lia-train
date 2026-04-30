import '../models/question.dart';

abstract class IQuizRepository {
  Future<List<Question>> getQuestions({String? category, QuestionDifficulty? difficulty});
}

class MockQuizRepository implements IQuizRepository {
  @override
  Future<List<Question>> getQuestions({String? category, QuestionDifficulty? difficulty}) async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));
    
    return [
      const Question(
        id: '1',
        text: '¿Cuál es la función principal de un Gateway en redes?',
        options: [
          'Conectar redes con diferentes protocolos',
          'Almacenar páginas web',
          'Asignar direcciones IP estáticas',
          'Cifrar el tráfico local'
        ],
        correctIndex: 0,
        category: 'Redes',
        difficulty: QuestionDifficulty.medium,
        explanation: 'Un Gateway o puerta de enlace actúa como punto de enlace entre dos redes con protocolos y arquitecturas diferentes.',
      ),
      const Question(
        id: '2',
        text: 'En SQL, ¿cuál comando se utiliza para eliminar todos los registros de una tabla sin borrar la estructura?',
        options: ['DELETE', 'DROP', 'TRUNCATE', 'REMOVE'],
        correctIndex: 2,
        category: 'Bases de Datos',
        difficulty: QuestionDifficulty.easy,
      ),
      const Question(
        id: '3',
        text: '¿Qué principio de SOLID establece que una clase debe tener una sola razón para cambiar?',
        options: [
          'Open/Closed Principle',
          'Single Responsibility Principle',
          'Liskov Substitution Principle',
          'Interface Segregation Principle'
        ],
        correctIndex: 1,
        category: 'Programación',
        difficulty: QuestionDifficulty.medium,
      ),
      const Question(
        id: '4',
        text: '¿Cuál es la complejidad temporal promedio de búsqueda en un Hash Map?',
        options: ['O(n)', 'O(log n)', 'O(1)', 'O(n log n)'],
        correctIndex: 2,
        category: 'Programación',
        difficulty: QuestionDifficulty.hard,
      ),
    ];
  }
}
