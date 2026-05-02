import os
import re

directory = r"D:\PROYECTOS_FLUTTER\lia_train\guias\md"

offensive_words = [
    r"(?i)\basilad[oa]s?\b",
    r"(?i)\batroz(mente)?\b",
    r"(?i)\bcrud[oa]s?\b",
    r"(?i)\bmud[oa]s?\b",
    r"(?i)\bcieg[oa]s?\b",
    r"(?i)\basimétric[oa]s?\b",
    r"(?i)\bcínic[oa]s?\b",
    r"(?i)\bpasiv[oa]s?\b",
    r"(?i)\bpur[oa]s?\b",
    r"(?i)\bformal(es)?\b",
    r"(?i)\blógic[oa]s?\b",
    r"(?i)\btemporal(es)?\b",
    r"(?i)\banalític[oa]s?\b",
    r"(?i)\bestátic[oa]s?\b",
    r"(?i)\btransaccional(es)?\b",
    r"(?i)\bconstante(s)?\b",
    r"(?i)\basíncron[oa]s?\b"
]

def clean_file(filepath):
    with open(filepath, "r", encoding="utf-8") as f:
        content = f.read()
        
    for word in offensive_words:
        content = re.sub(word, "", content)
        
    # fix spaces
    content = re.sub(r" [ \t]+", " ", content)
    content = content.replace(" ,", ",")
    content = content.replace(" .", ".")
    content = content.replace("( ", "(")
    content = content.replace(" )", ")")
    content = content.replace("\n \n", "\n\n")
    
    with open(filepath, "w", encoding="utf-8") as f:
        f.write(content)
    print(f"Cleaned {filepath}")

for i in range(1, 11):
    path = os.path.join(directory, f"bloque{i}.md")
    if os.path.exists(path):
        clean_file(path)
