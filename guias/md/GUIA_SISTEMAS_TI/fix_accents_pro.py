file_path = r"D:\PROYECTOS_FLUTTER\lia_train\guias\md\GUIA_SISTEMAS_TI\guia_final_limpio.md"

with open(file_path, "r", encoding="utf-8", errors="ignore") as f:
    content = f.read()

# Corrección de encoding roto típico
fixes = {
    "Ã¡": "á",
    "Ã©": "é",
    "Ã­": "í",
    "Ã³": "ó",
    "Ãº": "ú",
    "Ã±": "ñ",
    "Ã": "Á",
    "Ã‰": "É",
    "Ã": "Í",
    "Ã“": "Ó",
    "Ãš": "Ú",
    "â€“": "–",
    "â€”": "—",
    "â€œ": "“",
    "â€": "”",
    "â€˜": "‘",
    "â€™": "’"
}

for wrong, correct in fixes.items():
    content = content.replace(wrong, correct)

with open(file_path, "w", encoding="utf-8", newline="\n") as f:
    f.write(content)

print("Acentos corregidos PRO ✅")