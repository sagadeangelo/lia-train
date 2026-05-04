
with open(r'd:\PROYECTOS_FLUTTER\lia_train\lib\data\questions.dart', 'r', encoding='utf-8') as f:
    lines = f.readlines()

counts = {}
for line in lines:
    if "category:" in line:
        # Extract category
        import re
        match = re.search(r"category:\s*'([^']*)'", line)
        if match:
            cat = match.group(1)
            counts[cat] = counts.get(cat, 0) + 1

print(counts)
