import re
import os

source_file = r'D:\PROYECTOS_FLUTTER\lia_train\guias\md\GUIA_SISTEMAS_TI\guia_ultra_clean.md'

def main():
    try:
        with open(source_file, 'r', encoding='utf-8') as f:
            content = f.read()
    except UnicodeDecodeError:
        with open(source_file, 'r', encoding='latin-1') as f:
            content = f.read()

    print(f"Content length: {len(content)}")
    print(f"First 500 chars: {content[:500]!r}")
    
    matches = re.findall(r'## CASO \d+', content)
    print(f"Number of matches found: {len(matches)}")
    
    if len(matches) > 0:
        print(f"First match: {matches[0]}")

if __name__ == "__main__":
    main()
