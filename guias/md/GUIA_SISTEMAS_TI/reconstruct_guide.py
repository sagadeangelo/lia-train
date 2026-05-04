import re
import os

source_file = r'D:\PROYECTOS_FLUTTER\lia_train\guias\md\GUIA_SISTEMAS_TI\guia_ultra_clean.md'
target_file = r'D:\PROYECTOS_FLUTTER\lia_train\guias\md\GUIA_SISTEMAS_TI\guia_final_limpio.md'

def fix_encoding(text):
    # Common corruptions in this specific file
    replacements = {
        'AA': 'á',
        'AAc': 'é',
        'AA-': 'í',
        'AA3': 'ó',
        'AA': 'ú',
        'AA': 'ñ',
        'AA ': 'ñ',
        'AA©': 'é',
        'AA¡': 'á',
        'AA³': 'ó',
        'AAº': 'ú',
        'AA±': 'ñ',
        'AA': 'í', # Dangerous but common
    }
    for old, new in replacements.items():
        text = text.replace(old, new)
    
    # Second pass for common words
    text = text.replace('está', 'está')
    text = text.replace('diseñando', 'diseñando')
    text = text.replace('módulo', 'módulo')
    text = text.replace('función', 'función')
    
    return text

def get_difficulty_and_trap(context, question):
    text = (context + " " + question).lower()
    if any(word in text for word in ['vlan', 'subnet', 'ip', 'máscara', 'mscara', 'enrutamiento', 'osi', 'capa']):
        return "Media", "45 segundos", "cálculo / conceptual"
    if any(word in text for word in ['polimorfismo', 'herencia', 'clase', 'objeto', 'patrón', 'singleton', 'mvc']):
        return "Media", "30 segundos", "conceptual"
    if any(word in text for word in ['deadlock', 'hilo', 'thread', 'proceso', 'memoria virtual', 'thrashing', 'mutex']):
        return "Difícil", "60 segundos", "interpretación"
    if any(word in text for word in ['sql', 'join', 'normalización', 'transacción', 'acid', 'índice']):
        return "Media", "40 segundos", "interpretación"
    if any(word in text for word in ['algoritmo', 'complejidad', 'big o', 'árbol', 'pila', 'cola', 'hash']):
        return "Difícil", "50 segundos", "cálculo"
    return "Fácil", "25 segundos", "distracción"

def transform_case(case_num, context, question, options, correct_answer, explanation):
    context = fix_encoding(context)
    question = fix_encoding(question)
    options = fix_encoding(options)
    explanation = fix_encoding(explanation)

    difficulty, time, trap_type = get_difficulty_and_trap(context, question)
    
    first_line = context.strip().split('\n')[0]
    title_match = re.search(r'([A-Z][^.?!]{5,60})', first_line)
    title = title_match.group(1).strip() if title_match else "Análisis Técnico"

    exp_sentences = [s.strip() for s in explanation.replace('\n', ' ').split('.') if s.strip()]
    main_concept = exp_sentences[0] if exp_sentences else "el concepto técnico central del caso"
    
    thinking = f"1. **Identifica el concepto clave:** {main_concept}.\n2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).\n3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas."
    
    opt_lines = [o.strip() for o in options.strip().split('\n') if o.strip()]
    why_wrong = ""
    for opt in opt_lines:
        if not opt.startswith(correct_answer):
            label = opt[0] if len(opt) > 0 else "?"
            desc = opt[3:] if len(opt) > 3 else (opt[2:] if len(opt) > 2 else opt)
            why_wrong += f"*   **Opción {label}**: Es incorrecta porque {desc.lower()} no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.\n"

    exam_trap = "El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto."

    return f"""
## CASO {case_num}: {title}

**Dificultad:** {difficulty}
**Tiempo recomendado:** {time}
**Tipo de trampa:** {trap_type}

---

### 📖 Contexto

{context.strip()}

---

### ❓ Pregunta

{question.strip()}

---

### 🧠 Cómo pensar este caso

{thinking}

---

### 🚫 Por qué las otras opciones están mal

{why_wrong.strip()}

---

### 🧠 Trampa del examen

{exam_trap}

---

### ✅ Respuesta correcta:

{correct_answer}
"""

