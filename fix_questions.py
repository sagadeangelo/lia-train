import re
import sys

def fix_questions_dart(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    # Split the content by "  Question("
    # Note that the very first chunk will be the imports and start of the list.
    chunks = content.split('  Question(')
    
    header = chunks[0]
    fixed_chunks = []
    
    for i, chunk in enumerate(chunks[1:], 1):
        # check if this chunk is a valid Question. It should have "id:", "text:", "options:"
        if not ('options:' in chunk and 'correctIndex:' in chunk):
            print(f"Dropping broken Question (index {i}): {chunk[:100].strip()}...")
            continue
            
        # Fix the text attribute if it spans multiple lines or has unescaped $
        # We can look for "text: '" and the next "'," or "',\n"
        # However, it's safer to use regex to find the text value.
        # But wait, some text strings might be enclosed in ''' already?
        # Let's find "text: '" or 'text: "'.
        
        # A simple state machine to find the text property and make it a raw triple string
        # Actually, let's just do a regex replace for the text property if it's using single quotes.
        # It's tricky because the text can contain newlines.
        
        # Regex to match: text: ' (anything) ', \n    options:
        # Since it might not end perfectly, let's match from "text: '" to "',\n    options:" or similar
        match = re.search(r"text:\s*'(.*?)',\s*options:", chunk, re.DOTALL)
        if match:
            original_text = match.group(1)
            # escape ''' if it exists inside
            safe_text = original_text.replace("'''", "''' + \"'''\" + r'''")
            
            # replace the matched part with raw triple quotes
            # we also remove \$ since raw string doesn't need escaping for $
            safe_text = safe_text.replace('\\$', '$')
            
            new_text_prop = f"text: r'''{safe_text}''',\n    options:"
            chunk = chunk[:match.start()] + new_text_prop + chunk[match.end():]
            
        fixed_chunks.append(chunk)

    new_content = header + "  Question(".join(fixed_chunks)
    
    # ensure it ends with ];
    if not new_content.strip().endswith('];'):
        if new_content.strip().endswith(')'):
            new_content += ',\n];\n'
        elif new_content.strip().endswith(','):
            new_content += '\n];\n'
        else:
            new_content += '\n];\n'

    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(new_content)
        
    print("Fixed questions.dart successfully.")

if __name__ == '__main__':
    fix_questions_dart('d:/PROYECTOS_FLUTTER/lia_train/lib/data/questions.dart')
