import re
import sys

def fix_questions_dart(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()

    chunks = content.split('  Question(')
    if len(chunks) <= 1: return
    
    header = chunks[0]
    fixed_chunks = []
    
    for i, chunk in enumerate(chunks[1:], 1):
        if not ('options:' in chunk and 'correctIndex:' in chunk):
            print(f'Dropping broken Question (index {i}): {chunk[:100].strip()}...')
            continue
            
        match = re.search(r"text:\s*'(.*?)',\s*options:", chunk, re.DOTALL)
        if match:
            original_text = match.group(1)
            safe_text = original_text.replace("'''", "''' + \"'''\" + r'''")
            safe_text = safe_text.replace('\\$', '$')
            new_text_prop = f"text: r'''{safe_text}''',\n    options:"
            chunk = chunk[:match.start()] + new_text_prop + chunk[match.end():]
            
        fixed_chunks.append(chunk)

    new_content = header + '  Question('.join(fixed_chunks)
    
    if not new_content.strip().endswith('];'):
        if new_content.strip().endswith(')'):
            new_content += ',\n];\n'
        elif new_content.strip().endswith(','):
            new_content += '\n];\n'
        else:
            new_content += '\n];\n'

    with open(filepath, 'w', encoding='utf-8') as f:
        f.write(new_content)
        
    print('Fixed', filepath)

if __name__ == '__main__':
    fix_questions_dart(sys.argv[1])
