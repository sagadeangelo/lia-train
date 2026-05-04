import re

def fix_questions(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    def escape_options(m):
        options_text = m.group(0)
        return re.sub(r'(?<!\\)\$', r'\$', options_text)
    content = re.sub(r'options:\s*\[.*?\]', escape_options, content, flags=re.DOTALL)
    
    def fix_text(m):
        original_text = m.group(1)
        safe_text = original_text.replace("'''", "''' + \"'''\" + r'''")
        safe_text = safe_text.replace('\\$', '$')
        return f"text: r'''{safe_text}''',\n    options:"
    
    content = re.sub(r"text:\s*'(.*?)',\s*options:", fix_text, content, flags=re.DOTALL)

    # Let's also remove broken questions by finding Question(...) where it's totally cut off
    # Wait, in the first script, I used chunks.
    # Instead of chunks, let's just use regex to find Question( ... )
    
    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(content)

fix_questions('d:/PROYECTOS_FLUTTER/lia_train/lib/data/questions.dart')
