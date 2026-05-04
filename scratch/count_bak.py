
import re

path = r'd:\PROYECTOS_FLUTTER\lia_train\lib\data\questions.dart.bak'
with open(path, 'r', encoding='utf-8') as f:
    content = f.read()

counts = {}
matches = re.findall(r"category:\s*['\"]([^'\"]*)['\"]", content)
for cat in matches:
    counts[cat] = counts.get(cat, 0) + 1

print(counts)
