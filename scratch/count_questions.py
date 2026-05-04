
import sys
import os

# Mocking Question class to parse the file
class Question:
    def __init__(self, **kwargs):
        self.category = kwargs.get('category')
        self.difficulty = kwargs.get('difficulty')

def count_questions(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Simple regex-like counting because parsing Dart is hard
    categories = {}
    
    # Find all Question(...) blocks
    import re
    # We look for category: '...' and difficulty: '...'
    questions = re.findall(r"category:\s*'([^']*)'.*?difficulty:\s*'([^']*)'", content, re.DOTALL)
    
    for cat, diff in questions:
        if cat not in categories:
            categories[cat] = {'total': 0, 'easy': 0, 'medium': 0, 'hard': 0, 'high': 0}
        categories[cat]['total'] += 1
        if diff in categories[cat]:
            categories[cat][diff] += 1
            
    return categories

if __name__ == "__main__":
    path = r'd:\PROYECTOS_FLUTTER\lia_train\lib\data\questions.dart'
    counts = count_questions(path)
    for cat, data in counts.items():
        print(f"{cat}: {data}")
