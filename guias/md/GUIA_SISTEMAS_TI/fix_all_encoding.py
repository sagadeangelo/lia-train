import re

file_path = r"D:\PROYECTOS_FLUTTER\lia_train\guias\md\GUIA_SISTEMAS_TI\guia_final_limpio.md"

with open(file_path, "r", encoding="utf-8", errors="ignore") as f:
    content = f.read()

# Eliminar caracteres de control invisibles
content = re.sub(r'[\x00-\x08\x0b\x0c\x0e-\x1f\x7f-\x9f]', '', content)

# Reemplazos comunes rotos (muy importante)
replacements = {
    "├í": "á",
    "├®": "é",
    "├¡": "í",
    "├│": "ó",
    "├║": "ú",
    "├▒": "ñ",
    "├æ": "Á",
    "├ë": "É",
    "├ì": "Í",
    "├ô": "Ó",
    "├Ü": "Ú",
    "├æ": "Á",
    "├╣": "Ú"
}

for k, v in replacements.items():
    content = content.replace(k, v)

# Guardar limpio
with open(file_path, "w", encoding="utf-8", newline="\n") as f:
    f.write(content)

print("Archivo limpiado correctamente ✅")