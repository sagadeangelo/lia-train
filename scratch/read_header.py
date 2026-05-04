
import os

path = r'd:\PROYECTOS_FLUTTER\lia_train\lib\data\questions.dart'
with open(path, 'rb') as f:
    content = f.read(100)
print(f"Header: {content}")
