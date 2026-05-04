import re
import os

source_file = r'D:\PROYECTOS_FLUTTER\lia_train\guias\md\GUIA_SISTEMAS_TI\guia_ultra_clean.md'

def main():
    with open(source_file, 'r', encoding='utf-8-sig') as f:
        content = f.read()

    case_blocks = re.split(r'## CASO \d+', content)
    if len(case_blocks) > 1:
        with open('body_dump.txt', 'w', encoding='utf-8') as f:
            f.write(case_blocks[1])
        print("Dumped body 1 to body_dump.txt")

if __name__ == "__main__":
    main()
