
import re

with open(r'd:\PROYECTOS_FLUTTER\lia_train\lib\data\questions.dart', 'r', encoding='utf-8') as f:
    content = f.read()

counts = {}
# Match both single and double quotes
matches = re.findall(r"category:\s*['\"]([^'\"]*)['\"]", content)
for cat in matches:
    counts[cat] = counts.get(cat, 0) + 1

print(counts)
