import re
import os

file_path = r'd:\PROYECTOS_FLUTTER\lia_train\lib\data\questions.dart'
backup_path = file_path + '.bak'

if not os.path.exists(backup_path):
    with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()
    with open(backup_path, 'w', encoding='utf-8') as f:
        f.write(content)

with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
    lines = f.readlines()

new_lines = []
i = 0
while i < len(lines):
    line = lines[i]
    # Check for truncated Question (missing fields)
    if "Question(" in line:
        # Look ahead to see if it closes before the next Question
        j = i + 1
        found_close = False
        while j < len(lines) and "Question(" not in lines[j] and j < i + 20: # Limit lookahead
            if ")," in lines[j] or ");" in lines[j]:
                found_close = True
                break
            j += 1
        
        if not found_close:
            print(f"Skipping truncated Question at line {i+1}")
            # Skip until next Question
            i = j
            continue

    # Fix unclosed strings on single lines that are supposed to be multi-line
    if "text: '" in line and "'," not in line and "'''" not in line:
        # Check if the next line(s) contain the rest of the string and ',
        j = i + 1
        combined_text = line.strip()
        while j < len(lines) and "'," not in lines[j] and "options:" not in lines[j] and "Question(" not in lines[j]:
            combined_text += " " + lines[j].strip()
            j += 1
        
        if j < len(lines) and "'," in lines[j]:
            combined_text += " " + lines[j].strip()
            # Ensure it ends with ',
            if not combined_text.endswith("',"):
                 # maybe it has something after ',
                 pass
            new_lines.append("    " + combined_text + "\n")
            i = j + 1
            continue
        else:
            # It's truly truncated or weird
            print(f"Truly broken string at line {i+1}: {line.strip()}")
            # We'll keep it for now and let the "truncated Question" check handle it if it doesn't close
            new_lines.append(line)
            i += 1
            continue
    
    new_lines.append(line)
    i += 1

with open(file_path, 'w', encoding='utf-8') as f:
    f.writelines(new_lines)

print("Finished processing.")