def main():
    try:
        with open(source_file, 'r', encoding='utf-8-sig') as f:
            content = f.read()
    except UnicodeDecodeError:
        with open(source_file, 'r', encoding='latin-1') as f:
            content = f.read()

    case_blocks = re.split(r'## CASO \d+', content)
    case_bodies = case_blocks[1:]

    new_content = """# GUÍA PREMIUM: SISTEMA DE ENTRENAMIENTO TÁCTICO EGEL SISTEMAS TI

# ¿Cómo usar esta guía para aprobar el EGEL?

Esta no es una guía de memorización. Es un **sistema de entrenamiento** diseñado para que desarrolles el criterio técnico que exige el CENEVAL. El EGEL no evalúa cuánto sabes, sino cómo aplicas ese conocimiento bajo presión.

Para maximizar tus resultados:
1. **No busques la respuesta "bonita":** Busca la respuesta técnicamente sólida según el contexto.
2. **Usa el cronómetro:** Entrena tu cerebro para decidir rápido.
3. **Analiza las justificaciones:** La sección "Por qué las otras opciones están mal" es vital para evitar caer en trampas similares en el examen real.

---

# Sistema LIA-Train: Metodología de Alto Rendimiento

### 📘 Método 1: Lectura Inversa
Lee la **pregunta** y las **opciones** ANTES del contexto. Esto te permite filtrar la información relevante y no perder tiempo en detalles decorativos del escenario.

### 🧠 Método 2: Eliminación de Opciones
Aprende a identificar la "opción absurda" y la "opción señuelo". Al descartar, aumentas tus probabilidades de éxito drásticamente incluso en temas que no dominas al 100%.

### 🚨 Método 3: Detección de Trampas
Detecta patrones comunes como la confusión entre capas del modelo OSI, el olvido de las direcciones de red/broadcast en subneteo y la mala interpretación de los pilares de la POO.

---
"""

    processed_count = 0
    for i, body in enumerate(case_bodies):
        case_num = i + 1
        
        # Use very lenient regex for labels
        context = ""
        question = ""
        options = ""
        answer = ""
        explanation = ""

        m = re.search(r'Contexto\s*:(.*?)Pregunta\s*:', body, re.DOTALL | re.IGNORECASE)
        if m: context = m.group(1).strip()
        
        m = re.search(r'Pregunta\s*:(.*?)Opciones\s*:', body, re.DOTALL | re.IGNORECASE)
        if m: question = m.group(1).strip()
        
        m = re.search(r'Opciones\s*:(.*?)Respuesta\s+correcta\s*:', body, re.DOTALL | re.IGNORECASE)
        if m: options = m.group(1).strip()
        
        m = re.search(r'Respuesta\s+correcta\s*:\s*([A-D])', body, re.IGNORECASE)
        if m: answer = m.group(1).strip()
        
        m = re.search(r'Explicaci[^\n]*?:\s*(.*)', body, re.DOTALL | re.IGNORECASE)
        if m:
            explanation = m.group(1).strip()
            explanation = re.split(r'\n---|\\newpage|# BLOQUE', explanation)[0].strip()

        if context and question and options and answer and explanation:
            new_content += transform_case(case_num, context, question, options, answer, explanation)
            processed_count += 1
        
        if case_num % 20 == 0:
            new_content += """
---

## 🧠 Lo que aprendiste en este bloque

*   Arquitectura de red, direccionamiento IP y jerarquía OSI.
*   Normalización de bases de datos y manipulación de datos con SQL.
*   Gestión de recursos en sistemas operativos y concurrencia.
*   Diseño de algoritmos, estructuras de datos y complejidad computacional.

## 🚨 Trampas frecuentes

*   **Capas Confusas:** No distinguir entre fallas de transporte (Capa 4) y de aplicación (Capa 7).
*   **Cálculos de Subneteo:** Olvidar restar las 2 IPs reservadas (red y broadcast).
*   **Concurrencia:** Confundir un Deadlock con una Inanición (Starvation).

---
"""

    new_content += """
# 🚨 Errores que te hacen reprobar el EGEL

*   **No leer las restricciones:** Ignorar detalles como "sin presupuesto" o "hardware existente".
*   **Dudar de la técnica:** Cambiar una respuesta basada en principios por una "sensación".
*   **Gestión del tiempo:** Perder demasiado tiempo en un solo reactivo complejo.

---

## 🧠 Consejo final

"El EGEL no evalúa tu memoria. 
Evalúa tu capacidad de pensar como un Ingeniero bajo presión."

---
"""

    with open(target_file, 'w', encoding='utf-8') as f:
        f.write(new_content)
    
    print(f"Successfully processed {processed_count} cases.")

if __name__ == "__main__":
    main()
