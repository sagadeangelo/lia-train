import os

directory = r'D:\PROYECTOS_FLUTTER\lia_train\guias\md'

def fix_encoding(text):
    try:
        return text.encode('latin1').decode('utf-8')
    except:
        return text

for i in range(1, 11):
    path = os.path.join(directory, f'bloque{i}.md')
    
    if os.path.exists(path):
        with open(path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        
        fixed = fix_encoding(content)
        
        with open(path, 'w', encoding='utf-8') as f:
            f.write(fixed)

# reconstruir archivo final
outfile = open(os.path.join(directory, 'guia_final_correcto.md'), 'w', encoding='utf-8')

outfile.write("# Guía EGEL Sistemas Computacionales Premium\n\n")

for i in range(1, 11):
    path = os.path.join(directory, f'bloque{i}.md')
    if os.path.exists(path):
        with open(path, 'r', encoding='utf-8') as f:
            outfile.write(f.read() + "\n\n")

outfile.close()

print("✔ Encoding corregido correctamente")