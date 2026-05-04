
import chardet

def check_encoding(file_path):
    with open(file_path, 'rb') as f:
        raw_data = f.read()
    result = chardet.detect(raw_data)
    return result

if __name__ == "__main__":
    path = r'd:\PROYECTOS_FLUTTER\lia_train\lib\data\questions.dart'
    try:
        encoding = check_encoding(path)
        print(f"Encoding: {encoding}")
    except ImportError:
        print("chardet not installed")
        # Fallback to simple check
        with open(path, 'rb') as f:
            header = f.read(4)
        print(f"Header bytes: {header}")
