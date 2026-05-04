import re

file_path = r'd:\PROYECTOS_FLUTTER\lia_train\lib\data\questions.dart'

with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
    lines = f.readlines()

broken_lines = []
for i, line in enumerate(lines):
    if "text: '" in line and "'," not in line:
        # Check if it's a multi-line string (rare in this file format)
        if i + 1 < len(lines) and "options:" not in lines[i+1]:
             broken_lines.append((i + 1, line.strip()))

for line_num, content in broken_lines:
    print(f"Line {line_num}: {content}")
