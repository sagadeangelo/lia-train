import os

# ==============================
# CONFIG
# ==============================

base_path = r"D:\PROYECTOS_FLUTTER\lia_train\guias\md\GUIA_DERECHO"

output_file = os.path.join(base_path, "master.md")

# Archivos en orden
files = [
    "casos_derecho_bloque1.md",
    "casos_derecho_bloque2.md",
    "casos_derecho_bloque3.md",
    "casos_derecho_bloque4.md",
    "casos_derecho_bloque5.md",
    "casos_derecho_civil_101_120.md",
    "casos_derecho_civil_121_140.md",
    "casos_derecho_civil_141_160.md",
    "casos_derecho_civil_161_180.md",
    "casos_derecho_civil_181_200.md"
]

# ==============================
# PORTADA REAL (FIX PRINCIPAL)
# ==============================

cover = r"""
\begin{titlepage}
\thispagestyle{empty}
\newgeometry{margin=0cm}

\noindent
\includegraphics[width=\paperwidth,height=\paperheight]{book_law_pdf.png}

\end{titlepage}

\restoregeometry
\clearpage
"""

# ==============================
# INTRO + ESTRATEGIA
# ==============================

intro = """
# GUÍA EGEL DERECHO  
## Sistema de Entrenamiento Táctico LIA-Train

---

## PRESENTACIÓN

Esta guía no es teórica. Es un sistema de entrenamiento diseñado para desarrollar criterio jurídico aplicado bajo presión tipo EGEL.

---

## ESTRATEGIA PARA APROBAR EN UN SOLO INTENTO

El EGEL no mide memoria. Mide decisión jurídica.

- Identifica la figura jurídica en segundos  
- Descarta opciones incorrectas  
- Elige la vía procesal correcta  

---

"""

# ==============================
# ÍNDICE
# ==============================

toc = r"""
\tableofcontents
\clearpage
"""

# ==============================
# FUNCIÓN PARA LEER ARCHIVOS
# ==============================

def read_file(filepath):
    if os.path.exists(filepath):
        with open(filepath, "r", encoding="utf-8") as f:
            return f.read()
    else:
        print(f"⚠️ No encontrado: {filepath}")
        return ""

# ==============================
# GENERACIÓN MASTER
# ==============================

try:
    with open(output_file, "w", encoding="utf-8") as master:

        # 1. PORTADA (SIEMPRE PRIMERA)
        master.write(cover)

        # 2. INTRO
        master.write(intro)

        # 3. ÍNDICE
        master.write(toc)

        # ==============================
        # BLOQUES GENERALES
        # ==============================

        for i in range(1, 6):
            filename = f"casos_derecho_bloque{i}.md"
            filepath = os.path.join(base_path, filename)

            content = read_file(filepath)

            master.write(f"\n# BLOQUE {i} (CASOS {(i-1)*20+1}-{i*20})\n\n")
            master.write(content)
            master.write("\n\n\\clearpage\n")

        # ==============================
        # DERECHO CIVIL
        # ==============================

        master.write("\n# DERECHO CIVIL\n\n")

        civil_ranges = [
            "101_120",
            "121_140",
            "141_160",
            "161_180",
            "181_200"
        ]

        for r in civil_ranges:
            filename = f"casos_derecho_civil_{r}.md"
            filepath = os.path.join(base_path, filename)

            content = read_file(filepath)

            master.write(f"\n## CASOS {r.replace('_','-')}\n\n")
            master.write(content)
            master.write("\n\n\\clearpage\n")

        print("✅ master.md generado correctamente (VERSIÓN PRO)")

except Exception as e:
    print(f"❌ Error: {e}")