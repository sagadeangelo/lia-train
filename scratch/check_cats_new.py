
import re

def check_categories(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    categories = set(re.findall(r"category:\s*'([^']*)'", content))
    return categories

if __name__ == "__main__":
    path = r'd:\PROYECTOS_FLUTTER\lia_train\lib\data\questions_admin_new.dart'
    cats = check_categories(path)
    print(f"Categories found in {path}: {cats}")
