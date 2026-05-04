
import re

def check_merged():
    path_main = r'd:\PROYECTOS_FLUTTER\lia_train\lib\data\questions.dart'
    path_admin = r'd:\PROYECTOS_FLUTTER\lia_train\lib\data\questions_admin_new.dart'
    
    with open(path_main, 'r', encoding='utf-8') as f:
        main_content = f.read()
    with open(path_admin, 'r', encoding='utf-8') as f:
        admin_content = f.read()
        
    def count_cat(content, cat):
        return len(re.findall(f"category:\\s*['\"]{cat}['\"]", content))
    
    print(f"Main Bank Admin: {count_cat(main_content, 'Administración')}")
    print(f"Admin New Bank Admin: {count_cat(admin_content, 'Administración')}")

if __name__ == "__main__":
    check_merged()
