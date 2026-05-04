import re
import os

file_path = r'd:\PROYECTOS_FLUTTER\lia_train\lib\data\questions.dart'

with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
    lines = f.readlines()

new_lines = []
i = 0
while i < len(lines):
    line = lines[i]
    
    # Fix the multi-line string issue
    if "text: '" in line and "'," not in line and "'''" not in line and "Question(" not in lines[min(i+1, len(lines)-1)]:
        # Potential multi-line string
        j = i + 1
        combined_text = line.rstrip()
        found_end = False
        while j < len(lines) and j < i + 10:
            combined_text += " " + lines[j].strip()
            if "'," in lines[j]:
                found_end = True
                break
            if "options:" in lines[j] or "Question(" in lines[j]:
                break
            j += 1
        
        if found_end:
            new_lines.append(combined_text + "\n")
            i = j + 1
            continue
        else:
            # Truly truncated field or missing fields
            # Let's see if we should just close it to make it valid
            print(f"Truncated text field at line {i+1}, fixing by closing it.")
            new_lines.append(line.rstrip() + "',\n")
            # We also need to check if the next lines are missing options etc.
            i += 1
            continue

    new_lines.append(line)
    i += 1

with open(file_path, 'w', encoding='utf-8') as f:
    f.writelines(new_lines)

print("Finished processing.")
