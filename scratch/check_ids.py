
import re

path_main = r'd:\PROYECTOS_FLUTTER\lia_train\lib\data\questions.dart'
path_admin = r'd:\PROYECTOS_FLUTTER\lia_train\lib\data\questions_admin_new.dart'

with open(path_main, 'r', encoding='utf-8') as f:
    ids_main = set(re.findall(r"id:\s*['\"]([^'\"]*)['\"]", f.read()))
with open(path_admin, 'r', encoding='utf-8') as f:
    ids_admin = set(re.findall(r"id:\s*['\"]([^'\"]*)['\"]", f.read()))

overlap = ids_main.intersection(ids_admin)
print(f"Overlap: {len(overlap)}")
print(f"Unique in Main: {len(ids_main - ids_admin)}")
print(f"Unique in Admin: {len(ids_admin - ids_main)}")
