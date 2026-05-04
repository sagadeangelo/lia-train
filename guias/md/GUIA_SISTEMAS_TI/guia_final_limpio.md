---
header-includes:
  - \usepackage{graphicx}
  - \usepackage{geometry}
---

\newgeometry{top=0cm,bottom=0cm,left=0cm,right=0cm}
\thispagestyle{empty}

\noindent
\includegraphics[width=\paperwidth,height=\paperheight]{portada.png}

\clearpage
\restoregeometry
# GUÍA PREMIUM: SISTEMA DE ENTRENAMIENTO TÁCTICO EGEL SISTEMAS TI

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

## CASO 1: Un equipo está diseñando un sistema de comercio electrónic

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un equipo está diseñando un sistema de comercio electrónico. Tienen una clase base "MetodoPago" y clases derivadas como "TarjetaCredito", "PayPal" y "Transferencia". El módulo de cobros necesita ejecutar la función "procesarPago()" sobre una lista de métodos, sin importar cuál sea el método específico en tiempo de compilación.

---

### ❓ Pregunta

¿Qué principio de la Programación Orientada a Objetos se debe aplicar para lograr este comportamiento dinámico?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El polimorfismo permite que un mismo método reaccione y ejecute comportamientos distintos dependiendo de la clase específica instanciada en tiempo de ejecución, permitiendo tratar objetos derivados a través de la interfaz de su clase base.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque abstracciã³n no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque encapsulamiento no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque herencia mãºltiple no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 2: Se requiere segmentar la red 192

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Se requiere segmentar la red 192.168.10.0/24 para asignar un segmento exclusivo al departamento de ventas que requiere exactamente 25 direcciones IP asignables a dispositivos.

---

### ❓ Pregunta

¿Qué máscara de subred de longitud variable (VLSM) es la más óptima para evitar el desperdicio de direcciones IP?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Una máscara /27 deja 5 bits para hosts, lo que permite (2^5) - 2 = 30 direcciones IP asignables.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque /26 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque /28 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque /25 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 3: En una base de datos relacional, la tabla "Ventas" contiene l

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

En una base de datos relacional, la tabla "Ventas" contiene los campos: ID_Venta, Fecha, ID_Cliente, Nombre_Cliente y Correo_Cliente.

---

### ❓ Pregunta

¿Qué regla de normalización está violando el diseño de esta tabla?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Los campos Nombre_Cliente y Correo_Cliente tienen una dependencia funcional hacia ID_Cliente, el cual no es la llave primaria de la tabla (ID_Venta).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque primera forma normal (1fn) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque segunda forma normal (2fn) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque forma normal de boyce-codd (fnbc) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 4: En un sistema operativo servidor, dos procesos simultáneos (

**Dificultad:** Difícil
**Tiempo recomendado:** 60 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

En un sistema operativo servidor, dos procesos simultáneos (P1 y P2) requieren acceso exclusivo a una impresora y a un escáner. P1 bloquea la impresora y espera el escáner. Al mismo tiempo, P2 bloquea el escáner y espera la impresora. Ambos quedan congelados indefinidamente.

---

### ❓ Pregunta

¿Qué anomalía clásica de sistemas operativos se ha presentado en este escenario?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El interbloqueo o Deadlock ocurre cuando dos o más procesos se bloquean mutuamente esperando recursos que ya están retenidos por el otro proceso, creando un ciclo cerrado de espera.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque inaniciã³n (starvation) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque condiciã³n de carrera (race condition) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque paginaciã³n excesiva (thrashing) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 5: Un corporativo gubernamental requiere construir un sistema fi

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

Un corporativo gubernamental requiere construir un sistema financiero con requerimientos legales estrictos, detallados y fijos desde el inicio, donde las regulaciones impiden que el alcance cambie una vez iniciado el desarrollo.

---

### ❓ Pregunta

¿Qué metodología de ciclo de vida del software es la más apropiada para este proyecto?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El modelo en Cascada es ideal para proyectos donde los requerimientos son fijos, claros y no están sujetos a cambios, ya que cada fase debe completarse y documentarse antes de avanzar a la siguiente.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque scrum no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque programaciã³n extrema (xp) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque kanban no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 6: Se necesita implementar un mecanismo de navegación para el b

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

Se necesita implementar un mecanismo de navegación para el botón "Atrás" de un navegador web, donde la última página visitada es la primera que se extrae al presionar el botón.

---

### ❓ Pregunta

¿Qué estructura de datos es la indicada para gestionar este historial de navegación?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Una pila opera bajo el principio LIFO (Last In, First Out).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción B**: Es incorrecta porque cola (queue) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque ãrbol binario no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque grafo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

A

## CASO 7: Un analista necesita buscar un registro específico dentro de

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

Un analista necesita buscar un registro específico dentro de un arreglo de 1 millón de elementos numéricos que ya se encuentran ordenados ascendentemente.

---

### ❓ Pregunta

¿Cuál es la complejidad (Big O) del mejor algoritmo disponible para esta búsqueda?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Como el arreglo ya está ordenado, el algoritmo óptimo es la Búsqueda Binaria.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque o(n) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque o(n log n) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque o(1) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 8: Un ingeniero desarrolla una aplicación para transmisión de

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un ingeniero desarrolla una aplicación para transmisión de video en vivo (Streaming). Prioriza la velocidad de entrega de datos y asume que perder unos cuantos fotogramas es preferible a sufrir retrasos severos de carga.

---

### ❓ Pregunta

Según el Modelo OSI, ¿qué protocolo de la Capa de Transporte debe seleccionar?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** UDP (User Datagram Protocol) es un protocolo no orientado a conexión.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque tcp no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque http no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque icmp no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 9: Una empresa tiene las tablas "Empleados" y "Departamentos"

**Dificultad:** Media
**Tiempo recomendado:** 40 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

Una empresa tiene las tablas "Empleados" y "Departamentos". Se requiere generar un reporte que incluya a todos los departamentos registrados, incluso aquellos que actualmente no tienen ningún empleado asignado.

---

### ❓ Pregunta

Considerando que la tabla "Departamentos" está a la izquierda en la consulta, ¿qué cláusula de unión SQL resuelve el requerimiento?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La operación LEFT JOIN devuelve todos los registros de la tabla izquierda (Departamentos) y las coincidencias de la tabla derecha.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque inner join no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque right join no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque cross join no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 10: Para evitar la sobrecarga de conexiones concurrentes hacia el

**Dificultad:** Media
**Tiempo recomendado:** 30 segundos
**Tipo de trampa:** conceptual

---

### 📖 Contexto

Para evitar la sobrecarga de conexiones concurrentes hacia el motor de base de datos, el arquitecto de software decide que todo el sistema web debe compartir una única y misma instancia de conexión a lo largo de su ejecución.

---

### ❓ Pregunta

¿Qué patrón de diseño de software restringe la instanciación de una clase a un único objeto?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El patrón Singleton garantiza que una clase solo tenga una instancia en todo el ciclo de vida del programa y proporciona un punto de acceso global a ella.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque factory no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque observer no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque decorator no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 11: Un servidor Linux entra en un estado crítico donde el disco

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

Un servidor Linux entra en un estado crítico donde el disco duro emite ruido y el rendimiento de procesamiento decae a casi cero. El administrador descubre que el sistema está intercambiando páginas de memoria entre la RAM y el archivo de paginación de disco incesantemente.

---

### ❓ Pregunta

¿Qué nombre técnico recibe este fenómeno de saturación del Sistema Operativo?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Thrashing o Hiperpaginación ocurre cuando un sistema se sobrecarga de procesos y agota su memoria RAM, dedicando todo su poder computacional a mover datos entre la RAM y el disco duro (Swap) en lugar de procesar instrucciones útiles.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque paginaciã³n segmentada no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque fragmentaciã³n externa no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque inaniciã³n cã­clica no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 12: Al ejecutar una función matemática diseñada con recursivid

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

Al ejecutar una función matemática diseñada con recursividad, la aplicación lanza el error "StackOverflowError" (Desbordamiento de Pila) colapsando la memoria.

---

### ❓ Pregunta

¿Qué componente estructural de la función fue omitido o programado de forma incorrecta, causando el error?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El caso base es la condición de paro que indica a la función recursiva cuándo debe dejar de llamarse a sí misma.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque el iterador de paso no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque la llamada interna no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque la inicializaciã³n de la memoria heap no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 13: Un desarrollador recibe alertas de seguridad

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un desarrollador recibe alertas de seguridad. El log de la aplicación web muestra que atacantes están introduciendo comandos como `' OR '1'='1` en los campos del formulario de inicio de sesión.

---

### ❓ Pregunta

¿Qué mecanismo de la ingeniería de software es el estándar primario para mitigar este tipo específico de ataque a nivel de código de base de datos?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El ataque es una Inyección SQL.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque hashear las contraseã±as no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque certificados ssl no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque encriptaciã³n no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 14: Un empleado no puede acceder al portal interno mediante el no

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un empleado no puede acceder al portal interno mediante el nombre `intranet.empresa.local`, pero sí logra acceder directamente escribiendo la dirección IP `10.0.5.25` en el navegador.

---

### ❓ Pregunta

¿En qué servicio de red y capa del modelo OSI recae exclusivamente esta falla?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La falla radica en la resolución del nombre de dominio a una dirección IP.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque servicio dhcp - capa 3 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque servicio http - capa 4 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque servicio nat - capa 2 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 15: Un sistema bancario procesa una transferencia transfiriendo d

**Dificultad:** Media
**Tiempo recomendado:** 40 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

Un sistema bancario procesa una transferencia transfiriendo dinero de la Cuenta A a la Cuenta B. Ocurre un corte de energía justo después de que se restó el dinero en la Cuenta A, pero antes de que se sumara a la Cuenta B. Al reiniciar, el dinero de la Cuenta A ha vuelto íntegro.

---

### ❓ Pregunta

¿Qué propiedad de las transacciones (ACID) garantizó que no se guardaran operaciones a medias?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Atomicidad es la propiedad de bases de datos que rige el principio "Todo o Nada".
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque consistencia no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque aislamiento no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque durabilidad no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 16: El área de Control de Calidad (QA) debe validar un módulo d

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El área de Control de Calidad (QA) debe validar un módulo de cálculos de impuestos de un sistema web. Los analistas introducen distintos rangos salariales en los formularios web y verifican los resultados en pantalla sin observar en ningún momento el código fuente.

---

### ❓ Pregunta

¿Qué tipo de técnica de pruebas de software se está aplicando?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Las Pruebas de Caja Negra evalúan exclusivamente las entradas y salidas de un sistema desde la perspectiva del usuario o de requisitos, asumiendo ignorancia total sobre la estructura interna y el código fuente.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque prueba de caja blanca no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque prueba de regresiã³n no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque prueba de estrã©s no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 17: Se requiere implementar una libreta de contactos para un serv

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

Se requiere implementar una libreta de contactos para un servidor donde el acceso a cualquier número de teléfono utilizando el nombre como clave debe ser instantáneo y mantener un tiempo de búsqueda promedio de O(1), sin importar si hay 100 o un millón de registros.

---

### ❓ Pregunta

¿Qué estructura de datos asegura este rendimiento óptimo?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Las Tablas Hash procesan la clave ("nombre") mediante una función matemática que indica directamente la posición exacta en memoria, logrando una búsqueda de rendimiento O(1) bajo condiciones óptimas sin colisiones severas.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque ãrbol binario de bãºsqueda no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque lista doblemente enlazada no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque arreglo dinã¡mico ordenado no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 18: Un programador en Java declara las variables de una clase com

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un programador en Java declara las variables de una clase como "private" y genera los métodos "get" y "set" para permitir que otros objetos puedan acceder o modificar los datos bajo ciertas reglas de validación estipuladas.

---

### ❓ Pregunta

¿Qué pilar fundamental de la Programación Orientada a Objetos se está respetando?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Encapsulamiento consiste en restringir el acceso directo al estado interno de un objeto, protegiéndolo mediante atributos privados y obligando a los agentes externos a usar métodos controlados para interactuar con la información.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque herencia no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque polimorfismo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque abstracciã³n no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 19: Un sistema operativo multitarea asigna a cada proceso activo

**Dificultad:** Difícil
**Tiempo recomendado:** 60 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

Un sistema operativo multitarea asigna a cada proceso activo un pequeño "cuanto de tiempo" o intervalo fijo. Si el proceso no termina en ese lapso, es forzado a regresar al final de la fila de listos para ceder el procesador a otro.

---

### ❓ Pregunta

¿Qué algoritmo de planificación de CPU (Scheduling) se describe en este comportamiento?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Round Robin es el clásico algoritmo multitarea por división de tiempos (Time-sharing).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque primero en llegar, primero en ser servido (fcfs) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque planificaciã³n por prioridad no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque el trabajo mã¡s corto primero (sjf) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 20: El administrador de red debe permitir el flujo de paquetes de

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El administrador de red debe permitir el flujo de paquetes de internet en las reglas del enrutador o cortafuegos (Firewall). Decide bloquear las comunicaciones basándose en las direcciones de origen de la red pública.

---

### ❓ Pregunta

¿Qué tipo de direccionamiento y en qué capa del Modelo OSI debe aplicarse este bloqueo?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Un enrutador (Router) o un cortafuegos para análisis de paquetes de red funciona mediante Direcciones IP, las cuales pertenecen estrictamente a la Capa 3 (Red) del modelo OSI.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque direcciones mac - capa 2 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque direcciones url - capa 7 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque puertos - capa 4 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

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

## CASO 21: El administrador de bases de datos de una universidad intenta

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

El administrador de bases de datos de una universidad intenta eliminar de la tabla "Carreras" el registro de la carrera de Ingeniería Industrial. Sin embargo, el motor de base de datos bloquea la operación arrojando un error de violación de restricción, ya que existen actualmente 500 alumnos registrados en esa carrera.

---

### ❓ Pregunta

¿Qué mecanismo relacional se activó para impedir el borrado y proteger los datos?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Integridad Referencial, impuesta mediante una Llave Foránea (Foreign Key), asegura que no se pueda eliminar un registro padre (Carrera) si existen registros hijos (Alumnos) que dependen de él.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque ãndice agrupado (clustered index) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque disparador (trigger) de inserciã³n no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque bloqueo de transacciã³n (deadlock) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 22: Un servidor cuenta con 8 GB de memoria RAM física

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

Un servidor cuenta con 8 GB de memoria RAM física. Al ejecutar un motor de renderizado 3D pesado que requiere 12 GB, el sistema no se detiene ni marca error, sino que se vuelve lento porque comienza a usar espacio libre en el disco duro para almacenar datos.

---

### ❓ Pregunta

¿Cómo se denomina técnicamente este espacio del disco duro que el sistema operativo utiliza como extensión de la RAM?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Memoria Virtual (conocida como partición Swap en Linux o Archivo de Paginación en Windows) es un espacio reservado en el almacenamiento físico que el Sistema Operativo utiliza para emular memoria RAM adicional cuando la memoria física real se satura.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque memoria cachã© l3 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque memoria rom no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque buffer de e/s no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 23: Al inicio de un proyecto de software, el analista de requerim

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Al inicio de un proyecto de software, el analista de requerimientos necesita graficar y comunicar a los directivos las funciones generales que el sistema ofrecerá a los distintos tipos de usuarios (ej. Administrador, Cliente, Cajero), sin detallar cómo estarán programadas por dentro.

---

### ❓ Pregunta

Según el lenguaje UML, ¿qué diagrama es el indicado para este propósito?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Diagrama de Casos de Uso de UML está diseñado para mostrar las interacciones funcionales externas.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque diagrama de clases no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque diagrama de secuencia no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque diagrama de estado no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 24: En un corporativo, el departamento de Finanzas y el de Market

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En un corporativo, el departamento de Finanzas y el de Marketing comparten el mismo piso y los mismos switches físicos (Conmutadores). Por seguridad, se requiere que ambos departamentos no puedan comunicarse ni ver sus equipos entre sí a nivel de red.

---

### ❓ Pregunta

¿Qué tecnología de Capa 2 permite fragmentar lógicamente los switches para lograr este aislamiento sin comprar hardware nuevo?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Las Redes de Área Local Virtuales (VLAN) operan en la Capa 2 del Modelo OSI.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque vpn no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque nat no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque subneteo ip no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 25: Un analista debe programar una rutina de ordenamiento que div

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

Un analista debe programar una rutina de ordenamiento que divida constantemente el arreglo original a la mitad en arreglos más pequeños hasta que tengan un solo elemento, para luego recombinarlos de manera ordenada.

---

### ❓ Pregunta

¿Qué algoritmo de ordenamiento y paradigma matemático está aplicando?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Merge Sort es el ejemplo clásico del paradigma "Divide y Vencerás".
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque bubble sort - iterativo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque selection sort - bãºsqueda exhaustiva no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque insertion sort - backtracking no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 26: Un automóvil está estructurado en el software de tal manera

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un automóvil está estructurado en el software de tal manera que, si el objeto "Automóvil" es destruido por el recolector de basura, el objeto "Motor" contenido dentro de él también debe ser destruido inevitablemente, ya que no puede existir sin el automóvil.

---

### ❓ Pregunta

En UML y Programación Orientada a Objetos, ¿qué tipo de relación fuerte describe este escenario?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Composición es una relación de pertenencia muy fuerte (representada por un rombo negro en UML).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque agregaciã³n no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque herencia no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque asociaciã³n simple no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 27: Un administrador de servidores necesita acceder remotamente a

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un administrador de servidores necesita acceder remotamente a la terminal de comandos de un servidor Linux. Quiere asegurarse de que toda la comunicación de texto enviada por internet viaje encriptada.

---

### ❓ Pregunta

¿Qué protocolo y puerto estándar oficial debe utilizar?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Secure Shell (SSH) es el protocolo estándar de red que permite acceder de forma encriptada y segura a la terminal de un equipo remoto, y opera por defecto en el puerto 22.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque telnet - puerto 23 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque ftp - puerto 21 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque http - puerto 80 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 28: El administrador de bases de datos decide crear un índice es

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El administrador de bases de datos decide crear un índice especial en la tabla "Empleados" bajo la columna de "Fecha de Contratación". Este índice no reordena físicamente las filas de la tabla en el disco duro, sino que crea una estructura secundaria con punteros hacia los datos.

---

### ❓ Pregunta

¿Qué tipo de índice acaba de generar?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Un Índice No Agrupado (Non-Clustered) opera de manera análoga al índice al final de un libro: crea una lista externa ordenada que apunta hacia los registros, permitiendo tener múltiples índices en una tabla.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque ãndice agrupado (clustered index) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque ãndice de texto completo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque hash index no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 29: Un equipo de programación adopta una metodología rigurosa d

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un equipo de programación adopta una metodología rigurosa donde el programador está obligado a escribir las pruebas unitarias que van a fallar antes de escribir siquiera una sola línea de código fuente funcional de la aplicación.

---

### ❓ Pregunta

¿Cómo se denomina esta práctica de ingeniería de software?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Test-Driven Development (TDD) exige un ciclo corto: Escribir primero una prueba que falla (Red), escribir el código mínimo para hacerla pasar (Green), y luego optimizar el código (Refactor).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque integraciã³n continua (ci) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque anã¡lisis de cã³digo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque patrã³n modelo vista controlador (mvc) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 30: En un sistema operativo moderno, un navegador web abre múlti

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En un sistema operativo moderno, un navegador web abre múltiples pestañas. Para ahorrar recursos, el navegador decide no crear un clon completo de la aplicación por cada pestaña en la RAM, sino crear pequeñas unidades ligeras de ejecución dentro del mismo programa base compartiendo su memoria.

---

### ❓ Pregunta

¿Qué unidades de procesamiento concurrente está instanciando el navegador?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Los Hilos (Threads) son la unidad básica de utilización del CPU y forman parte de un proceso más grande.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque demonios (daemons) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque procesos padre no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque procesos huã©rfanos no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 31: El equipo de redes evalúa migrar toda la infraestructura cor

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El equipo de redes evalúa migrar toda la infraestructura corporativa de direcciones IPv4 hacia direcciones IPv6 para soportar la enorme cantidad de dispositivos inteligentes (IoT) previstos en el corporativo.

---

### ❓ Pregunta

¿Qué tamaño en longitud de bits tiene una dirección IPv6 estándar, garantizando espacio prácticamente inagotable?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Mientras que las antiguas direcciones IPv4 miden 32 bits (limitando el mundo a 4.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque 32 bits no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque 64 bits no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque 256 bits no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 32: Un startup está diseñando el backend para un catálogo de p

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un startup está diseñando el backend para un catálogo de productos de e-commerce. Los atributos de los productos varían agresivamente: un celular requiere voltaje y RAM, pero una playera requiere talla y color. El equipo decide usar un motor de base de datos sin esquema rígido que almacena documentos tipo JSON.

---

### ❓ Pregunta

¿A qué categoría de bases de datos pertenece la solución seleccionada?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Las bases de datos NoSQL tipo Documental (como MongoDB) almacenan la información en documentos similares a JSON (BSON).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque bases de datos relacionales (rdbms) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque bases de datos orientadas a grafos no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque bases de datos de series no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 33: En un servidor de impresión de oficina, cinco empleados enví

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

En un servidor de impresión de oficina, cinco empleados envían documentos para imprimir casi al mismo tiempo. El servidor debe procesar los documentos en el orden exacto en que llegaron, sacando el primer archivo recibido.

---

### ❓ Pregunta

¿Qué estructura de datos es la indicada para administrar esta sala de espera de documentos?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Una Cola opera bajo el principio FIFO (First In, First Out).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque pila (stack) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque grafo ponderado no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque ãrbol avl no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 34: El arquitecto de software exige separar el código del sistem

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El arquitecto de software exige separar el código del sistema web: el código HTML/CSS no debe estar mezclado con la de conexión a la base de datos, y los cálculos de negocio deben estar aislados para que otros departamentos puedan modificarlos independientemente.

---

### ❓ Pregunta

¿Qué patrón arquitectónico clásico exige esta separación en tres componentes principales?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Patrón MVC divide el software en tres áreas: El Modelo (Datos y reglas de negocio), la Vista (Interfaz Gráfica / HTML), y el Controlador (intermediario que recibe peticiones y enlaza a ambos).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque patrã³n observador no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque microservicios no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque cqrs no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 35: Al encender 200 computadoras nuevas en el campus, todas adqui

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Al encender 200 computadoras nuevas en el campus, todas adquieren automáticamente una dirección IP única válida, máscara de subred, puerta de enlace y servidores DNS, sin que los técnicos tengan que configurar cada máquina a mano.

---

### ❓ Pregunta

¿Qué protocolo de red se encargó de asignar esta configuración dinámicamente en broadcast?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Protocolo de Configuración Dinámica de Host (DHCP) asigna direcciones IP dinámicas y otros parámetros de configuración de red a los dispositivos a medida que se conectan a la red, evitando conflictos y gestión manual.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque dns no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque arp no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque icmp no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 36: En un servidor Linux, el administrador desea que el archivo s

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

En un servidor Linux, el administrador desea que el archivo secreto "claves.txt" solo pueda ser leído y escrito por el dueño del archivo (él mismo), pero nadie más (ni el grupo ni los usuarios externos) debe tener absolutamente ningún acceso.

---

### ❓ Pregunta

¿Qué notación de permisos octal ejecuta este comportamiento al usar el comando `chmod`?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En permisos Linux (Usuario, Grupo, Otros), el octal 6 equivale a Lectura (4) y Escritura (2).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque 777 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque 644 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque 755 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 37: Para generar los reportes de nómina, el desarrollador decide

**Dificultad:** Media
**Tiempo recomendado:** 40 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

Para generar los reportes de nómina, el desarrollador decide no enviar las complejas sentencias de `SELECT` masivas desde el código PHP en el servidor web. En su lugar, empaqueta, compila y guarda las consultas SQL directamente dentro del motor de base de datos, llamándolas solo por un nombre corto.

---

### ❓ Pregunta

¿Qué elemento de bases de datos ha creado el desarrollador?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Un Procedimiento Almacenado es un bloque de código SQL y que se guarda y compila internamente en el servidor de base de datos.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque vista materializada no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque disparador (trigger) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque cursor no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 38: El equipo terminó de programar dos módulos independientes:

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El equipo terminó de programar dos módulos independientes: el "Módulo del Carrito" y el "Módulo de Facturación". Las pruebas de ambos pasaron individualmente, pero ahora deben conectarlos y verificar que los datos viajen sin error desde el Carrito hasta el servidor de Facturación.

---

### ❓ Pregunta

¿Qué fase del ciclo de calidad del software (QA) se está ejecutando?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Las Pruebas de Integración se enfocan en verificar la interacción e interfaz entre dos o más módulos (o servicios) ya probados unitariamente, garantizando que el flujo de datos entre ellos al conectarse funcione correctamente.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque pruebas unitarias no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque pruebas de sistema no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque pruebas de aceptaciã³n (uat) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 39: En un laboratorio escolar de 30 computadoras, todas están co

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

En un laboratorio escolar de 30 computadoras, todas están conectadas mediante un cable UTP a un único Switch central. Si un cable se rompe, solo esa máquina se desconecta. Si el Switch central se apaga, toda la red del salón colapsa.

---

### ❓ Pregunta

¿A qué topología física de red pertenece este diseño?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En la topología de Estrella, todos los nodos están conectados individualmente a un concentrador central (Switch/Hub).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque malla no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque anillo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque bus no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 40: Un fotógrafo adquiere un servidor de almacenamiento con dos

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

Un fotógrafo adquiere un servidor de almacenamiento con dos discos duros idénticos. Configura el sistema de arreglos para que todo archivo que se guarde en el Disco 1 se escriba al mismo tiempo y de manera exacta como espejo en el Disco 2, sacrificando la mitad del espacio total a cambio de máxima seguridad.

---

### ❓ Pregunta

¿Qué nivel de arreglo de discos redundantes (RAID) implementó?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El RAID 1 es conocido como "Espejo" (Mirroring).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque raid 0 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque raid 5 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque raid 10 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

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

## CASO 41: El administrador de red de una pequeña oficina contrata un s

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El administrador de red de una pequeña oficina contrata un servicio de Internet corporativo que le entrega únicamente 1 Dirección IP Pública. En la oficina existen 40 computadoras con IPs privadas. Sorprendentemente, todas logran navegar por Internet al mismo tiempo utilizando la única IP pública disponible.

---

### ❓ Pregunta

¿Qué tecnología de red alojada en el enrutador perimetral permite esta traducción de múltiples IPs privadas a una pública?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Network Address Translation (NAT) reescribe las cabeceras de los paquetes salientes, traduciendo múltiples direcciones IP privadas de una red local (LAN) para que naveguen a través de una sola dirección IP pública hacia el exterior (Internet).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque dhcp no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque dns no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque vlan no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 42: Una compañía telefónica necesita conectar 15 ciudades con

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

Una compañía telefónica necesita conectar 15 ciudades con cable de fibra óptica. El objetivo es que exista una ruta que conecte a todas las ciudades sin formar circuitos cerrados y utilizando la menor cantidad total de cable (costo mínimo de instalación).

---

### ❓ Pregunta

Modelando el problema como un grafo ponderado, ¿qué algoritmo de optimización permite descubrir la red óptima requerida?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El algoritmo de Kruskal (o el de Prim) se utiliza específicamente para hallar el "Árbol de Expansión Mínima" (Minimum Spanning Tree) en un grafo ponderado no dirigido.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque bãºsqueda en profundidad (dfs) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque bãºsqueda en anchura (bfs) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque algoritmo de floyd-warshall no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 43: Una consulta SQL agrupa a los empleados por departamento para

**Dificultad:** Media
**Tiempo recomendado:** 40 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

Una consulta SQL agrupa a los empleados por departamento para calcular el salario promedio de cada área utilizando `GROUP BY`. Sin embargo, el analista financiero quiere filtrar y mostrar exclusivamente aquellos departamentos cuyo salario promedio calculado sea mayor a $20,000.

---

### ❓ Pregunta

¿Qué cláusula SQL se debe usar para aplicar este filtro sobre el resultado de la función de agregación?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La cláusula `WHERE` filtra registros individuales antes de que se agrupen.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque where no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque order by no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque limit no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 44: Al final de un ciclo de desarrollo ágil de dos semanas, el e

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Al final de un ciclo de desarrollo ágil de dos semanas, el equipo se reúne internamente a puertas cerradas. El propósito no es mostrar el producto al cliente, sino discutir honestamente "qué hicieron bien", "qué hicieron mal" y "cómo pueden mejorar como equipo para el próximo ciclo".

---

### ❓ Pregunta

¿Qué ceremonia oficial del framework Scrum están llevando a cabo?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Sprint Retrospective (Retrospectiva del Sprint) es la última ceremonia del ciclo y se enfoca en la mejora continua del equipo (procesos y personas).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque sprint planning no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque sprint review no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque daily scrum no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 45: Un arquitecto de software define la plantilla `Vehiculo`

**Dificultad:** Media
**Tiempo recomendado:** 30 segundos
**Tipo de trampa:** conceptual

---

### 📖 Contexto

Un arquitecto de software define la plantilla `Vehiculo`. Exige que todos los vehículos que la hereden implementen obligatoriamente el método `encender()`, pero además incluye código real ya programado en el método `apagar()` que será compartido por todos los herederos sin reescribirse.

---

### ❓ Pregunta

¿Qué elemento de la Programación Orientada a Objetos debe declarar el arquitecto?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Una Clase Abstracta permite mezclar métodos "abstractos" (que obligan a las clases hijas a programarlos) con métodos ya implementados lógicamente con código que pueden ser heredados directamente.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque interfaz estricta no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque clase final no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque clase anã³nima no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 46: Un usuario graba un archivo de video 4K de alta calidad con u

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

Un usuario graba un archivo de video 4K de alta calidad con un tamaño de 6 GB en su computadora. Al intentar copiarlo a su nueva memoria USB (Flash Drive) recién formateada, el sistema Windows bloquea la transferencia marcando un error de "El archivo es demasiado grande para el sistema de archivos de destino", a pesar de tener 32 GB libres.

---

### ❓ Pregunta

¿Con qué antiguo sistema de archivos de Microsoft está formateada la USB, limitando matemáticamente el peso del archivo?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El viejo sistema de archivos FAT32 tiene una restricción matemática absoluta que impide guardar un archivo individual que pese más de 4 GB, sin importar cuánto espacio libre quede en el disco duro.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque ntfs no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque ext4 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque exfat no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 47: En una red corporativa configurada con la dirección 192

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En una red corporativa configurada con la dirección 192.168.1.0/24, el administrador necesita enviar un mensaje de alarma de forma simultánea a todas y cada una de las 254 computadoras conectadas en el mismo segmento de red usando un único paquete enviado.

---

### ❓ Pregunta

¿A qué dirección IP matemática de destino debe apuntar el paquete?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En IPv4, la última dirección IP de cualquier segmento de subred (donde los bits de host son todos 1) siempre es reservada matemáticamente para "Broadcast" (Difusión).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque 192.168.1.1 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque 192.168.1.0 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque 192.168.1.254 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 48: Un gerente necesita leer reportes que cruzan datos de 5 tabla

**Dificultad:** Media
**Tiempo recomendado:** 30 segundos
**Tipo de trampa:** conceptual

---

### 📖 Contexto

Un gerente necesita leer reportes que cruzan datos de 5 tablas distintas mediante JOINs masivos y cálculos complejos. Para facilitarle la vida, el desarrollador almacena esa consulta compleja en el motor de base de datos de forma que el gerente solo tenga que ejecutar un `SELECT * FROM ReporteGeneral`, interactuando con ella como si fuera una tabla virtual física.

---

### ❓ Pregunta

¿Qué objeto acaba de crear el desarrollador en la base de datos?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Una Vista (View) es una tabla virtual cuyo contenido se genera mediante una consulta (Query) predefinida cada vez que se accede a ella.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque tabla no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque disparador (trigger) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque ãndice de ã¡rbol no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 49: Un sistema de registros hospitalarios contiene 10 millones de

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

Un sistema de registros hospitalarios contiene 10 millones de historias clínicas almacenadas de forma totalmente desordenada y aleatoria (sin indexación por nombre o ID). Un enfermero necesita buscar un registro por nombre.

---

### ❓ Pregunta

Dada la falta de orden, ¿cuál será obligatoriamente la complejidad de tiempo (Notación Big O) en el peor de los casos al buscar el registro?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Dado que la información está desordenada, no se puede aplicar algoritmos optimizados como Búsqueda Binaria.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque o(1) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque o(log n) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque o(n^2) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 50: Un programa genera "Enemigos" en un videojuego

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un programa genera "Enemigos" en un videojuego. Para no llenar el código principal con múltiples y repetitivos `new Orco()`, `new Goblin()` y de validación, se crea una clase central que recibe el parámetro del tipo de enemigo deseado y devuelve automáticamente la instancia del objeto correcta y lista para usar.

---

### ❓ Pregunta

¿Qué patrón de diseño de creación de software clásico se ha implementado?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El patrón de diseño Factory Method abstrae la física de instanciación de objetos (`new`).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque singleton no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque proxy no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque adapter no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 51: Se diseña un sistema de venta de boletos de cine

**Dificultad:** Difícil
**Tiempo recomendado:** 60 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

Se diseña un sistema de venta de boletos de cine. Solo queda el último asiento disponible (E-10). Dos clientes hacen clic en comprar en el mismo milisegundo desde distintas computadoras. El Sistema Operativo del servidor atiende dos hilos concurrentes que acceden a la variable global `asientos_restantes` al mismo tiempo, provocando que ambos lo compren exitosamente.

---

### ❓ Pregunta

¿Qué primitiva de sincronización clásica debió implementarse a nivel sistema operativo para evitar esta Condición de Carrera?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Un Mutex (Mutual Exclusion) es un candado utilizado en sistemas concurrentes.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque memoria compartida no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque tuberã­as (pipes) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque planificador fcfs no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 52: Un técnico necesita conectar lógicamente dos computadoras e

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un técnico necesita conectar lógicamente dos computadoras en el mismo escritorio, conectando directamente la tarjeta de red de la PC-A con la tarjeta de la PC-B usando un cable físico UTP RJ45, sin pasar por un router o switch intermedio.

---

### ❓ Pregunta

¿Qué tipo de cableado es estrictamente necesario, normativamente hablando, para conectar dos equipos de la misma naturaleza o capa OSI sin autonegociación MDIX?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Clásicamente, para conectar dos dispositivos del mismo tipo OSI directamente (PC a PC, o Router a Router), los pines de transmisión (TX) deben cruzarse físicamente con los pines de recepción (RX) en el conector opuesto.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque cable serial rs-232 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque cable de fibra multimodo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque cable directo (straight-through) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 53: Durante un mantenimiento a las 2 a

**Dificultad:** Media
**Tiempo recomendado:** 40 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

Durante un mantenimiento a las 2 a.m., el administrador nota que vaciar la tabla "Auditoria" (5 millones de registros) usando el comando `DELETE FROM Auditoria` tarda horas. í0 l recuerda que existe un comando destructor que ignora el paso fila por fila, vaciando todo de un golpe destructivo.

---

### ❓ Pregunta

¿Qué comando DDL SQL es el adecuado para vaciar la tabla instantáneamente y de forma irreversible?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El comando DELETE es un proceso DML que borra fila por fila y guarda registros en el log de transacciones por si hay Rollback.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque drop table auditoria no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque format auditoria no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque erase auditoria no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 54: Un programador junior trabajando con el sistema Git escribe s

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un programador junior trabajando con el sistema Git escribe su código, guarda el archivo, e ingresa por terminal `git add.` seguido de un exitoso `git commit -m "Se arregló login"`. Sin embargo, el jefe de proyecto revisa el repositorio central corporativo remoto en GitHub y no ve el código del junior.

---

### ❓ Pregunta

¿Por qué el código aún no está en el servidor oficial de GitHub?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** A diferencia de sistemas antiguos centralizados (SVN), Git es distribuido.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque el comando commit sufriã³ de conflictos de fusiã³n locales (merge conflicts). no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque el servidor principal de github estaba en modo solo-lectura temporalmente. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque olvidã³ ejecutar un git pull antes de hacer el commit. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 55: Se tiene un Árbol Binario de Búsqueda (BST) poblado con los

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

Se tiene un Árbol Binario de Búsqueda (BST) poblado con los números [8, 3, 1, 6, 10, 14]. El profesor exige aplicar un algoritmo de recorrido clásico de profundidad que, matemáticamente, imprima como resultado la secuencia estrictamente ordenada de menor a mayor (1, 3, 6, 8, 10, 14).

---

### ❓ Pregunta

¿Qué método de recorrido de árboles produce inevitablemente un arreglo numéricamente ordenado en un Árbol Binario de Búsqueda?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El recorrido Inorden transita por el árbol procesando primero el subárbol izquierdo (nodos más pequeños), luego la raíz, y finalmente el subárbol derecho (nodos más grandes).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque preorden (pre-order) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque postorden (post-order) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque nivel por nivel (anchura) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 56: En la programación de una calculadora orientada a objetos en

**Dificultad:** Media
**Tiempo recomendado:** 30 segundos
**Tipo de trampa:** conceptual

---

### 📖 Contexto

En la programación de una calculadora orientada a objetos en Java, el desarrollador crea el método `sumar(int a, int b)`. En la misma clase, para acomodar a los decimales, declara otro método con el nombre idéntico `sumar(double a, double b)`. El compilador de lenguaje lo acepta sin marcar ningún error o de duplicidad.

---

### ❓ Pregunta

¿Qué técnica de la POO se ha aplicado en este escenario?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Sobrecarga de Métodos (Overloading) permite definir múltiples métodos con exactamente el mismo nombre dentro de una misma clase, con la estricta condición de que la cantidad o el tipo de sus parámetros (las firmas del método) sean diferentes para que el compilador sepa a cuál invocar.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque sobreescritura de mã©todos (overriding) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque abstracciã³n paramã©trica no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque herencia mãºltiple no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 57: Un analista de centro de control (NOC) necesita verificar rá

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un analista de centro de control (NOC) necesita verificar rápidamente si el servidor de nóminas de la sucursal de Mérida está encendido y tiene una tarjeta de red local viva. Para ello, ejecuta desde Windows el comando `ping 192.168.10.5` para analizar los paquetes devueltos.

---

### ❓ Pregunta

¿Qué protocolo de red en la Capa de Red (OSI 3) es la columna vertebral que hace funcionar la comunicación de diagnóstico del comando "ping"?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** ICMP es el protocolo core utilizado en redes de capa 3 para transmitir mensajes de error, información de diagnóstico y control (como respuestas de "Host Inalcanzable" o "Tiempo de espera superado").
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque arp (address resolution protocol) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque snmp (simple network management protocol) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque tcp (transmission control protocol) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 58: Durante una transacción SQL compleja, el motor de base de da

**Dificultad:** Media
**Tiempo recomendado:** 40 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

Durante una transacción SQL compleja, el motor de base de datos activa un mecanismo de seguridad para impedir que otros usuarios alteren temporalmente la fila número 800 de la tabla de facturación que está siendo procesada, pero permite que los demás usuarios sigan leyendo o escribiendo el resto de las facturas libremente en la tabla.

---

### ❓ Pregunta

¿Qué nivel de control de concurrencia y aislamiento relacional ha aplicado el motor de bases de datos para optimizar recursos?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El "Bloqueo de Nivel de Fila" (Row-level Lock) es el grano más fino de control de concurrencia en bases de datos.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque bloqueo de nivel de tabla (table-level lock) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque bloqueo de pã¡gina (page-level lock) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque exclusiã³n mutua global (global mutex) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 59: El "Dueño del Producto" (Product Owner) redacta el siguiente

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

El "Dueño del Producto" (Product Owner) redacta el siguiente requerimiento en una tarjeta ágil para entregársela a los programadores del Sprint 1: *"Como cliente registrado de Amazon, quiero poder añadir productos a una lista de deseos, para así guardarlos y comprarlos el día de quincena."*

---

### ❓ Pregunta

¿Cómo se denomina formalmente este formato estructurado de requerimiento utilizado en la metodología Scrum?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Historia de Usuario es una explicación funcional de una característica de software escrita desde la perspectiva natural del usuario final.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque diagrama de secuencia ãgil no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque caso de uso del negocio no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque tarea de refactorizaciã³n tã©cnica no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 60: Un servidor en Linux está ejecutando una enorme base de dato

**Dificultad:** Difícil
**Tiempo recomendado:** 60 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

Un servidor en Linux está ejecutando una enorme base de datos en memoria (Redis) que de pronto agota por completo los Gigabytes físicos de la RAM y el espacio virtual (Swap). Sin previo aviso, el núcleo Linux "asesina" abruptamente uno de los procesos del motor Redis para evitar un pánico crítico total y colapso del hardware.

---

### ❓ Pregunta

¿Qué demonio o mecanismo nativo del kernel de Linux interviene como "último recurso" cortando cabezas en situaciones de agotamiento severo de memoria?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El OOM Killer es una rutina extrema del kernel de Linux.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque el recolector de basura (garbage collector) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque el demonio cron no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque el proceso init/systemd no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

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

## CASO 61: En una red corporativa muy grande, el administrador descubre

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En una red corporativa muy grande, el administrador descubre que configurar manualmente las rutas en los enrutadores es imposible tras agregar 50 oficinas nuevas. Decide implementar un protocolo que permita a los enrutadores aprender automáticamente la topología intercambiando sus tablas de métricas basándose en el estado de los enlaces y la velocidad física del cable.

---

### ❓ Pregunta

¿Qué protocolo de enrutamiento dinámico interno, basado en el algoritmo de Dijkstra, es el estándar más robusto para este propósito?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** OSPF es el protocolo de enrutamiento interior de estado de enlace dominante a nivel corporativo.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque rip (routing information protocol) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque bgp (border gateway protocol) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque stp (spanning tree protocol) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 62: En la arquitectura de un sistema mundial de redes sociales ma

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En la arquitectura de un sistema mundial de redes sociales masivas alojado en múltiples continentes, el sistema de bases de datos pierde conectividad de red entre Europa y América. Los arquitectos asumen que pueden permitir que el usuario europeo lea datos un poco atrasados (desactualizados), pero es imperativo que los servidores no se caigan y que toleren la ruptura del cable transatlántico.

---

### ❓ Pregunta

Según el Teorema CAP, ¿qué dos aristas matemáticas está eligiendo el negocio?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Teorema CAP para bases de datos distribuidas establece que solo puedes elegir 2 de 3 garantías (Consistencia, Disponibilidad o Partición).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque consistencia y disponibilidad (ca) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque consistencia y tolerancia a particiones (cp) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque tolerancia a particiones y escalabilidad vertical no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 63: Un procesador físico de 8 núcleos está colapsado corriendo

**Dificultad:** Difícil
**Tiempo recomendado:** 60 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

Un procesador físico de 8 núcleos está colapsado corriendo 5,000 hilos (threads) activos de un servidor web monolítico en el mismo milisegundo. La CPU dedica más tiempo a guardar el estado de un hilo actual en registros de memoria RAM, sacarlo, cargar el estado del siguiente y repetir, que a procesar los cálculos del servidor web.

---

### ❓ Pregunta

¿Cómo se denomina este costoso proceso del Sistema Operativo a nivel de arquitectura del procesador?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Cambio de Contexto (Context Switch) es el proceso mediante el cual el Sistema Operativo suspende un hilo o proceso en CPU, almacena su estado interno, e introduce otro.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque algoritmo fcfs (first come first serve) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque sobrepaginaciã³n de memoria rom no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque ejecuciã³n multihilo simã©trica (smt) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 64: A punto de lanzar a producción, el equipo detecta que el mó

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

A punto de lanzar a producción, el equipo detecta que el módulo de control de usuarios tiene código sucio, duplicado y carece del patrón MVC que acordaron. El gerente decide lanzarlo "así como está" para cumplir con la fecha del contrato, prometiendo que el código se reparará en la siguiente fase tras recibir los fondos.

---

### ❓ Pregunta

En términos de la Ingeniería de Software ágil, ¿qué concepto de riesgo acumulativo ha incurrido el equipo?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Deuda Técnica es el "interés de código" que contrae un proyecto cuando se eligen soluciones fáciles, rápidas y sucias sobre metodologías limpias (best practices) por restricciones de tiempo.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque refactorizaciã³n prematura no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque defectos de pruebas unitarias no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque inyecciã³n de dependencias no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 65: El programador de una estructura "Tabla Hash (Hash Map)" desc

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

El programador de una estructura "Tabla Hash (Hash Map)" descubre que, tras ingresar 1 millón de registros, su compleja función matemática ha asignado a varios registros completamente distintos (Ej. "Roberto" y "Rubén") el mismo idéntico índice de cajón de memoria (Bucket 501), causando que el sistema ralentice sus búsquedas al amontonar registros en la misma zona.

---

### ❓ Pregunta

¿Qué anomalía matemática estructural acaba de sufrir su algoritmo de diccionario?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Una Colisión Hash ocurre inevitablemente cuando una función algorítmica resume valores diferentes (Inputs) proyectándolos hacia el mismo valor de salida o llave matemática (Output/Índice).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque exceso de recursividad no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque pila desbordada (stack overflow) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque fragmentaciã³n de b-tree no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 66: Se audita la calidad del diseño de programación Orientada a

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Se audita la calidad del diseño de programación Orientada a Objetos de un banco. Se encuentra que la clase `CajaRegistradora` llama directamente y de forma dura a métodos internos protegidos de la clase `Inventario`. Además, si el programador cambia el tipo de variable en `Inventario`, la `CajaRegistradora` explota inmediatamente y ya no compila.

---

### ❓ Pregunta

¿Qué principio cualitativo de la POO se ha violado gravemente en este diseño de arquitectura sucia?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El diseño de software dicta: "Alta cohesión, Bajo acoplamiento".
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque alta cohesiã³n no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque baja herencia no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque alta encapsulaciã³n no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 67: Una empresa compra dos proveedores de Internet diferentes (IS

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Una empresa compra dos proveedores de Internet diferentes (ISP) en caso de que uno se caiga (redundancia extrema). Para que su centro de datos en la red corporativa negocie inteligentemente las rutas del tráfico global (Internet exterior mundial) hacia ambos ISPs, debe anunciar sus IPs dinámicas conectando su router corporativo maestro directamente con los routers de los proveedores de internet.

---

### ❓ Pregunta

¿Qué protocolo colosal de enrutamiento externo (Exterior Gateway Protocol) es el único capaz de sostener y enrutar las tablas de internet a nivel mundial?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** BGP es conocido como "El Protocolo de Internet" a nivel macro.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque ospf (open shortest path first) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque eigrp no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque ripv2 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 68: En un portal de compras, el backend es escrito en Node

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En un portal de compras, el backend es escrito en Node.js operando sobre MongoDB (Una base de datos documental). El atacante entra al formulario de acceso de la página y en la casilla del correo, en lugar de ingresar "texto plano", inyecta maliciosamente un objeto JSON avanzado como `{"$gt": ""}` logrando que el backend procese el objeto y bypassée el formulario exitosamente como si la contraseña existiera.

---

### ❓ Pregunta

¿Qué tipo de ataque web moderno acaba de ocurrir ante este descuido del servidor?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Aunque las bases MongoDB no son relacionales ni usan "SELECT/WHERE" y son inmunes a Inyección SQL, sufren la letal "Inyección NoSQL".
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque inyecciã³n sql clã¡sica blind () no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque ataque de fuerza bruta local no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque cross-site scripting (xss) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 69: Un servidor Linux de desarrollo marca el error fatal de "Disc

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un servidor Linux de desarrollo marca el error fatal de "Disco lleno" impidiendo subir fotos. El programador asustado ejecuta el comando `df -h` y la terminal revela algo absurdo: El disco duro principal de 1 Terabyte tiene todavía 800 Gigabytes completamente libres. El programador intenta crear un archivo vacío `.txt` y Linux le niega la acción.

---

### ❓ Pregunta

¿Qué límite estructural interno de la tabla de ext4 ha llegado secretamente al 100% de agotamiento asfixiando al servidor aunque tenga mucho espacio en disco duro?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En Linux, el espacio de almacenamiento real y la libreta de direcciones física (Inodos) corren por separado.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque exhaustion de la ram swap no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque desbaste sectorial del raid no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque lã­mite de permisos del usuario root no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 70: En una revisión de código en Java, encuentras la clase masi

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En una revisión de código en Java, encuentras la clase masiva `FacturaVentas`. Dicha clase calcula el subtotal, suma el IVA, dibuja la interfaz gráfica de la tabla, conecta con el puerto de la impresora térmica e inserta el registro final en PostgreSQL.

---

### ❓ Pregunta

Según los pilares de diseño limpio arquitectónico "SOLID", ¿qué principio capital se ha roto de forma rotunda en este código?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La 'S' de SOLID establece que una clase de software "solo debe tener una única, clara y atómica razón para cambiar y para existir".
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque liskov substitution principle (sustituciã³n de liskov) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque interface segregation principle (segregaciã³n de interfaces) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque dependency inversion principle (inversiã³n de dependencias) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 71: Se desarrolla un algoritmo que toma una lista de correos elec

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

Se desarrolla un algoritmo que toma una lista de correos electrónicos y busca correos duplicados. El programador diseña la solución creando un bucle `for` que itera todos los registros, y dentro de ese bucle anida ciegamente otro bucle `for` idéntico que escanea nuevamente toda la lista completa desde cero.

---

### ❓ Pregunta

Analíticamente hablando, ¿a qué nivel de complejidad y degradación de rendimiento matemática pertenece este diseño algorítmico?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Un ciclo que itera "n" veces (dependiendo del tamaño de los datos) equivale a complejidad lineal O(n).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque lineal: o(n) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque logarã­tmica: o(log n) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque : o(1) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 72: En el desarrollo de un Backend con el framework Spring Boot,

**Dificultad:** Media
**Tiempo recomendado:** 30 segundos
**Tipo de trampa:** conceptual

---

### 📖 Contexto

En el desarrollo de un Backend con el framework Spring Boot, un arquitecto decide que ninguna clase debe instanciar y controlar manualmente conexiones de base de datos usando la orden nativa e inflexible `new ConexionBD()`. En su lugar, el Framework inyecta o regala de forma mágica la instancia ya pre-configurada directamente en los constructores de las clases a medida que se inicie la aplicación.

---

### ❓ Pregunta

¿Qué patrón avanzado de diseño es este, vital en frameworks como Angular, Spring o Laravel?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Inyección de Dependencias quita la responsabilidad a la clase de tener que construir manualmente sus componentes pesados.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque patrã³n observador no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque decorador dinã¡mico abstracto no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque adaptador funcional no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 73: Al dar la inducción de redes al personal nuevo, el arquitect

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Al dar la inducción de redes al personal nuevo, el arquitecto de redes omite el Modelo OSI de siete capas argumentando que, para fines estandarizados, pragmáticos y reales del desarrollo moderno de internet global, solo es necesario basarse en el modelo condensado y consolidado.

---

### ❓ Pregunta

¿Qué modelo de estandarización condensado de cuatro capas en la industria rige realmente la arquitectura que forma el internet?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Modelo OSI (con sus 7 teóricas e inmaculadas capas) es el estándar educativo fundamental.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque el modelo token-ring macro no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque el modelo atm (asynchronous transfer mode) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque el modelo ipv6 subnet layering no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 74: El volumen masivo de datos del corporativo ha saturado al dis

**Dificultad:** Media
**Tiempo recomendado:** 40 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

El volumen masivo de datos del corporativo ha saturado al disco físico del nodo maestro central MySQL, asfixiando por completo su lectura y escritura vertical. El CTO ordena fragmentar y "Partir o Cuchillear" físicamente los datos, de modo que los registros de los clientes de América se alojen y residan en un servidor A, y los de Europa en un servidor B por separado.

---

### ❓ Pregunta

¿Qué técnica arquitectónica de particionamiento distribuido (Escalabilidad Horizontal de datos) están instaurando?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El "Sharding" o "Fragmentación Horizontal" consiste en tomar una tabla descomunal con miles de millones de filas, dividirla matemáticamente por piezas geográficas, llaves o alfabéticamente (Shards/Fragmentos), y alojar cada pedazo físico de disco en distintos servidores o clústeres separados.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque clãºster hã­brido no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque replicaciã³n maestro-esclavo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque cachã© distribuido (redis layers) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 75: Un servidor que administra las grabaciones bancarias pierde e

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

Un servidor que administra las grabaciones bancarias pierde el suministro de energía abruptamente. Al encender, un mecanismo invisible de tolerancia a fallos a nivel partición nativa recupera rápidamente los metadatos de los videos que estaban siendo copiados, asegurándose de que los bytes interrumpidos se corrijan y cancelen para no dejar la tabla del archivo "sucia".

---

### ❓ Pregunta

¿Cómo se le denomina técnicamente a esta funcionalidad vital propia de sistemas de archivo avanzados y sólidos (como NTFS de Windows o ext4 de Linux)?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El "Journaling" es una subrutina oculta que guarda metadatos (un diario atómico minucioso) de lo que el sistema está a punto de escribir en el disco justo antes de iniciar la escritura pesada.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque sistema de archivos fat nativo exclusivo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque indexaciã³n profunda externa no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque particionamiento en espejo swap (swap mirroring) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 76: Varios programadores envían código simultáneamente al repo

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Varios programadores envían código simultáneamente al repositorio central todo el día. Inmediatamente y de forma automatizada, en la nube arranca un bot que compila todo, descarga dependencias NPM y corre la batería de pruebas unitarias sobre el código fusionado por cada envío, emitiendo una alarma si alguien rompió el sistema remotamente.

---

### ❓ Pregunta

¿Qué práctica de ciclo de DevOps asegura este ensamblaje ágil,, automatizado y seguro de calidad?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Integración Continua (CI) es la médula del DevOps.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque infraestructura como cã³digo (iac) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque entregas continuas de aceptaciã³n (uat) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque refactorizaciã³n en pipeline fã­sico no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 77: Se desarrolla un sistema de mensajería al estilo Instagram

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Se desarrolla un sistema de mensajería al estilo Instagram. El programador modela la información usando Grafos Matemáticos, argumentando que la base de la plataforma es "Si el Usuario A decide seguir y suscribirse al Usuario B, no implica ni forza para nada que el Usuario B decida seguir al Usuario A de regreso".

---

### ❓ Pregunta

Por su característica restrictiva relacional, ¿qué tipo de modelo de Grafo describe la programación de estos seguidores?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Las relaciones de Facebook ("Amistad bidireccional forzosa") operan bajo un Grafo No Dirigido, donde la arista corre en ambas vías siempre y une estáticamente a A y B.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque grafo bipartito no conexo absoluto no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque grafo completo total (mesh fuerte) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque grafo no dirigido con pesos nulos no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 78: El programador Senior de criptografía crea una clase Java/C#

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El programador Senior de criptografía crea una clase Java/C# llamada `GeneradorDeLlavesBancarias`. Para evitar brechas futuras de seguridad, sella explícita y contundentemente la arquitectura prohibiendo estructuralmente que cualquier desarrollador logre crear, compilar o inventar una nueva clase "hija" derivada basándose en esta mediante el uso del principio de herencia.

---

### ❓ Pregunta

¿Qué modificador de acceso o declaración protectora implementó?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La palabra reservada `final` en Java (o `sealed` en C#) se aplica a una clase superior para "cortar el árbol genealógico" de raíz, impidiendo absolutamente que pueda extenderse y generar herencia, garantizando la inviolabilidad del diseño central y eliminando anulaciones o falsificaciones polimórficas de sus métodos sensitivos de negocio.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque clase abstracta (abstract) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque clase local privada (private static local) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque clase virtual (virtual async class) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 79: El equipo IT reemplaza los equipos de transmisión del corpor

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El equipo IT reemplaza los equipos de transmisión del corporativo. Deciden inhabilitar por completo el viejo estándar Wi-Fi casero corporativo porque utilizaba un apretón de manos débil de 4 vías (Four-Way Handshake) altamente susceptible a ataques de fuerza bruta en diccionarios si era capturado a distancia por un hacker con una antena externa y tarjeta modo monitor (Aircrack).

---

### ❓ Pregunta

¿A qué antiguo estándar y vulnerabilidad de ciberseguridad inalámbrica mundial le están diciendo adiós para dar la bienvenida a infraestructuras seguras Enterprise o de Criptografía de Intercambio Equivalente a Pares limpios?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El viejo WPA2-PSK estuvo plagado de debilidades de Fuerza Bruta offline al permitir el espionaje y robo a del archivo Handshake inicial.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque el estã¡ndar de protecciã³n wpa3 (sae) de ruteo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque criptografã­a mac local filtering bã¡sico no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque autenticaciones biomã©tricas ssh no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 80: El administrador planea los respaldos mundiales de una base d

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

El administrador planea los respaldos mundiales de una base de datos pesada. Los domingos hace un respaldo `Full` (Completo) a las 00:00. El lunes hace una copia pequeña salvando y capturando *exclusivamente y de forma estricta única* los cambios ocurridos en las últimas 24 horas después de la copia del domingo completo. El martes toma una nueva foto guardando *únicamente* los bytes sucios insertados desde la copia mínima del lunes inmediato.

---

### ❓ Pregunta

¿Qué esquema restrictivo de ciclo de respaldo logarítmico está aplicando en la industria SysAdmin?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Respaldo Incremental ahorra un masivo e inmenso espacio en disco duro, ya que únicamente toma y clona la "diferencia" matemática respecto al último respaldo de cualquier tipo en la cadena más inmediata.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque respaldo diferencial no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque respaldo completo rotativo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque respaldo de imagen dinã¡mica no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

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

## CASO 81: El equipo modela una base de datos escolar

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El equipo modela una base de datos escolar. Se determinan dos entidades: "Estudiantes" y "Clases". Un estudiante puede inscribirse en muchas clases y una clase puede contener muchos estudiantes matriculados. El ingeniero novato une ambas tablas directamente con una sola Llave Foránea.

---

### ❓ Pregunta

¿Por qué el modelo del ingeniero fallará estructuralmente y qué elemento relacional es obligatorio crear?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En bases de datos relacionales, una relación M:N no se puede almacenar con llaves foráneas entre dos entidades, ya que se necesitaría un arreglo dinámico en cada celda, violando la 1FN.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque fallarã¡ por redundancia transitiva; requiere desnormalizar en primera forma normal. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque el motor sql bloquearã¡ la tabla; requiere usar disparadores (triggers). no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque fallarã¡ porque no cumple con la restricciã³n de integridad de dominio unã­voco de boyce-codd. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 82: El gerente del corporativo exige que todos los empleados pued

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El gerente del corporativo exige que todos los empleados puedan navegar por internet, pero desea bloquear el acceso a sitios de redes sociales. Además, quiere que las páginas de uso diario (como portales de noticias) se almacenen en una memoria central para ahorrar ancho de banda al corporativo.

---

### ❓ Pregunta

¿Qué dispositivo de red o componente de infraestructura es el indicado para cumplir ambos objetivos funcionales?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Un servidor Proxy actúa como un intermediario o portero a nivel de la Capa de Aplicación.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción B**: Es incorrecta porque enrutador de borde bgp no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque switch de capa 2 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque balanceador de carga no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

A

## CASO 83: Un centro de datos instala software de virtualización

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un centro de datos instala software de virtualización. En lugar de instalar Windows o Linux como sistema principal y luego cargar máquinas virtuales dentro de él, el administrador formatea los discos duros nativos en blanco e instala VMWare ESXi directamente sobre el procesador y hardware del servidor.

---

### ❓ Pregunta

¿Qué tipo de arquitectura de virtualización robusta está implementando el centro de datos?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Hypervisor Tipo 1, también llamado "Bare-Metal" (Metal Descubierto), es el rey de la virtualización corporativa.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque hypervisor tipo 2 (hosted) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque contenedores dockerizados no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque virtualizaciã³n de sistema operativo emulado no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 84: Durante la etapa de diseño de una aplicación, el programado

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Durante la etapa de diseño de una aplicación, el programador copia y pega un bloque de código matemático 15 veces a lo largo del sistema porque "era más rápido". Aunque el programa funciona, años después, al intentar cambiar una variable en la fórmula, el equipo tarda semanas persiguiendo errores y fallas inexplicables a lo largo del sistema entero.

---

### ❓ Pregunta

¿Qué actividad de ingeniería ágil no se realizó para curar este problema cuando el código aún era manejable?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Deuda Técnica se genera cuando el equipo elige atajos rápidos (copiar y pegar) en lugar de soluciones arquitectónicas limpias.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque pruebas de estrã©s continuo (load testing) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque anã¡lisis de requerimientos de casos de uso no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque programaciã³n extrema (pair programming) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 85: Un árbol binario de búsqueda recibe datos numéricos ordena

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un árbol binario de búsqueda recibe datos numéricos ordenados del 1 al 10,000 en secuencia. El desarrollador nota que las consultas son extremadamente lentas, como si no hubiera ningún árbol programado, porque todos los nodos se insertaron hacia un solo lado formando una enorme línea recta.

---

### ❓ Pregunta

¿Qué tipo de estructura de árbol especializada debió implementar para impedir esta degradación algorítmica?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Un Árbol Binario tradicional se degrada a una vil lista enlazada (Complejidad O(n)) si se le introducen datos ya ordenados secuencialmente.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque ãrbol de segmentos unidireccional no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque ãrbol n-ario no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque grafo cã­clico dirigido no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 86: En un sistema orientado a objetos, el arquitecto define un mí

**Dificultad:** Media
**Tiempo recomendado:** 30 segundos
**Tipo de trampa:** conceptual

---

### 📖 Contexto

En un sistema orientado a objetos, el arquitecto define un método `calcularArea()` en la clase `Poligono`. Luego, las clases derivadas `Triangulo` y `Cuadrado` definen su propia implementación matemática y fórmula de esa misma función, invalidando la del padre pero conservando el mismo nombre del método en todo el sistema.

---

### ❓ Pregunta

¿Qué pilar o característica de la POO ha aplicado el arquitecto?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Sobreescritura de Métodos (Overriding) es la manifestación del Polimorfismo.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque sobrecarga de mã©todos no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque ocultamiento de variables no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque abstracciã³n de datos no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 87: El equipo de redes soluciona un problema de latencia cambiand

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El equipo de redes soluciona un problema de latencia cambiando un conector dañado en un cable de cobre trenzado y reemplazando un repetidor de señal básico en el cuarto de telecomunicaciones.

---

### ❓ Pregunta

Según el Modelo de Referencia OSI, ¿en qué capa ocurrieron las reparaciones estrictamente físicas de esta falla?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Capa 1 (Física) del Modelo OSI abarca los voltajes, radiofrecuencias, especificaciones de los conectores físicos, y componentes electrónicos que no piensan ni leen datos, sino que simplemente repiten pulsos eléctricos (como los concentradores/Hubs, cables UTP y repetidores).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque capa 3 (red) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque capa 2 (enlace de datos) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque capa 4 (transporte) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 88: En un almacén de datos (Data Warehouse), se tiene una tabla

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En un almacén de datos (Data Warehouse), se tiene una tabla masiva de mil millones de registros. Se requiere crear un índice sobre la columna "Género" que contiene exclusivamente los valores "Masculino" o "Femenino". Usar un índice B-Tree clásico resulta inútil, lento y pesado debido a la nula diversidad de valores.

---

### ❓ Pregunta

¿Qué tipo de índice especial para bases de datos es el ideal y está optimizado matemáticamente para columnas con bajísima cardinalidad (pocos valores distintos)?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Los Índices Bitmap están diseñados exactamente para columnas con baja cardinalidad (ej.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque ãndice hash compuesto no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque ãndice agrupado cã­clico no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque ãndice de texto completo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 89: Un equipo diseña un nuevo sistema operativo seguro para misi

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un equipo diseña un nuevo sistema operativo seguro para misiones aeroespaciales críticas. Deciden reducir el corazón del sistema operativo al mínimo tamaño posible, delegando los drivers, los servidores de gráficos y los sistemas de archivos a procesos de nivel de usuario, fuera de la zona protegida del núcleo.

---

### ❓ Pregunta

¿Qué arquitectura de diseño de núcleo de sistema operativo están empleando?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En un diseño Microkernel, el núcleo (Kernel) es diminuto y solo gestiona lo indispensable (comunicación de mensajes y hardware básico).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque arquitectura monolã­tica clã¡sica no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque sistema operativo de tiempo compartido no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque arquitectura distribuida en red no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 90: Se desarrolla un sistema de reportes en bolsa de valores dond

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Se desarrolla un sistema de reportes en bolsa de valores donde el módulo "DashboardVisual" y el módulo "AlertaCelular" necesitan ser informados instantáneamente cada vez que el precio de una acción cambia en el objeto "CotizadorCentral", sin necesidad de tener un bucle que consulte repetidamente.

---

### ❓ Pregunta

¿Qué Patrón de Diseño del software orquesta eficientemente este mecanismo de notificaciones automatizadas estilo "suscripción"?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Patrón de Diseño Observer establece una relación de "Publicador-Suscriptor" uno a muchos.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque patrã³n fã¡brica (factory) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque patrã³n fachada (facade) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque patrã³n adaptador (adapter) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 91: Un programador junior ejecuta un algoritmo de recursividad pr

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

Un programador junior ejecuta un algoritmo de recursividad profundo sin darse cuenta de que su condición base está mal estructurada. Tras mil ciclos, el programa explota y se aborta repentinamente marcando un "Stack Overflow Error".

---

### ❓ Pregunta

Técnicamente a nivel de arquitectura de la memoria y compilación, ¿qué estructura interna se sobrecargó hasta reventar?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Cada vez que una función invoca a otra (o a sí misma en la recursividad), el sistema guarda las variables de entorno actuales y la instrucción de "retorno" en la "Pila de Llamadas" o Call Stack de memoria.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción B**: Es incorrecta porque el registro acumulador del procesador (alu) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque la cola circular de paginaciã³n del sistema de archivos no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque el bloque de memoria reservada heap de objetos dinã¡micos no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

A

## CASO 92: En la librería "MatematicasAvanzadas" creada en C#, el equip

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En la librería "MatematicasAvanzadas" creada en C#, el equipo nota que cada vez que necesitan sumar dos números consumen recursos instanciando la clase con el operador `new MatematicasAvanzadas()`. Para ahorrar memoria, el arquitecto refactoriza la función para permitir que se ejecute la suma llamando directamente `MatematicasAvanzadas.sumar()`, prescindiendo de instanciar un objeto.

---

### ❓ Pregunta

¿Con qué modificador especial de la programación orientada a objetos debió declarar el arquitecto la función "sumar"?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Los métodos o atributos declarados como (`static`) pertenecen globalmente a la clase misma y no a sus múltiples objetos derivados.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque abstracto (abstract) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque virtual (virtual) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque sellado (sealed) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 93: La empresa de servicios de contenido en streaming distribuye

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

La empresa de servicios de contenido en streaming distribuye réplicas idénticas de su servidor de videos en 5 países distintos (Japón, Estados Unidos, Francia, Brasil y Sudáfrica), y configura los routers para que todos los cinco servidores utilicen matemáticamente la misma y única dirección IPv6 simultáneamente. Un usuario desde México solicita un video.

---

### ❓ Pregunta

¿Qué método avanzado y poderoso de direccionamiento IP se está empleando para asegurar que el tráfico desde México sea atendido por el servidor topológicamente más cercano (EE.UU.) en la red global?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** A diferencia del Unicast (una IP para un solo equipo en el mundo) o el Broadcast (un mensaje a todos), el direccionamiento "Anycast" permite que múltiples servidores dispersos mundialmente tengan asignada idénticamente la misma dirección IP pública.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque direccionamiento multicast clã¡sico no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque encapsulamiento vpn directo unicast no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque algoritmo de reparto arp dinã¡mico no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 94: Una tabla relacional normalizada "Empleados" contiene informa

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Una tabla relacional normalizada "Empleados" contiene información sobre qué empleado domina qué idioma y qué herramienta de software usa. Como Juan domina Inglés y Francés, y utiliza Excel y Word, la base de datos comienza a generar decenas de registros combinando y cruzando todas las tuplas de Juan solo para alojar estos arreglos múltiples.

---

### ❓ Pregunta

¿Qué forma de diseño de Normalización exige la eliminación estricta y rotunda de estas dependencias multivaluadas para no crear cruces cartesianos absurdos de múltiples temas independientes en una sola tabla?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La 4FN interviene cuando el diseño ya es 3FN, pero se identifican dos o más hechos independientes multivaluados sobre la misma entidad principal en una tabla simple.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque primera forma normal (1fn) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque tercera forma normal (3fn) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque quinta forma normal (5fn) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 95: Un ingeniero se conecta al servidor corporativo basado en el

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

Un ingeniero se conecta al servidor corporativo basado en el sistema operativo Linux. Necesita modificar los archivos de configuración, globales y maestros que rigen el arranque de todos los programas instalados en la máquina, pero no encuentra el directorio raíz adecuado.

---

### ❓ Pregunta

Según el Estándar de Jerarquía del Sistema de Archivos (FHS) de Linux, ¿en qué directorio del sistema debe entrar para hallar obligatoriamente estas configuraciones centrales?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En todo sistema Linux y Unix, el corazón de la configuración del host y de los servicios a nivel máquina reside dentro del directorio `/etc`.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque el directorio `/var` no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque el directorio `/bin` no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque el directorio `/home` no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 96: Para calcular la nómina de desarrollo de un sistema de infor

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

Para calcular la nómina de desarrollo de un sistema de información inmenso antes de que exista una sola línea de código escrita, la empresa financiera se apoya en medir las "Entradas Externas", "Salidas Externas", "Archivos Internos" e "Interfaces" que componen la complejidad y el alcance real de las transacciones funcionales que el cliente verá al usar el software final.

---

### ❓ Pregunta

¿Qué metodología internacional de estimación de esfuerzo en la Ingeniería de Software están empleando?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El "Análisis de Puntos de Función" evalúa un proyecto no por sus líneas de código o su tecnología, sino por la "funcionalidad" matemática útil entregada y procesada a favor del usuario (cuántos reportes arroja el sistema, cuántas pantallas de entrada hay, y cuántos archivos modifica).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque puntos de historia scrum relativa (story points) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque evaluaciã³n del modelo de madurez cmmi no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque mã©trica cocomo recursivo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 97: Un algoritmo de ajedrez tradicional de "Fuerza Bruta" explora

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

Un algoritmo de ajedrez tradicional de "Fuerza Bruta" explora millones de movimientos futuros utilizando un árbol de decisiones simple de manera estricta y recursiva. El ingeniero nota que la máquina desperdicia años de cálculo re-evaluando y procesando tableros que ya había visitado y analizado previamente.

---

### ❓ Pregunta

¿Qué paradigma algorítmico y matemático avanzado debe incorporar para guardar o cachear (memorizar) los sub-problemas previamente superpuestos solucionados y así evitar el recálculo masivo?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Programación Dinámica aborda problemas complejos optimizándolos profundamente mediante una técnica central: "La Memorización (Memoization)".
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque paradigma voraz (greedy algorithm) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque paradigma backtracking simple recursivo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque paradigma lineal distribuido no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 98: En un lenguaje estricto como Java o C#, está terminantemente

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En un lenguaje estricto como Java o C#, está terminantemente prohibido que una clase hija adquiera las implementaciones derivadas directamente de dos o más clases padre (Herencia Múltiple bloqueada a nivel máquina). Sin embargo, un objeto necesita firmar contratos y promesas de comportamiento de tres mundos de la empresarial distintos al mismo tiempo.

---

### ❓ Pregunta

En el diseño de la POO, ¿qué elemento estructural debe utilizarse para simular el comportamiento de la herencia múltiple sin caer en ambigí¼edades arquitectónicas como el "Problema del Diamante"?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Lenguajes fuertemente tipados deshabilitaron la herencia múltiple para evitar choques de métodos con igual nombre.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque variables polimã³rficas no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque super-clases inyectables modulares no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque clases nativas en cadena no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 99: El programador de una nueva aplicación de mensajería termin

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El programador de una nueva aplicación de mensajería termina su código de red TCP y quiere probar que la del servidor de puertos en su código funcione correctamente. En lugar de instalar la aplicación en dos computadoras reales conectadas, ejecuta el servidor y el cliente en su misma laptop desconectada por completo de cualquier red o cable de internet.

---

### ❓ Pregunta

¿A qué dirección IP estandarizada de uso obligatorio le configuró la conexión a su código cliente para forzar el retorno de la red sobre su misma interfaz física interna?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La dirección reservada IPv4 `127.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque 192.168.0.1 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque 255.255.255.255 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque 0.0.0.0 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 100: Un atacante encuentra una aplicación web antigua que exhibe

**Dificultad:** Media
**Tiempo recomendado:** 40 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

Un atacante encuentra una aplicación web antigua que exhibe un error SQL de inyección clásico con la sentencia `SELECT nombre, correo FROM Usuarios WHERE id = $id`. En lugar de insertar solo un `' OR '1'='1` simple, inyecta un comando complejo logrando que la tabla retorne la información normal del usuario junto con las contraseñas secretas de todos los administradores pegadas visualmente debajo.

---

### ❓ Pregunta

¿Qué comando relacional específico usó el cibercriminal para acoplar la consulta maliciosa a la consulta original forzando al motor a escupir ambas informaciones fundidas en el mismo formato en pantalla?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La inyección de base de datos basada en Unión (UNION-Based SQL Injection) es la herramienta más invasiva en vulnerabilidades tempranas de programación no sanitizada.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque insert exploit no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque delete join cluster no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque rename table hack no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

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

## CASO 101: El administrador de dominios necesita configurar la zona DNS

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El administrador de dominios necesita configurar la zona DNS de la empresa. Tiene el servidor web principal apuntando a una IP pública específica. Adicionalmente, requiere crear el subdominio `ventas.empresa.com` y quiere asegurarse de que, si la IP del servidor principal cambia en el futuro, no tenga que editar el registro del subdominio manualmente, sino que siga heredando la dirección de `www.empresa.com`.

---

### ❓ Pregunta

¿Qué tipo de registro DNS debe utilizar para el subdominio con el fin de vincularlo dinámicamente como un alias al nombre de dominio principal?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Un registro A enlaza estrictamente un nombre a una dirección IPv4.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque registro a no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque registro mx no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque registro ptr no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 102: En el desarrollo de un algoritmo de búsqueda de rutas para u

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En el desarrollo de un algoritmo de búsqueda de rutas para un videojuego de navegación, el enemigo debe sortear obstáculos en el menor tiempo computacional posible buscando al jugador. El clásico Algoritmo de Dijkstra evalúa ciegamente todos los caminos radiando en círculo, lo cual resulta ineficiente para el motor del juego.

---

### ❓ Pregunta

¿Qué algoritmo heurístico avanzado y eficiente de grafos está diseñado específicamente para trazar rutas óptimas directas combinando el costo exacto del recorrido con una estimación inteligente hacia la meta final?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** A* (A-Star) es el algoritmo soberano en ruteo y navegación computacional.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque algoritmo de floyd-warshall no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque algoritmo de prim no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque bãºsqueda lineal bidireccional no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 103: En un sistema bancario crítico global, se ha determinado que

**Dificultad:** Media
**Tiempo recomendado:** 40 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

En un sistema bancario crítico global, se ha determinado que las lecturas y escrituras contables cruzadas no pueden tolerar las llamadas "Lecturas Fantasmas" ni las inconsistencias de transacciones ejecutadas en paralelo, obligando a los usuarios a esperar matemáticamente a que otros terminen.

---

### ❓ Pregunta

Según las regulaciones de Aislamiento de Bases de Datos en SQL, ¿cuál es el nivel de bloqueo más estricto, paranoico y seguro aplicable por el motor, a cambio de sacrificar la mayor cantidad de rendimiento en concurrencia masiva?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El nivel de aislamiento SERIALIZABLE obliga lógicamente al motor de la base de datos a ordenar las operaciones masivas de miles de usuarios como si todos estuvieran en una fila india perfecta procesando uno por vez, deteniendo en seco el multihilo.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque read committed no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque repeatable read no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque read uncommitted no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 104: En una startup que utiliza el framework ágil "Extreme Progra

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

En una startup que utiliza el framework ágil "Extreme Programming" (XP), dos ingenieros se sientan juntos compartiendo el mismo teclado y monitor todo el día. Uno teclea el código operativo observando la estructura táctica (el Piloto), mientras que el otro piensa en la estrategia algorítmica, vigila la estructura arquitectónica global y revisa errores en tiempo real (el Navegante).

---

### ❓ Pregunta

¿Qué práctica obligatoria del marco XP de la ingeniería de software se describe en esta situación?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Programación en Parejas (Pair Programming) es una regla central de la Programación Extrema.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque testing continuo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque refactorizaciã³n no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque dual git commiting no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 105: Una aplicación dibuja un objeto base `Ventana`

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Una aplicación dibuja un objeto base `Ventana`. El requerimiento exige añadirle funcionalidad visual a los objetos sobre la marcha durante la ejecución (añadirle un `Borde`, una `BarraDeDesplazamiento`, o `Sombras`). Usar clases extendidas (`VentanaConBordeYSombra`) generaría cientos de combinaciones rígidas de herencia insostenibles.

---

### ❓ Pregunta

¿Qué Patrón de Diseño estructural permite acoplar capas de funcionalidades y responsabilidades a un objeto base de manera dinámica en tiempo de ejecución, envolviéndolo iterativamente?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El patrón de diseño Estructural Decorador evita la "Explosión de Clases" generada por la herencia múltiple combinatoria rígida.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque patrã³n observador (observer) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque patrã³n singleton no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque patrã³n fachada (facade) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 106: Un disco duro mecánico clásico (HDD) de un servidor masivo

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un disco duro mecánico clásico (HDD) de un servidor masivo recibe peticiones de acceso a los cilindros número 10, 80, 20 y 90. Si procesa las llamadas en ese orden (First Come First Serve), el brazo lector magnético viajará de extremo a extremo frenéticamente perdiendo tiempos valiosos de hardware. Para arreglarlo, el sistema ordena las peticiones basándose en la posición actual del brazo y lo hace viajar barriendo uniformemente hacia arriba y luego hacia abajo procesando las peticiones en el camino.

---

### ❓ Pregunta

¿A qué algoritmo clásico de planificación de unidades de almacenamiento físico pertenece esta optimización?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El algoritmo de planificación de disco SCAN, apodado históricamente "Del Ascensor", procesa y ordena lógicamente las peticiones en un movimiento de barrido físico único.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque c-scan (circular scan) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque algoritmo de prioridad exclusiva no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque shortest seek time first (sstf) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 107: Un equipo requiere identificar a simple vista el comportamien

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un equipo requiere identificar a simple vista el comportamiento de diseño de varias direcciones IPv4 clásicas. Se le presenta la dirección IP `172.16.50.5` que el arquitecto antiguo usó por default sin manipulación de subred compleja, declarando que usa una máscara tradicional `255.255.0.0` para separar la mitad del ruteo del dominio local.

---

### ❓ Pregunta

Bajo la arcaica y obsoleta, pero fundamental clasificación estricta de redes de internet, ¿a qué Clase Direccional (IP Class) pertenece nativamente esa dirección según el primer octeto matemático?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La clasificación histórica IPv4 define redes estándar con rangos fijos matemáticos.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque clase a no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque clase c no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque clase d no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 108: En un sistema escolar, una tabla de calificaciones llamada "K

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En un sistema escolar, una tabla de calificaciones llamada "Kardex" usa una "Llave Primaria Compuesta" con dos columnas: `ID_Estudiante` y `ID_Materia`. Para ahorrar tablas, el desarrollador también inserta la columna `Nombre_Materia` dentro del mismo registro de Kardex.

---

### ❓ Pregunta

La columna `Nombre_Materia` depende únicamente del `ID_Materia`, ignorando e independizándose del `ID_Estudiante`. ¿Qué pilar base de normalización y qué tipo de dependencia relacional quebranta brutalmente este diseño redundante?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Segunda Forma Normal (2FN) solo interviene y aplica en tablas con Llaves Primarias COMPUESTAS.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque rompe la 1fn por grupos repetidos atã³micos no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque rompe la 3fn por dependencia transitiva cruzada no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque rompe la forma normal de dominio fijo boyce-codd no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 109: El procesador de tareas del servidor necesita procesar petici

**Dificultad:** Media
**Tiempo recomendado:** 30 segundos
**Tipo de trampa:** conceptual

---

### 📖 Contexto

El procesador de tareas del servidor necesita procesar peticiones urgentes. A diferencia de una cola normal donde "el primero que llega sale primero (FIFO)", aquí las peticiones tienen calificaciones matemáticas dinámicas (Prioridades del 1 al 100). El algoritmo requiere asegurar de forma extremadamente veloz e inmediata la extracción del "Elemento de mayor prioridad numérica" de la colección total de objetos vivos sin importar en qué orden de tiempo entró.

---

### ❓ Pregunta

¿Qué estructura matemática de datos de la algoritmia clásica es la implementación ideal para alojar internamente esta base de "Cola de Prioridad Mínima o Máxima"?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Un Montículo (Heap) es un árbol binario especial de naturaleza algorítmica donde el elemento de valor máximo (o mínimo, según se diseñe) se ve lógicamente obligado y acomodado a "flotar" y vivir en la raíz suprema en tiempo O(log n).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque un ãrbol binario de bãºsqueda secuencial lento (unbalanced bst) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque una tabla de hash o diccionario no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque una pila lifo recursiva no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 110: Una empresa despliega 50 servicios pequeños (Microservicios)

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Una empresa despliega 50 servicios pequeños (Microservicios). Tradicionalmente instalaría 50 Máquinas Virtuales completas (VMWare/VirtualBox). Al darse cuenta de que las VM arrancan 50 sistemas operativos pesados completos (con 50 kernels Linux) para ejecutar programas triviales, adoptan tecnologías como Docker, donde los 50 servicios comparten transparentemente un solo Kernel base Linux maestro y arrancan en microsegundos pesando megabytes.

---

### ❓ Pregunta

En términos estructurales y de virtualización, ¿cómo se denomina formalmente esta capa de infraestructura Docker moderna dentro del DevOps que abstrae todo a un nivel superior?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Los Contenedores de software (Docker) realizan "Virtualización a nivel de Sistema Operativo".
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque virtualizaciã³n paravirtual completa (full os paravirtualization) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque aislamiento sandbox en mã¡quina virtual nativa no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque hipervisor universal barem-metal pila 1 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 111: En un sistema de Big Data corporativo como Apache Hadoop, las

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En un sistema de Big Data corporativo como Apache Hadoop, las peticiones almacenan archivos gigantescos de Terabytes. Como no caben en un solo disco físico, el software divide transparentemente el archivo monumental en trozos de 128 MB (Chunks) y los esparce por las redes a lo largo de 500 computadoras simples diferentes en el corporativo. Al solicitar abrirlo, el sistema lo rearma al vuelo uniendo los trozos como si fuera un solo disco gigante a ojos del usuario local.

---

### ❓ Pregunta

¿A qué familia de tecnología de sistemas de almacenamiento a nivel sistema operativo obedece y pertenece este ecosistema Hadoop fundamental?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Los Sistemas de Archivos Distribuidos (como HDFS de Hadoop, NFS clásico o Google File System) permiten la manipulación, lectura y almacenamiento gigantesco de información digital abarcando y aglutinando los espacios de disco de múltiples máquinas independientes.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque sistema de archivos fat16 de almacenamiento local no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque sistemas de paginaciã³n fragmentada por sector ext4 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque bases de datos relacionales clã¡sicas con fragmentos binarios no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 112: El analista de ciberseguridad monitorea una subred e identifi

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El analista de ciberseguridad monitorea una subred e identifica una dirección física asignada al hardware de red de la laptop atacante mediante la cadena de notación exótica: `3A:4F:9C:22:BB:05`. í0 l sabe que los tres primeros octetos numéricos designan al fabricante de la tarjeta a nivel global y los tres últimos al dispositivo, sin cambiar nunca a menos que se suplante.

---

### ❓ Pregunta

Considerando la longitud y estructura de los datos, ¿qué es exactamente esta cadena analizada y en qué capa del Modelo OSI opera permanentemente en hardware en un Switch local?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Una Dirección MAC es la huella digital "física e inmutable" quemada de fábrica en la tarjeta de red (NIC) del host.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque direcciã³n ipv6 - capa 3 de red no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque direcciã³n ipv4 privada en hexadecimal - capa 4 de transporte no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque clave de cifrado de capa fã­sica - capa 1 de fibra local no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 113: El motor SQL requiere garantizar seguridad al banco

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El motor SQL requiere garantizar seguridad al banco. El ingeniero DBA estipula reglas estrictas forzosas en el esquema: "El valor final en la columna de dinero nunca y bajo ninguna circunstancia natural puede descender del valor numérico cero (Restricción CHECK de Base de Datos)". Si un programa intenta procesar un bloque de transacciones matemáticas que termine quebrando y violando esta condición relacional central en la cuenta, la transacción fracasa y se descarta totalmente al milisegundo devolviendo el estado anterior intacto.

---

### ❓ Pregunta

Según las siglas inquebrantables de los modelos de las bases de datos relacionales "ACID", ¿qué propiedad se encarga formalmente de evitar que las reglas de integridad de la base queden dañadas tras una operación?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La "C" de Consistencia en ACID (Consistencia de Base de Datos, distinta al Teorema CAP de redes) dictamina y garantiza que ninguna transacción logre completarse de manera exitosa si eso significa abandonar la base de datos en un estado matemáticamente o estructuralmente inválido o corrupto (ej.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque aislamiento (isolation) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque atomicidad (atomicity) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque durabilidad (durability) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 114: En la programación modular de un sistema ERP logístico se t

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En la programación modular de un sistema ERP logístico se tiene la clase central "CalculoDeDescuentos". Al principio solo calculaba el descuento estándar. Luego, en la época navideña, en lugar de crear una clase independiente adaptadora, el programador junior entra directamente a la matriz del archivo de código base original de la clase y le inserta tres nuevos bloques `if-else` condicionales para manejar los descuentos, abriendo la puerta a que otro desarrollador quiebre o contamine todo lo que antes funcionaba bien.

---

### ❓ Pregunta

Dentro de los cinco pilares innegociables de arquitectura limpia de "SOLID", ¿qué principio capital violó directamente el programador al realizar esta intervención intrusiva al código central?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Principio de Abierto/Cerrado (La O de SOLID) es el Santo Grial del desarrollo seguro y modular: Las clases deben ser siempre "Abiertas para la extensión" (capaces de adoptar nuevas funciones o variantes a futuro inyectándolas por interfaces y polimorfismo) pero estrictamente "Cerradas para la modificación matemática del código fuente nativo antiguo".
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción B**: Es incorrecta porque principio de inversiã³n de dependencia (dependency inversion) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque principio de sustituciã³n de liskov matemã¡tica (lsp) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque principio de segregaciã³n simple de interface (isp) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

A

## CASO 115: Un ingeniero de diseño de software describe y bosqueja en UM

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un ingeniero de diseño de software describe y bosqueja en UML cómo debe funcionar exactamente la orden funcional de compra "Carrito": Primero nace como "Generado", al presionar pagar transita a "Autorizado". Si hay fondos, brinca a "Empacando". Finalmente viaja a la condición última de "Despachado". Si falla el cobro, es regresado a un formato alternativo "Rechazado", del cual ya no puede volver.

---

### ❓ Pregunta

¿Qué tipo de diagrama de comportamiento técnico UML permite cartografiar formalmente los diferentes periodos de vida que asume y adquiere un único objeto respondiendo a estímulos directos y eventos del tiempo?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Los Diagramas de Máquina de Estados se especializan funcionalmente en ilustrar todos los comportamientos secuenciales en forma de vida por los que un solo y único objeto dinámico puede llegar a transitar ("Estados"), junto con los "Eventos" disparadores concretos o transiciones que causan y fuerzan ese cambio secuencial de fase en el sistema complejo (ej.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque diagrama de clases en sistema no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque diagrama funcional general de casos de uso no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque diagrama fã­sico de despliegue y redes de host no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 116: En un sistema de telecomunicaciones local cerrado que lee aud

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En un sistema de telecomunicaciones local cerrado que lee audios en bucle repetitivo de alta latencia, el arreglo físico de almacenamiento debe ser veloz y continuo. Para ello, un puntero que lee el final matemático de la cola no choca contra un vacío, sino que al llegar a la última posición de la memoria del arreglo se salta y se reconecta instantáneamente hacia la posición cero original, leyendo datos nuevos en ciclos continuos indefinidamente sin expandir el tamaño límite original de la memoria RAM global predefinida localmente.

---

### ❓ Pregunta

¿Qué estructura matemática de datos de arreglo posicional especial está empleando activamente para optimizar recursos el administrador en programación concurrente local?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Un Buffer Circular (Ring Buffer o Cola Circular) optimiza elegantemente el almacenamiento con tamaño limitado.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque pila de recursiã³n circular abstracta no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque ãrbol de prioridad estricto simã©trico dinã¡mico no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque vector bidireccional infinito de nodos distribuidos locales simples no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 117: El equipo informático levanta en la red local un servidor lo

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El equipo informático levanta en la red local un servidor local de Exchange seguro corporativo y configura un software y cliente en escritorio. Necesitan habilitar rigurosamente dos protocolos clave separados y funcionales en los clientes de mensajería: el primero debe tomar la responsabilidad estricta de enviar las tramas textuales del mensaje de ida, mientras que el segundo protocolo se debe encargar únicamente de recibir y gestionar los buzones, descargando sincronizadamente los archivos finales de forma eficiente a los hosts locales del usuario final de red.

---

### ❓ Pregunta

¿Qué dupla estándar clásica de protocolos de la Capa de Aplicación de red resuelve exactamente esta división administrativa de transmisión saliente y recepción entrante?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La dupla histórica del e-mail en redes de la Capa 7 del Modelo OSI de transporte informático.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque telnet para salida tcp, ssh para entrada tcp no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque ftp masivo para salida entrante local y sftp entrante saliente para lecturas locales no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque bgp central local bidireccional localmente y rip entrante interno no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 118: En un ambiente Linux altamente de alta concurrencia intensiva

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En un ambiente Linux altamente de alta concurrencia intensiva y de procesador paralelo de multinúcleo pesado, existen múltiples procesos matemáticos (Process A y Process B independientes). Necesitan intercambiar entre ellos de manera crítica grandes cantidades masivas de datos a una velocidad de microsegundos matemáticos locales, sin la latencia de sobrecargas ni la intervención forzosa de tuberías directas, compartiendo simultáneamente el poder e interacción por el sistema operativo global central local.

---

### ❓ Pregunta

¿Qué técnica nativa en el Sistema Operativo para la Comunicación Inter-Procesos local (IPC) logra y ofrece la máxima velocidad existente técnica eliminando latencias del kernel?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En los entornos clásicos IPC (Inter-Process Communication), la transferencia paralela por Paso de Mensajes (Pipes o Sockets locales) requiere y exige múltiples copias sistémicas a los buzones del núcleo de Linux (Kernel).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque tuberã­as clã¡sicas de red locales no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque mensajes de paso fijos interconectables y sockets ip simples no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque conexiones udp en paralelo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 119: En una startup, el servidor central almacena datos de Big Dat

**Dificultad:** Media
**Tiempo recomendado:** 40 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

En una startup, el servidor central almacena datos de Big Data para un modelo simple local. Se manejan billones de datos por minuto, lo que asfixia un servidor estándar relacional. El CTO exige migrar de inmediato y reemplazarlo por un modelo avanzado de bases de datos que no almacena ni lee las cosas tradicionalmente "fila por fila relacionalmente " sino que estructura física e internamente todo leyendo los datos de manera transversal masiva (Por ejemplo, guardando todas las "fechas " juntas físicamente en el disco local y no en el registro lateral plano).

---

### ❓ Pregunta

¿A qué esquema de Base de Datos NoSQL avanzada debe recurrir forzosamente y técnicamente para cubrir su requerimiento vertical masivo veloz?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Las Bases de Datos NoSQL Columnares (ej.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque bd en grafo de nodos bidireccionales locales no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque bd documental base libre nosql clã¡sica en json no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque modelo de llave-valor simple de cache global inversa local no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 120: En una empresa con desarrollo colaborativo, tú trabajas loca

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En una empresa con desarrollo colaborativo, tú trabajas localmente elaborando 5 commits en tu rama paralela secundaria "Feature" al mismo tiempo que el resto del corporativo envía otros 10 commits masivos e integran funciones principales en la rama original central "Main". Tu jefe local pide que integres y sincronices tu trabajo para publicarlo, logrando mantener limpio y linealmente plano todo el árbol local de tiempo de trabajo oficial central, sin generar jamás la contaminación histórica paralela del típico "Commit Especial Adicional Enredado" ni la creación y visión bifurcada compleja de burbujas en el árbol de colaboración de GitHub histórico.

---

### ❓ Pregunta

¿Qué acción y comando de ingeniería central de la plataforma de versionamiento de control Git logrará estricta y funcionalmente esta integración armónica logrando el acomodo ideal de inserción exigida?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** A diferencia del tradicional `git merge` clásico (que aglutina y entrelaza asimétricamente el trabajo lateral creando bifurcaciones con un nuevo archivo o rombo de commit intermedio caótico e inevitable), la funcionalidad poderosa de `git rebase` desengancha y corta tus trabajos propios paralelos y los reubica transaccionalmente como una línea limpia y perfecta al frente o final exacto de la última línea base y fresca de "main", dejando un árbol limpio y un historial perfecto y plano cronológicamente como si tú nunca te hubieras atrasado ni trabajado en paralelo nunca.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque comando base git reset hard global forzado no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque acciã³n y operaciã³n simple paralela git merge fast-forward local no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque estructura git squash forzoso directo de tiempo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

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

## CASO 121: Un corporativo sufre ataques

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un corporativo sufre ataques. El arquitecto de red decide reemplazar el viejo filtro de paquetes del enrutador, el cual bloqueaba puertos de manera individual sin recordar las conexiones anteriores. El nuevo dispositivo analiza toda la sesión desde que inicia el saludo de tres vías (Three-way Handshake), recuerda el flujo de datos y bloquea automáticamente cualquier paquete entrante que no pertenezca a una conexión legítimamente iniciada desde el interior de la empresa.

---

### ❓ Pregunta

¿Qué tecnología de inspección avanzada de seguridad en redes acaba de implementarse?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Un firewall "Stateless" examina cada paquete de red de forma individual e independiente, lo cual es ineficiente y fácil de evadir.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque firewall de filtrado simple (stateless) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque sistema de detecciã³n de intrusos (ids) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque proxy reverso en la capa 7 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 122: Una red social almacena millones de contraseñas de usuarios

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Una red social almacena millones de contraseñas de usuarios. Para proteger los datos en caso de una filtración de la base de datos, el ingeniero utiliza un algoritmo que convierte la contraseña en una cadena alfanumérica matemática fija de 256 bits, garantizando que sea extremadamente resistente a colisiones y sin posibilidad de aplicar ingeniería inversa.

---

### ❓ Pregunta

¿Qué algoritmo criptográfico moderno de la industria debe utilizar por defecto para cumplir con estas especificaciones de seguridad?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Para almacenar contraseñas, nunca se utiliza un cifrado reversible (como AES o RSA) porque alguien con la llave podría leerlas.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque algoritmo de cifrado simã©trico aes-256 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque algoritmo rsa no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque funciã³n de hash md5 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 123: Para buscar velozmente registros en una tabla de cinco millon

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Para buscar velozmente registros en una tabla de cinco millones de clientes, el motor de base de datos no escanea fila por fila, sino que consulta una estructura anexa optimizada y jerárquica en el disco. Esta estructura agrupa llaves de forma ordenada con múltiples ramificaciones por nodo, permitiendo encontrar cualquier ID leyendo un máximo de 3 a 4 bloques en el disco duro.

---

### ❓ Pregunta

¿Cuál es la estructura de datos interna predominante y universal que usan los motores de bases de datos relacionales para construir sus índices principales?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Los índices en bases de datos relacionales (como MySQL o SQL Server) están construidos sobre la base de un "Árbol B" (B-Tree o Árboles B+).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción B**: Es incorrecta porque lista doblemente enlazada no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque pila estructurada no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque algoritmo de bãºsqueda lineal no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

A

## CASO 124: Un equipo maduro en DevOps configura un servidor de automatiz

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un equipo maduro en DevOps configura un servidor de automatización Jenkins. Cada vez que un desarrollador hace un envío de código, Jenkins lo compila, ejecuta 500 pruebas unitarias de calidad, y construye el paquete final listo para usar en un contenedor Docker. Sin embargo, el equipo de QA exige que ese contenedor final sea retenido en un entorno de pruebas, y prohíbe rotundamente que el código se mande al servidor de los clientes sin que un humano presione primero un botón de "Aprobar".

---

### ❓ Pregunta

¿Qué ciclo y etapa específica de despliegue de infraestructura ágil están implementando?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En DevOps, la "Entrega Continua" (Continuous Delivery) automatiza toda la cadena hasta dejar el paquete listo para producción, pero exige obligatoriamente una aprobación humana manual final antes de liberar el software a los usuarios.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque integraciã³n continua total (ci) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque despliegue continuo (continuous deployment) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque integraciã³n de monitoreo dinã¡mico no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 125: Un desarrollador en Java diseña una clase constructora para

**Dificultad:** Media
**Tiempo recomendado:** 30 segundos
**Tipo de trampa:** conceptual

---

### 📖 Contexto

Un desarrollador en Java diseña una clase constructora para enviar correos. En lugar de forzar al usuario a llamar métodos en líneas separadas, diseña los métodos devolviendo la instancia de la misma clase al terminar, permitiendo encadenar funciones de forma natural: `Correo.crear().para("jefe@empresa.com").conAsunto("Aviso").enviar();`.

---

### ❓ Pregunta

¿Qué concepto y patrón de diseño de Programación Orientada a Objetos representa esta estructura concatenada?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El patrón "Fluent Interface", comúnmente implementado mediante el "Encadenamiento de Métodos" (Method Chaining), es una técnica de POO donde cada método interno retorna obligatoriamente el propio objeto `(return this;)`.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque inyecciã³n de dependencias no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque interface segregation (segregaciã³n de interfaz) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque objeto abstracto no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 126: Un sistema escrito en el lenguaje C++ opera el radar de un ae

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

Un sistema escrito en el lenguaje C++ opera el radar de un aeropuerto. Tras varias semanas de uso sin apagarse, el servidor reporta un error fatal y se congela porque ha agotado toda la memoria RAM, a pesar de estar procesando pocos vuelos. Un análisis revela que los programadores olvidaron escribir el comando `delete` u `ocultar` en el código tras destruir los aviones que salían de la pantalla.

---

### ❓ Pregunta

¿Qué nombre técnico recibe esta peligrosa vulnerabilidad de arquitectura de software y gestión de memoria?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En lenguajes no gestionados como C o C++ que carecen de "Recolector de Basura" automático (Garbage Collector), el programador es responsable de liberar manualmente en el código la memoria reservada de los objetos cuando ya no se usan.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque inaniciã³n (starvation) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque condiciã³n de carrera (race condition) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque desbordamiento de bãºfer (buffer overflow) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 127: En un corporativo, el servidor de red DHCP se daña

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En un corporativo, el servidor de red DHCP se daña. Un empleado enciende su computadora con Windows para trabajar. Al revisar la configuración de red, nota que su máquina tiene una dirección IP asignada mágicamente con el valor `169.254.45.10`, aunque no hay ningún servidor en la oficina que le haya otorgado esa configuración.

---

### ❓ Pregunta

¿Qué protocolo nativo del sistema operativo generó y configuró esta dirección para intentar mantener viva la red local?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Cuando una computadora (especialmente en entornos Windows) está configurada para obtener una IP automáticamente pero no logra comunicarse con un servidor DHCP, el sistema utiliza APIPA para auto-asignarse matemáticamente una dirección en el rango reservado "169.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque nat (network address translation) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque ipv6 anycast routing no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque dns dinã¡mico de emergencia no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 128: Una empresa pierde datos valiosos de transacciones bancarias

**Dificultad:** Media
**Tiempo recomendado:** 40 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

Una empresa pierde datos valiosos de transacciones bancarias a las 3:15 p.m. debido a un error humano masivo en un query SQL. El administrador debe restaurar la base de datos no al cierre del día de ayer, sino exactamente al estado milimétrico de las 3:14 p.m. de hoy, justo un minuto antes del desastre.

---

### ❓ Pregunta

Para lograr esta recuperación quirúrgica en bases de datos relacionales, ¿qué mecanismo interno y archivo de control del motor de base de datos se debe utilizar y reproducir secuencialmente?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Registro de Transacciones (Transaction Log) es un archivo protegido y vital donde el motor de base de datos anota paso a paso cada `INSERT`, `UPDATE` o `DELETE` mucho antes de aplicarlo en el disco duro.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque la pila de vistas materializadas (materialized views) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque un respaldo incremental de bloques de sistema (file system snapshot) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque el clãºster de ãndices b-tree no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 129: Un estudiante de Ciencias de la Computación diseña una inte

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

Un estudiante de Ciencias de la Computación diseña una inteligencia artificial básica para resolver un laberinto en pantalla. La programada avanza casilla por casilla eligiendo rutas; cuando se topa con un muro y descubre que está en un callejón sin salida, su código retrocede exactamente a la última intersección segura que visitó para descartar esa ruta y elegir la otra opción inexplorada.

---

### ❓ Pregunta

¿Qué estrategia clásica de algoritmos y diseño matemático de búsqueda está utilizando el programa para resolver el laberinto?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Backtracking o "Vuelta Atrás" es un paradigma algorítmico de búsqueda sistemática y exhaustiva.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque programaciã³n dinã¡mica (dynamic programming) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque divide y vencerã¡s (divide and conquer) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque algoritmo voraz directo (greedy method) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 130: Para impedir sobrecargas en el software, implementas el Patrí

**Dificultad:** Media
**Tiempo recomendado:** 30 segundos
**Tipo de trampa:** conceptual

---

### 📖 Contexto

Para impedir sobrecargas en el software, implementas el Patrón de Diseño "Singleton" para garantizar un solo objeto gestor de correos globales. En un servidor concurrente multihilos, los hilos chocan creando la clase varias veces. Decides usar `synchronized` para bloquear la función entera, pero esto paraliza la velocidad del sistema. Decides bloquear el hilo solo dentro del constructor inicial, evaluando un `if (instancia == null)` de manera meticulosa y optimizada.

---

### ❓ Pregunta

¿Qué patrón avanzado de validación en concurrencia es el recomendado en Java o C# para aplicar el Singleton de forma veloz y segura usando una doble comprobación de los hilos?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Bloqueo de Doble Comprobación (Double-Checked Locking) es el diseño definitivo para el patrón Singleton seguro en hilos (Thread-Safe).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque patrã³n observador de semã¡foros no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque algoritmo de hilos mutex independientes no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque singleton de inyecciã³n fluida no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 131: En un sistema Linux, el programador ejecuta comandos de conso

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

En un sistema Linux, el programador ejecuta comandos de consola. Crea un archivo original llamado `config.conf`. Luego, mediante el comando `ln -s`, crea un "Enlace Simbólico" (Symlink) llamado `atajo.conf` apuntando al archivo original. Un minuto después, mueve y cambia de carpeta física el archivo original `config.conf` llevándoselo al directorio `/etc`.

---

### ❓ Pregunta

¿Qué ocurrirá al intentar abrir y leer los datos usando el acceso directo `atajo.conf`?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Un Enlace Simbólico (Symlink) funciona exactamente como los "Accesos directos" tradicionales de Windows.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque se abrirã¡ correctamente rastreando al sistema de inodos. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque eliminarã¡ el archivo automã¡ticamente por regla de seguridad estricta. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque duplicarã¡ el archivo creando una copia rã­gida real localmente. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 132: Al auditar los servicios de red abiertos hacia internet en el

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Al auditar los servicios de red abiertos hacia internet en el firewall de la empresa, el especialista en ciberseguridad bloquea todos los puertos numéricos por seguridad extrema y exige habilitar y abrir estrictamente solo el puerto estándar del tráfico seguro de páginas web y el puerto para la resolución de nombres de dominio en los navegadores.

---

### ❓ Pregunta

Considerando el modelo oficial, ¿qué números de puertos de la capa de transporte deben abrirse estrictamente para cubrir esa solicitud?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Para la navegación cifrada estándar de hoy en día (HTTPS), el protocolo de internet demanda la apertura del puerto 443 vía TCP.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque puerto 80 para la navegaciã³n http y puerto 21 para dns seguro no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque puerto 22 para navegaciã³n global y puerto 25 para las peticiones dns udp no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque puerto 8080 tcp para ssl global y puerto 53 para dns interno no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 133: Una aplicación web de compras en Node

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

Una aplicación web de compras en Node.js recibe miles de visitas. Si se instruye al sistema para usar la instrucción `nueva_conexion()` abriendo y cerrando la red TCP hacia la base de datos por cada usuario que entra, el sistema colapsará, ya que crear conexiones de red desde cero toma cientos de milisegundos y consume excesiva RAM en el motor de base de datos.

---

### ❓ Pregunta

¿Qué arquitectura o patrón de software para backend resuelve este problema de conectividad de red asfixiante?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Connection Pooling (Pool de Conexiones) es vital para el rendimiento web avanzado.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque implementar fragmentaciã³n horizontal de nodos (sharding) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque aplicar inyecciã³n de dependencias a las tablas relacionales no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque desplegar rã©plicas con memoria virtual y paginaciã³n no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 134: Un arquitecto de programación modela aves

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un arquitecto de programación modela aves. Define la clase superior `Ave` con el método fundamental `volar()`. Luego, la clase `Avestruz` hereda nativamente de `Ave`. Como los avestruces no vuelan, el desarrollador sobreescribe el método para que al invocar `volar()`, el objeto arroje directamente una excepción fatal y un quiebre en la aplicación (`Throw Exception`).

---

### ❓ Pregunta

Según las normativas de arquitectura y diseño limpio SOLID, ¿qué principio de estructuración de clases rompió por completo el desarrollador?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La "L" de SOLID (Principio de Sustitución de Liskov).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque principio de inversiã³n de dependencia (dip) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque principio de segregaciã³n de interfaz (isp) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque principio abierto/cerrado (ocp) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 135: El equipo comercial en un proyecto ágil redacta una Historia

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El equipo comercial en un proyecto ágil redacta una Historia de Usuario para la función "Carrito de Compras". El ingeniero líder la revisa y se la devuelve, argumentando que la historia carece de un elemento clave necesario para que el área de Control de Calidad (QA) y el programador sepan matemáticamente qué condiciones funcionales mínimas deben existir para poder dar por finalizada la tarea exitosamente.

---

### ❓ Pregunta

¿Qué elemento oficial y medible falta por redactar obligatoriamente dentro de la Historia de Usuario de Scrum?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Los Criterios de Aceptación son una lista y binaria de reglas adjunta a cada Historia de Usuario.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque los diagramas uml del back-end estructural no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque casos de uso extendidos tã©cnicos no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque puntos estimados de esfuerzo (story points) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 136: Un ingeniero debe programar una librería de procesamiento de

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

Un ingeniero debe programar una librería de procesamiento de listas de datos muy desordenadas de hasta 100,000 elementos. Decide usar un algoritmo fundamental de las ciencias computacionales: elige un número de la lista para usarlo como "Pivote", organiza los datos menores a la izquierda del pivote y los mayores a la derecha, para luego repetir esta estrategia matemáticamente sobre ambas mitades resultantes por separado.

---

### ❓ Pregunta

¿Qué potente algoritmo de ordenamiento y arquitectura Big O está diseñando el ingeniero?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El ordenamiento Quick Sort (Ordenación Rápida) es el algoritmo más usado en bibliotecas nativas de todos los lenguajes de programación modernos.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque algoritmo merge sort de desempeã±o o(n) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque algoritmo selection sort de o(n^2) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque algoritmo bubble sort de alta fragmentaciã³n o(1) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 137: El director del campus universitario decide modernizar las an

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El director del campus universitario decide modernizar las antenas y ruteadores inalámbricos en los salones de clases argumentando que el viejo protocolo `802.11ac` ya no soporta la alta densidad de decenas de alumnos usando múltiples dispositivos de manera simultánea sin degradar enormemente la velocidad y provocar choques masivos de red.

---

### ❓ Pregunta

¿A qué protocolo inalámbrico moderno y de sexta generación (Wi-Fi 6) debe migrar para garantizar multiplexación masiva en entornos saturados de aparatos y conectividad de antenas de alta demanda computacional?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El protocolo 802.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque 802.11n (wi-fi 4 clã¡sico) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque 802.11b (wi-fi legacy de alta distancia) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque 802.1x (protocolo seguro autenticado) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 138: El encargado del centro de datos crea en Linux un archivo de

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El encargado del centro de datos crea en Linux un archivo de automatización usando comandos de bash y lo guarda como `respaldo.sh`. En la primera línea del archivo de texto ha escrito rigurosamente el código `#!/bin/bash`. Sin embargo, al teclear `./respaldo.sh` en la consola, el sistema operativo le arroja un error absoluto de "Permiso Denegado".

---

### ❓ Pregunta

¿Qué comando administrativo faltó ejecutar previamente sobre el archivo en el nivel de permisos para permitir que el núcleo del sistema procediera con la lectura y ejecución del script algorítmico?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En los entornos de la rama Unix y Linux, crear un documento de texto y añadirle la extensión `.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque asignarle permisos root globales usando `sudo file./respaldo.sh` no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque elevar el archivo sobre la capa estricta del kernel usando `chown root:root respaldo.sh` no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque forzar el inicio manual del demonio shell `sh./respaldo.sh --execute` no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 139: En una transacción financiera SQL, la Transacción A bloquea

**Dificultad:** Media
**Tiempo recomendado:** 30 segundos
**Tipo de trampa:** conceptual

---

### 📖 Contexto

En una transacción financiera SQL, la Transacción A bloquea el "Registro de Cuenta Fija" del cliente y luego solicita el "Registro de Cuenta de Ahorros" del mismo cliente. Al mismo tiempo y en milisegundos, la Transacción B bloquea primero el "Registro de Cuenta de Ahorros" y después intenta acceder al "Registro de Cuenta Fija". El sistema entra en una pausa perpetua colapsada donde ambos módulos informáticos están esperando indefinidamente a que el otro suelte su objeto matemático.

---

### ❓ Pregunta

¿Qué solución técnica automatizada en las bases de datos modernas interviene y quiebra radicalmente el famoso "Abrazo Mortal" y la parálisis arquitectónica generada por la colisión?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El abrazo mortal (Deadlock / Interbloqueo) es el peor terror de un programador concurrente.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque un algoritmo de semã¡foro local binario y paginaciã³n en memoria swap dinã¡mica no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque la base de datos reinicia en cascada apagando los servicios secundarios forzosos no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque la base de datos ignora las llaves abriendo la lectura sucia en el entorno de ambas cuentas. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 140: El líder del equipo técnico decide elevar la rigidez de cal

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El líder del equipo técnico decide elevar la rigidez de calidad del software y exige la implementación de una herramienta avanzada automatizada como SonarQube u otros analizadores en el entorno. Se decreta que el código nuevo enviado por cualquier desarrollador no podrá pasar a producción a menos que logre certificar matemáticamente la "Métrica Funcional del 80%".

---

### ❓ Pregunta

¿A qué métrica clave se refiere el estándar de la ingeniería de software moderna cuando exige alcanzar el "80% de calidad en pruebas y flujos técnicos"?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Cobertura de Código (Code Coverage) es una métrica incuestionable de aseguramiento de calidad (QA).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción B**: Es incorrecta porque al rendimiento mã©trico de la latencia en milisegundos de la red en cada iteraciã³n del cã³digo. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque al 80% de ã©xito matemã¡tico analizado en la velocidad de la base relacional del backend global. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque al acoplamiento arquitectã³nico de interfaces grã¡ficas. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

A

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

## CASO 141: El hospital general necesita un rediseño de red corporativa

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

El hospital general necesita un rediseño de red corporativa. Implementan un servidor web externo para que los pacientes de todo el mundo consulten horarios de médicos. Sin embargo, también cuentan con un servidor interno que aloja el expediente clínico crítico. Por regla máxima de seguridad gubernamental, ambos servidores deben tener restricciones de red separadas físicamente.

---

### ❓ Pregunta

¿En qué sector perimetral específico del Firewall corporativo debe instalarse estratégicamente el servidor web público para aislarlo correctamente del servidor interno crítico?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Zona Desmilitarizada (DMZ) es un segmento de red aislado y ubicado entre Internet público y la red interna de la empresa (LAN).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque en el clãºster enrutador interno vlan no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque en un segmento switch capa 2 local no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque en la misma subred usando mã¡scara restrictiva no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 142: Un ingeniero compite diseñando un algoritmo para un robot de

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un ingeniero compite diseñando un algoritmo para un robot de logística en un almacén inteligente. El robot tiene una caja con una capacidad máxima de 15 kilogramos. Existen diferentes artículos de distintos pesos y valores monetarios únicos. El robot debe calcular y llevarse la combinación matemática exacta de artículos que sume el máximo valor monetario posible, sin superar bajo ninguna circunstancia el peso permitido de la caja.

---

### ❓ Pregunta

¿A qué problema matemático y algorítmico clásico de la programación computacional óptima se están enfrentando?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Problema de la Mochila (Knapsack Problem 0/1) es uno de los máximos exponentes de los retos matemáticos de optimización combinatoria.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque problema de los filã³sofos comensales (dining philosophers) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque problema del viajante de comercio (traveling salesman) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque las torres de hanã³i computacional no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 143: El equipo de ventas de la matriz requiere ejecutar el reporte

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El equipo de ventas de la matriz requiere ejecutar el reporte mundial financiero de los últimos diez años, un análisis exhaustivo que aglutina cincuenta tablas y suma miles de millones de filas en cruce. Al correrlo, el motor SQL sufre calculando todas las matemáticas al vuelo durante horas y colapsando el servidor completo. El DBA decide congelar los resultados y grabarlos físicamente en un espacio separado en el disco, permitiendo que las lecturas y consultas subsiguientes sean casi instantáneas.

---

### ❓ Pregunta

¿Qué tecnología relacional avanzada aplicó el Administrador de la Base de Datos para sanar y esquivar los cuellos de botella de esta demanda?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** A diferencia de una Vista Común (View normal de SQL, que solo actúa como un alias y obliga a correr la consulta de nuevo matemáticamente), una Vista Materializada ejecuta la consulta infernal una sola vez y graba los resultados físicos definitivos en una nueva tabla oculta del disco duro.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción B**: Es incorrecta porque vista estã¡ndar comãºn no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque disparador de paginaciã³n recursiva no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque fragmentaciã³n b-tree de indices forzados no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

A

## CASO 144: Una plataforma gigantesca como Netflix o Spotify sufre proble

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Una plataforma gigantesca como Netflix o Spotify sufre problemas en el departamento de desarrollo. El equipo que gestiona y programa "La barra lateral del menú web" retrasa constantemente la publicación de actualizaciones por esperar a que el equipo que programa "El reproductor de video" termine, ya que ambos comparten y editan en el mismo archivo gigante monolítico de React/Angular.

---

### ❓ Pregunta

Para resolver y fragmentar la aplicación del cliente final permitiendo que ambos equipos publiquen actualizaciones web y utilicen tecnologías independientes en la misma pantalla web al mismo tiempo sin colisionar lógicamente, ¿qué modelo de arquitectura y diseño debe emplearse?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Arquitectura de Microfrontends toma el mismo concepto salvador de los "Microservicios", pero lo aplica al lado del navegador e interfaz gráfica del cliente (Front-End).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque patrã³n mvc estricto no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque despliegue de aplicaciã³n web de pã¡gina ãanica (spa) nativa no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque refactorizaciã³n a microservicios de back-end rest api no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 145: En la programación modular estricta de una tienda web, el ar

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En la programación modular estricta de una tienda web, el arquitecto nota que las clases del "Cálculo de Descuentos" llaman e importan rígidamente dentro de su interior a clases externas de bases de datos de bajo nivel para buscar los catálogos. El arquitecto rechaza el código y exige inyectar una regla: Las reglas superiores de negocio jamás deben depender e importar archivos físicos básicos de la tecnología del software, y ambos módulos deben conectarse usando una abstracción en su lugar funcional.

---

### ❓ Pregunta

Según las normativas de SOLID y diseño modular, ¿qué principio fue violado de manera contundente y corregido estructuralmente?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La "D" de SOLID es el muro final arquitectónico.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque principio de responsabilidad ãanica (srp) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque principio de sustituciã³n de liskov (lsp) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque principio de abierto y cerrado (ocp) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 146: El Sistema Operativo Linux moderno de un desarrollador cuenta

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

El Sistema Operativo Linux moderno de un desarrollador cuenta con escasa memoria RAM. Cuando el usuario hace doble clic para abrir la suite completa pesada del paquete Office o LibreOffice, el sistema operativo no carga los 2 Gigabytes del programa de golpe en la memoria RAM, sino que engaña matemáticamente al programa dejándolo en el disco duro, y va trayendo fragmentos de 4 Kilobytes a la memoria en el procesador estrictamente a medida que el programa avanza y los va requiriendo para funcionar lógicamente.

---

### ❓ Pregunta

¿Cómo se le denomina técnicamente a esta funcionalidad vital propia de los sistemas de administración de memoria y arquitectura contemporánea?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Paginación a Demanda (Demand Paging) es la magia de los Sistemas Operativos modernos.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque carga segmentada lineal de variables directas no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque memoria de paginaciã³n estricta asignada en rom no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque re-localizaciã³n dinã¡mica secuencial absoluta no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 147: El conmutador físico principal (Switch) de un centro comerci

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El conmutador físico principal (Switch) de un centro comercial administra las cámaras de seguridad y paralelamente las computadoras públicas de atención al cliente. El administrador ordena la creación de Redes Virtuales (VLANs) para que se mantengan incomunicadas lógicamente, pero ambos tráficos deben fluir en el edificio a través del mismo único y grueso cable principal (Troncal / Trunk Link) sin revolver ni contaminar a qué grupo de red pertenecen los datos originados.

---

### ❓ Pregunta

¿Qué estándar o protocolo de etiquetado a nivel Capa 2 manipula y estampa los paquetes introduciendo la firma de red al atravesar esta manguera troncal de hardware y switches?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El IEEE 802.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque protocolo ipv6 ipsec dinã¡mico local no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque multiplexaciã³n de divisiã³n csma/cd no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque spanning tree protocol bã¡sico local no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 148: Al ejecutar un SELECT SQL complicado, un proceso interno e in

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Al ejecutar un SELECT SQL complicado, un proceso interno e invisible del servidor lee tus instrucciones relacionales e intenta inventar múltiples rutas y maneras matemáticas de buscar la información, calculando y evaluando cuál es la más rápida o la que gastará menos memoria RAM, para finalmente ejecutar la ganadora.

---

### ❓ Pregunta

¿Qué componente o sistema central algorítmico interno reside en el corazón de todas las bases de datos funcionales contemporáneas realizando esta ingeniería previa a favor del rendimiento relacional?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Optimizador de Consultas de un Motor (Query Optimizer) asume que la instrucción SQL pudo haber sido estructurada ineficientemente por el usuario.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción B**: Es incorrecta porque el demonio compilador sintã¡ctico secuencial de variables de entorno no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque el motor de almacenamiento innodb local no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque el ãrbol b bã¡sico paginado y controlado en memoria heap indexada no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

A

## CASO 149: Un ingeniero requiere programar un software detector de plagi

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un ingeniero requiere programar un software detector de plagio textual como los de la Universidad, capaz de buscar y analizar cadenas de frases específicas dentro de enciclopedias gigantescas de libros sin ralentizarse. Descarta la búsqueda ordinaria secuencial, y aplica un algoritmo inteligente avanzado y comprobado que lee y compara el texto creando una pequeña tabla matriz de coincidencias parciales, permitiéndole dar saltos largos y evitar releer segmentos para alcanzar una eficiencia inponente.

---

### ❓ Pregunta

¿Qué complejo e infalible algoritmo matemático computacional implementó en su búsqueda paralela?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Algoritmo avanzado KMP (Knuth-Morris-Pratt) es el remedio frente a algoritmos de comparación clásicos ineficientes y lineales de "Fuerza Bruta" en textos (que retroceden desde cero ante cada error).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque el algoritmo backtracking exhaustivo universal no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque algoritmo de flujo matemã¡tico de ford-fulkerson en grafos y rutas no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque la bãºsqueda binaria de matrices dobles complejas no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 150: Un portal gubernamental será lanzado el próximo mes

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un portal gubernamental será lanzado el próximo mes. El equipo de ingenieros en pruebas (QA) simula con software especializado inyectar el sistema web con 2,000 conexiones simuladas simultáneas y regulares para verificar si el servidor y la arquitectura web pueden tolerar el nivel básico promedio diario de usuarios con el que esperan trabajar cómodamente los primeros 3 años funcionales tras publicarlo.

---

### ❓ Pregunta

¿Qué tipo de ciclo y pruebas de calidad de rendimiento sistemático (Performance Testing) acaba de estructurar y realizar el equipo operativo?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En los entornos arquitectónicos de Software Quality Assurance y Testing, se debe separar el análisis en subcategorías.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque pruebas de escalabilidad local bã¡sicas (scalability local testing) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque pruebas de tensiã³n estructural y desbordamiento (spike testing avanzado) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque pruebas formidables de estrã©s total (stress testing) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 151: En la programación modular de arquitecturas de componentes l

**Dificultad:** Media
**Tiempo recomendado:** 30 segundos
**Tipo de trampa:** conceptual

---

### 📖 Contexto

En la programación modular de arquitecturas de componentes limpios y mantenibles, el Líder de Proyecto inspecciona el código y decreta: "Las funciones de nuestras Clases Orientadas a Objetos deben siempre dedicarse estrictamente a una sola meta conjunta; pero también deben mantenerse estructuralmente separadas de otras clases para que, si un departamento actualiza su clase central general, a ningún otro desarrollador se le rompa su trabajo".

---

### ❓ Pregunta

¿Con qué dupla de términos inquebrantables de ingeniería y estructura del diseño modular arquitectónico se está guiando el requerimiento del director del proyecto?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** "Alta Cohesión y Bajo Acoplamiento" es el lema mundial de los ingenieros arquitectónicos del software global.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque alto acoplamiento sistã©mico y baja cohesiã³n operativa no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque alta polimorfizaciã³n modular local y abstracciã³n total funcional abstracta no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque inversiã³n dinã¡mica global y herencia profunda extensa simple no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 152: Se está diseñando el marcapasos médico computarizado inter

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Se está diseñando el marcapasos médico computarizado interno del corazón y la red computacional del freno (ABS) de la planta automotriz. Los arquitectos descartan instalarles el sistema operativo Windows o Linux común, indicando categóricamente que "si el sistema operativo llega a distraerse priorizando procesos internos sin valor, o si su kernel sufre un retraso en contestar e interrumpir el procesador, una vida estaría en riesgo".

---

### ❓ Pregunta

Bajo requerimientos de velocidad determinista inalterable, ¿qué arquitectura base e instalación de Sistema Operativo estructural global de la industria y bajo nivel deben utilizar para esta computadora?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Un RTOS "Duro" (Real Time Operating System o SOTR) garantiza de forma extrema que las instrucciones enviadas a sus componentes vitales van a procesarse y dar la contestación en un plazo estricto de tiempo prefijado y determinístico, en vez de un "plazo aproximado y variable sin urgencia como hace Windows al mover y cargar tu archivo pesado".
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque un sistema operativo distribuido basado en mensajes y microservicios centralizados no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque un sistema operativo multiusuario multitarea segmentado en paginaciã³n local (timesharing os global) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque un sistema operativo simple y monotarea basado en lotes estructurales secuenciales dinã¡micos bã¡sicos de hardware no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 153: El administrador nota que cuando cien computadoras del depart

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El administrador nota que cuando cien computadoras del departamento logran acceder al mismo servidor externo de puerto web seguro cifrado (Puerto TCP 443 HTTPS corporativo seguro en la Nube), las cien computadoras reciben la respuesta simultánea correctamente cruzada sin enredar las ventanas del navegador con lo que otro usuario local pidió al mismo servidor global.

---

### ❓ Pregunta

Bajo las reglas de los modelos enrutados del sistema, ¿qué característica esencial de la Capa de Transporte (TCP) es implementada por cada máquina cliente local para identificar de retorno individualmente a su pestaña específica a pesar de dirigirse todas al mismo servidor y puerto universal mundial único 443 HTTP central del destino final?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El servidor externo seguro corporativo espera la petición sentado pacíficamente en su puerto "443 Estándar Universal (Destination Port)".
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque el encapsulamiento virtual cã­clico simple nat y el modelo ip dinã¡mico no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque el control paralelo fã­sico matemã¡tico del sumatorio checksum fijo local dinã¡mico paralelo cã­clico global no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque la direcciã³n aleatoria mac del puerto general en capa dinã¡mica central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 154: El volumen del juego de un celular colapsa tu servidor centra

**Dificultad:** Media
**Tiempo recomendado:** 40 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

El volumen del juego de un celular colapsa tu servidor central relacional MySQL. Necesitan más poder para aguantar las millones de partidas. El jefe ordena agregarle RAM, procesador, y cambiar el disco duro por un inmenso almacenamiento de estado sólido NVMe último modelo. Con este incremento único a la máquina central actual local en la torre de seguridad, creen que aguantarán 3 años antes de requerir un servidor superior.

---

### ❓ Pregunta

¿Qué método e iniciativa técnica estructural directa de arquitectura e ingeniería del Cloud Computing para crecimiento está ejerciendo tu jefe con sus acciones corporativas internas ?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Escalabilidad Vertical (Scale-Up) de la nube moderna se fundamenta estrictamente en la antigua usanza directa: tomar al servidor central y hacerlo grande y gigante hasta exprimir el tope de la placa base incrementando RAM y CPU.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque escalabilidad distribuida dinã¡mica no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque escalabilidad horizontal global (scale-out o nodos independientes masivos) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque crecimiento por microservicios vertical dinã¡mico local pã­ldora no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 155: El ingeniero implementa una Tabla Hash para asignar correos

**Dificultad:** Media
**Tiempo recomendado:** 30 segundos
**Tipo de trampa:** conceptual

---

### 📖 Contexto

El ingeniero implementa una Tabla Hash para asignar correos. Como el espacio reservado es limitado, ocurre que la función matemática designa que los datos de los usuarios "Ana" y "Carlos" irán destinados al mismo índice de casillero (Bucket). El programador salva esto permitiendo que el objeto final no se re-escriba mutuamente por colisión; en su lugar enlaza la variable mediante punteros formando en esa casilla interna una pequeña lista entrelazada.

---

### ❓ Pregunta

¿Cómo se denomina formalmente a esta brillante e infalible solución de arquitectura de colecciones implementada para sortear la anomalía estructural de diccionario algorítmico global?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Encadenamiento (Chaining de diccionarios) en la algoritmia, absorbe tranquilamente la inevitable "Colisión" matemática asignando la responsabilidad del orden matemático estricto a una sub-lista secundaria (Linked List estricta).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque resoluciã³n dinã¡mica aleatoria lineal central fija no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque resoluciã³n abierta y exploraciã³n por sondeo lineal de capacidad limitada no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque hashing y re-hash fractal cã­clico matemã¡tico dinã¡mico absoluto central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 156: El equipo interviene la base de datos MySQL el fin de semana

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El equipo interviene la base de datos MySQL el fin de semana. No hay ningún ticket, error, fallo o queja levantada por los usuarios, pero ellos purgan la base, actualizan el motor y corren reconstrucción de índices fragmentados para impedir que el sistema falle por ralentización en los próximos cuatro meses y asegurar el rendimiento.

---

### ❓ Pregunta

¿Qué categoría del estándar y modelo clásico universal de mantenimiento de Ingeniería y ciclo de software están efectuando anticipadamente?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Mantenimiento Preventivo ocurre proactivamente antes de un fallo.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque mantenimiento evolutivo local dinã¡mico paralelo general directo central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque mantenimiento adaptativo cã­clico simple lineal abstracto no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque mantenimiento correctivo directo fijo simple paralelo central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 157: Un científico codifica analíticamente un cálculo en un scr

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un científico codifica analíticamente un cálculo en un script. Empieza declarando la variable en su código fuente como: `edad = 5;`. El compilador del lenguaje no arroja ningún mensaje y arranca; pero treinta líneas más abajo en pleno tiempo de procesamiento del programa, le asigna y modifica el valor escribiendo `edad = "Joven"`. El sistema procesa la orden, destruye el formato numérico interno y ajusta la variable cambiándola dinámicamente como objeto de texto de manera natural en memoria.

---

### ❓ Pregunta

¿Bajo qué categoría de paradigma de lenguaje arquitectónico estructurado en tipado operó el sistema sin abortar la ejecución?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En Lenguajes formalmente de tipado estricto "" (como Java, C#), la declaración obliga a firmar con sangre el molde: `int edad = 5;` es una muralla matemática; si luego le metes un `edad = "Joven"`, explota en tiempo de compilación y no corre.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque lenguaje estrictamente tipado y compilado (statically typed language) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque lenguaje universal paradã³jico multi cã­clico lineal fijo abierto no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque lenguaje interpretado por bloques fijos y centrales paralelos simples no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 158: Un servicio clave que gestiona las peticiones del sistema de

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

Un servicio clave que gestiona las peticiones del sistema de impresión Linux central no tiene ninguna ventana ni interfaz gráfica. Corre por meses enteros invisible bajo el agua y memoria RAM en segundo plano, esperando pacíficamente a que un cliente envíe un documento para ser procesado en la cola y puramente central de red dinámica.

---

### ❓ Pregunta

¿Qué categoría computacional estructural y término central Unix/Linux clásico define globalmente a este programa que opera ininterrumpidamente en fondo?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Los "Daemon" (Demonios) son las piezas vitales en arquitectura Linux.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque un macro-script automã¡tico no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque una mã¡quina virtual no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque un servicio windows clã¡sico abstracto no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 159: El proveedor ISP usa un canal de fibra óptica única para la

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El proveedor ISP usa un canal de fibra óptica única para la red metropolitana cruzada. Es físicamente inviable lanzar y colocar un hilo separado para cada cliente. Los arquitectos toman los canales independientes de diez edificios diferentes y los mezclan y envían simultáneamente empujándolos dentro del mismo hilo óptico al mismo tiempo separando las transmisiones con distintos colores de luz y frecuencias sin que interfieran entre ellas.

---

### ❓ Pregunta

¿Qué concepto pilar en la telecomunicación y teoría general de Capa 1 de redes computacionales permite interconectar y paralelizar múltiples canales de transmisión sobre y a lo largo de un mismo conducto físico de hardware?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Multiplexación (Multiplexing) aglutina docenas de llamadas o flujos de datos independientes, codificándolos y enviándolos asíncronamente mezclados sobre el mismo canal compartido físico (cable o espectro de radio), para luego volverlos a desarmar o demultiplexar en el router de llegada sin que las conversaciones y tramas se crucen o interfieran lógicamente, multiplicando la capacidad del hardware.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque la paginaciã³n y filtrado cã­clico de antenas y canales dinã¡micos no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque el subneteo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque la modulaciã³n unicast no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 160: El administrador purista del sistema de ventas SQL no confía

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El administrador purista del sistema de ventas SQL no confía pasivamente en los programadores front-end web para cuidar que el negocio no asigne precios de cero pesos o precios matemáticamente negativos a una factura desde la interfaz visual. Para asegurarse a toda costa de que ningún registro falso corrompa las reglas, incrusta a nivel de la estructura de la base central una barrera de código SQL relacional que rechazará cualquier "INSERT" donde la columna del "Monto" sea menor numéricamente a un peso.

---

### ❓ Pregunta

¿Qué mecanismo clásico forzoso de modelado de integridad y arquitectura relacional SQL ha forjado directamente en la capa de la base de datos de manera definitiva?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Las Restricciones "CHECK" (Restricción de Dominio) te blindan a nivel de núcleo de base de datos.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque trigger ddl no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque secuencia de generaciã³n cã­clica de disparo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque llave forã¡nea y integradora mutante cã­clica no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

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

## CASO 161: El administrador de redes requiere elegir un protocolo de enr

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El administrador de redes requiere elegir un protocolo de enrutamiento interno. Desea que el algoritmo no solo cuente la cantidad de enrutadores, sino que considere estrictamente el ancho de banda del enlace y la velocidad física del cable para formar la ruta óptima basada en el costo.

---

### ❓ Pregunta

¿Qué protocolo dinámico de estado de enlace (Link-State) utiliza esta métrica en la industria?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El protocolo OSPF es el estándar de redes corporativas.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque rip (routing information protocol) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque bgp (border gateway protocol) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque eigrp (enhanced interior gateway routing protocol) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 162: En la arquitectura de un motor de bases de datos, los índice

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

En la arquitectura de un motor de bases de datos, los índices se construyen frecuentemente bajo la estructura de un Árbol B+. El DBA nota que en consultas de rangos (BETWEEN), el sistema no baja y sube repetidamente por las ramas, sino que localiza el primer valor y navega fluidamente en línea recta por el fondo leyendo filas velozmente.

---

### ❓ Pregunta

¿Qué diferencia estructural clave del Árbol B+ sobre el Árbol B clásico permite este rendimiento horizontal?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En el Árbol B+, todos los datos residen exclusivamente en las hojas finales en el piso inferior del árbol, y dichas hojas se conectan entre sí con punteros formando un carril horizontal.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque los nodos raã­z almacenan todas las ramas cruzadas. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque el ãrbol b+ carece de raã­ces superiores. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque carga en memoria ram todos los datos en estructuras heap. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 163: Un programador necesita actualizar el salario del 10% de los

**Dificultad:** Media
**Tiempo recomendado:** 40 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

Un programador necesita actualizar el salario del 10% de los empleados en una tabla masiva. En lugar de ejecutar una sola instrucción UPDATE, implementa un Cursor en SQL, recorriendo y procesando la tabla manualmente "fila por fila". El servidor sufre una caída de rendimiento.

---

### ❓ Pregunta

¿Cuál es el gran problema estructural con el uso de Cursores en motores relacionales pesados?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** SQL es un lenguaje declarativo que opera nativamente sobre Conjuntos (Set-Based).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque generan bloqueos de tabla destruyendo el acid. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque rompen el motor al no estar paginados. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque generan vistas materializadas ocultas. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 164: El equipo diseñó la arquitectura front-end donde el Código

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El equipo diseñó la arquitectura front-end donde el Código Visual (Interfaz) envía directamente sus peticiones al Código Controlador. Este Controlador contacta al Modelo para obtener datos. Posteriormente, el propio Controlador retorna para indicarle imperativamente a la Interfaz Visual qué gráficos debe redibujar, sin que el Modelo participe.

---

### ❓ Pregunta

¿Bajo qué patrón de y capas arquitectónicas de front-end están laborando?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El patrón MVP se diferencia del clásico MVC en que la Vista y el Modelo están rígidamente incomunicados.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque arquitectura restful dinã¡mica central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque patrã³n mvc clã¡sico (model-view-controller) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque arquitectura soa (service oriented architecture) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 165: Un ingeniero desarrolla en C#

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

Un ingeniero desarrolla en C#. A una variable se le ingresa el texto literal `"100"` desde un formulario, pero al intentar ejecutar en el código un `if (variable == 100)` para cálculos, el compilador arroja un error estructural marcando incompatibilidad.

---

### ❓ Pregunta

¿Cómo clasifica la ingeniería de lenguajes al modelo estructural C# que impide este cruce en el uso de memoria comparativa?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En los lenguajes de Tipado Fuerte (como C# o Java), el compilador es inflexible.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque lenguaje dinã¡mico orientado a objetos no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque lenguaje adaptativo de compilaciã³n temprana no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque sistema de intã©rprete lineal no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 166: En un sistema hospitalario, existe una impresora global centr

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

En un sistema hospitalario, existe una impresora global centralizada. Si cien computadoras mandan documentos al mismo tiempo, el sistema guarda los trabajos completos en el disco de manera inmediata simulando una impresión instantánea para liberar las pantallas, para luego pasarlos uno a uno a la impresora electromecánica en el orden correcto.

---

### ❓ Pregunta

¿Cómo se denomina históricamente a esta técnica de simulación con memoria intermedia en disco para desahogar la concurrencia rápida?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** SPOOL (Operaciones en línea de periféricos simultáneos) intercepta y guarda el documento digital velozmente en una zona del disco (Cola de Impresión), devolviendo de inmediato el control y poder del cursor a la computadora, y dejando que un proceso daemon secundario lidie con el hardware real.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque paginaciã³n lineal en clãºster (paging spool) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque interbloqueo de procesador (deadlock spooling) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque multiplexaciã³n en archivos fat cã­clicos no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 167: El gerente corporativo busca deshacerse de docenas de enrutad

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

El gerente corporativo busca deshacerse de docenas de enrutadores de marcas diferentes que requieren programarse en la consola uno por uno. Implementa un esquema donde todos los enrutadores físicos actúan como interruptores de cables, recibiendo estrictamente sus rutas y políticas de red a larga distancia desde una aplicación de inteligencia y cerebro de software en un panel controlador maestro.

---

### ❓ Pregunta

Bajo este concepto arquitectónico en donde el plano de control se separa por completo del hardware físico local, ¿qué tecnología de redes están inyectando en la empresa?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Las Redes Definidas por Software (SDN) revolucionaron el mundo corporativo separando al "Plano de Control" (El Cerebro) del "Plano de Datos" (Los cables y Switches locales físicos).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque redes privadas virtuales vpn dinã¡micas no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque vlans segmentadas hã­bridas fã­sicamente no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque bgp ospf dinã¡mico autã³nomo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 168: Un arquitecto de plataformas bancarias debe asegurar la coher

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un arquitecto de plataformas bancarias debe asegurar la coherencia completa mundial al actualizar fondos. Exige que un servidor principal en México contacte a un servidor secundario en España antes del cargo, ambos bloqueen y confirmen las disponibilidades, y únicamente si ambas partes asienten su voto por red confirmando estar listos, procedan al unísono a ejecutar de verdad la alteración de los datos.

---

### ❓ Pregunta

¿Qué protocolo clásico computacional y mecanismo distribuido para confirmación en clúster mundial está instaurando para garantizar transaccionalidad de bases múltiples?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Commit en Dos Fases (2PC) es la garantía extrema en bases de datos distribuidas.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque escalabilidad fragmentaria vertical no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque algoritmo de aprobaciã³n token-ring no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque consenso mãºltiple no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 169: En la optimización de código, un desarrollador detecta que

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

En la optimización de código, un desarrollador detecta que su software cuenta el número de elementos de un arreglo de 1 millón de clientes iterando linealmente registro por registro. Decide refactorizar usando la función `.length` de Java. El compilador entrega la longitud total requerida matemáticamente saltándose la iteración al leer instantáneamente un metadato preestablecido internamente.

---

### ❓ Pregunta

Técnicamente usando el formalismo y Notación de Ciencias de la Computación, ¿a qué nivel de complejidad superior y matemática se elevó esta simple consulta?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La notación O(1) ("O ") significa que la acción del procesador tomará matemáticamente siempre exactamente el mismo tiempo de procesamiento inamovible e inmediato, sin importar si la lista tiene un elemento o un millón.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque complejidad optimizada lineal: o(n) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque complejidad logarã­tmica: o(log n) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque complejidad cuadrã¡tica: o(n^2) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 170: Durante un proyecto ágil, siete desarrolladores asisten por

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

Durante un proyecto ágil, siete desarrolladores asisten por la mañana a una reunión de quince minutos parados en círculo. Al iniciar el evento, un ingeniero despliega un archivo Excel y empieza a dar quejas, explicaciones, y reportes técnicos visuales de un problema profundo que requiere resolver.

---

### ❓ Pregunta

Bajo la filosofía y el marco inquebrantable internacional de Scrum, ¿qué pilar clave procedimental rompió el programador durante su junta matutina?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Daily Stand-up o Daily Scrum es para sincronización de equipo y alerta de estatus.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque rompiã³ el sprint backlog de refinamiento. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque alterã³ el cã³digo de integraciã³n ãgil. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque violã³ pasivamente el "sprint review" general de cierre. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 171: Un Arquitecto de Software programa y diseña el Sistema de Im

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un Arquitecto de Software programa y diseña el Sistema de Impresoras. Crea la clase `Impresora` con el método operativo `imprimirDatos()`. Posteriormente, crea la clase `Escaner` con otro método diferente pero llamado con el mismo título exacto `imprimirDatos()`. Luego el becario programa la clase `ImpresoraMultifuncional` intentando hacerla heredar simultáneamente de ambas clases madre, causando que el compilador enloquezca.

---

### ❓ Pregunta

¿Cómo se conoce a la anomalía y conflicto arquitectónico general matemático que causó el bloqueo mundial nativo que prohibió la Herencia Múltiple estricta de clases en Java y en C# moderno?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Problema del Diamante es la gran tragedia teórica que nace de la Herencia Múltiple directa.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque el problema del doble bucle no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque el colapso de encapsulamiento de red no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque la anomalã­a de reubicaciã³n de metadatos no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 172: En un sistema central computacional, la memoria RAM está prí

**Dificultad:** Difícil
**Tiempo recomendado:** 60 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

En un sistema central computacional, la memoria RAM está prácticamente ahogada de carga. Para mantener abiertos y vivos cuarenta programas, el Sistema Operativo usa todo el tiempo real computacional dedicándose únicamente a mover las "Páginas de memoria virtual" desde la RAM hacia el Disco Duro (archivo Swap), y viceversa retornando otras, colapsando y deteniendo el avance real del procesamiento útil.

---

### ❓ Pregunta

¿Qué nombre técnico recibe esta crisis de sobre-paginación extrema de saturación y círculo trágico inútil de procesamiento?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Thrashing (Hiperpaginación) sucede inevitablemente en entornos informáticos asfixiados cuando la CPU está cien por ciento ocupada, pero no hace nada de trabajo útil, porque el Kernel del Sistema Operativo invierte todos sus ciclos valiosos en "salvar y mover" datos temporalmente de la memoria física agotada al disco mecánico (Swap).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque paginaciã³n secuencial cã­clica no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque condiciã³n paralela de carrera no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque inaniciã³n y segmentaciã³n fija no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 173: Dentro del campus universitario con tres mil computadoras, el

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Dentro del campus universitario con tres mil computadoras, el director desea conectar inteligentemente el tráfico de routers internos para que negocien tablas cruzadas y decidan velozmente enrutar el tráfico por caminos seguros internamente. Para esto instaura protocolos para organizar la red de forma interior, sin notificar ni enrutar tablas hacia los proveedores de internet mundiales externos.

---

### ❓ Pregunta

Bajo la normativa de división purista de enrutamiento TCP/IP, ¿qué categoría general y denominación estructural técnica reciben estos protocolos de comunicación topológica intra-red?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Las Redes y Ciencias de las Telecomunicaciones se segmentan en dos dominios centrales.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque protocolos de enrutamiento mac fijo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque protocolos bgp excluyentes mundiales no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque exterior gateway protocols (egp) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 174: Al crear la tabla de asignación de "Guardias Especiales", el

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Al crear la tabla de asignación de "Guardias Especiales", el desarrollador usa la llave principal compuesta: `ID_Empleado` y `Fecha_Turno`. El diseño obedece las reglas de la 3FN. Aun así, la tabla muestra redundancia cruzada anómala porque existe una superposición entre "Rol_Hospital" y "Area_Trabajo". Se exige aplicar una etapa extra avanzada especial para sanar estas llaves superpuestas en la tabla.

---

### ❓ Pregunta

¿Cuál forma rigurosa de normalización superior en matemáticas relacionales es la que rige formalmente la resolución central y erradicación de superposición cruzada entre múltiples "Llaves Candidatas" de control?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Forma Normal de Boyce-Codd (BCNF) es una versión más poderosa, paranoica y estricta de la tradicional Tercera Forma Normal.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque la primera forma normal clã¡sica multivaluada no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque la cuarta forma normal cruzada no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque la quinta forma normal simple no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 175: En la programación de optimización de rutas, un ingeniero u

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

En la programación de optimización de rutas, un ingeniero utiliza un algoritmo matemático para detectar rutas de costo en grafos cruzados. Necesita una alternativa robusta para evitar que las variables con costo o de peso de distancia "negativa" rompan el cálculo de manera perjudicial como sucede nativamente si usa tradicionalmente el algoritmo de Dijkstra.

---

### ❓ Pregunta

Bajo este escenario de peso numérico matemático destructivo de métricas negativas de aristas, ¿qué algoritmo es la solución inquebrantable de grafos de ruteo para encontrar distancias mínimas sin fallar?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El algoritmo clásico del holandés Dijkstra está ante las distancias con peso negativo, provocando y generando bucles o mal-información y subestimando costos de manera letal.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque algoritmo de flujo dinã¡mico matemã¡tico dfs no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque el algoritmo a* estrella no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque el algoritmo dinã¡mico de kruskal no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 176: El equipo comercial decide migrar de la metodología estructu

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El equipo comercial decide migrar de la metodología estructural de Cascada (Waterfall), donde el proyecto tardaba lógicamente doce meses en analizarse, probarse e implementarse ciegamente hasta la entrega final, hacia un marco de Desarrollo Ágil (Scrum).

---

### ❓ Pregunta

En términos empresariales, de control y de ingeniería moderna, ¿qué beneficio absoluto e insuperable aporta al cliente pasarse a una metodología "Ágil" por encima del dinosaurio secuencial clásico "Waterfall"?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Cascada es infalible si construyes un edificio donde cambiar planos al mes 9 significa un suicidio financiero.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque que ãgil carece ciegamente de arquitectura y documentaciã³n tã©cnica, abaratando el software. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque garantiza el ã©xito estructural de cã³digo y sin bugs ni colisiones. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque el ahorro total de programadores al no necesitar servidores paralelos de testing. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 177: El lenguaje Java no tolera la "Múltiple Herencia de Clases",

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El lenguaje Java no tolera la "Múltiple Herencia de Clases", imposibilitando crear estructuras híbridas derivadas de dos árboles diferentes. En lugar de esto, si la clase debe amoldarse implícitamente a un conjunto de promesas de comportamiento de distintos departamentos, implementa cascarones de acción sin métodos construidos internos, firmando contratos arquitectónicos.

---

### ❓ Pregunta

Bajo la POO y programación de diseño limpio, ¿cómo se les llama universalmente a estos "contratos de comportamiento" que exigen al programador implementar ciertos métodos pero carecen de código funcional interior?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Las *Interfaces* no tienen código ni vida propia abstracta; son una especie de tratado obligatorio.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque clases abstractas de alto acoplamiento no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque instancias dinã¡micas generales no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque mã©todos sellados de clãºster no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 178: Una unidad USB ha sido formateada con Clústeres o Sectores e

**Dificultad:** Fácil
**Tiempo recomendado:** 25 segundos
**Tipo de trampa:** distracción

---

### 📖 Contexto

Una unidad USB ha sido formateada con Clústeres o Sectores en el disco duro del tamaño colosal de 64 Kilobytes. Un desarrollador almacena un texto diminuto de solo 2 Kilobytes en un archivo. El Sistema Operativo lo asienta en un sector de 64KB, pero sella y prohíbe formalmente que se pueda encadenar o guardar cualquier otra cosa distinta en el espacio físico libre de ese mismo sector que sobró.

---

### ❓ Pregunta

¿Qué anomalía matemática de fragmentación y desperdicio espacial de arquitectura computacional está ocurriendo masivamente bajo esta ciencia de discos?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La Fragmentación Interna de Sectores es una calamidad en unidades de almacenamiento.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque fragmentaciã³n externa central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque desperdicio abstracto de pila secuencial no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque fragmentaciã³n externa no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 179: Un empleado del área legal necesita trabajar remotamente usa

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un empleado del área legal necesita trabajar remotamente usando internet en una cafetería insegura conectándose lógicamente a la red de su corporativo. Su objetivo es operar como si estuviera sentado físicamente dentro de las oficinas y acceder a la intranet interna de forma cifrada, sin que los hackers logren interceptar las contraseñas que teclea.

---

### ❓ Pregunta

¿Qué tecnología de seguridad criptográfica de red y encapsulamiento deben proporcionarle para blindar sus comunicaciones?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Las Redes VPN corporativas (Virtual Private Networks) son el cimiento de seguridad de túnel seguro "extremo a extremo".
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque traducciã³n de direcciones (nat) cã­clica no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque la apertura asignada de puertos tcp/ip no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque direcciã³n aleatoria mac en capa 2 no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 180: El servidor central relacional MySQL de ventas colapsa los fi

**Dificultad:** Media
**Tiempo recomendado:** 40 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

El servidor central relacional MySQL de ventas colapsa los fines de semana. En lugar de aumentar su RAM ciegamente, los arquitectos separan físicamente la base: designan una base paralela de hardware para realizar las rápidas inserciones de los clientes simultáneas (ESCRITURA / Writes) y crean otra base espejo separada dedicada y afinada para entregar los pesados reportes estadísticos del gerente (LECTURA / Reads).

---

### ❓ Pregunta

¿Qué Arquitectura y Estrategia Central de segregación de desarrollo se aplicó?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** CQRS (Segregación de Responsabilidad de Comandos y Consultas) separa el cerebro lógicamente de un motor de bases de datos central.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque fragmentaciã³n horizontal (sharding) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque arquitectura distribuida de microservicios base no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque segregaciã³n de clãºster paralelo multi-master no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

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

## CASO 181: Un hospital debe diseñar su arquitectura de red considerando

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un hospital debe diseñar su arquitectura de red considerando que doctores utilizan tabletas móviles conectadas al WiFi de forma general. El equipo de seguridad tecnológica descarta las tradicionales VLAN y dicta una regla estricta: "Aunque el dispositivo sea corporativo y esté conectado a nuestro WiFi interno de gerencia, no asumiremos jamás que es seguro ni de confianza por omisión. Cada intento de acceso a los sistemas deberá revalidarse con factor doble y escaneo de integridad en el software, salto por salto".

---

### ❓ Pregunta

¿Qué modelo conceptual riguroso y actual de arquitectura en Ciberseguridad ha ordenado y priorizado el equipo en todo el espectro físico?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Zero Trust asume una filosofía absoluta: "Nunca confíes, siempre verifica".
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque el protocolo perimetral firewall clã¡sico (vpn stateful) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque el filtro ips de detecciã³n en base fija no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque implementaciã³n de zona desmilitarizada dinã¡mica (dmz completa) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 182: Un ingeniero compite analizando algoritmos de búsqueda exhau

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Un ingeniero compite analizando algoritmos de búsqueda exhaustiva. Mientras que la Notación "Big O" (O grande) le indica a la directiva qué tan pésimo será el rendimiento algorítmico frente a un volumen inmenso en el "peor caso posible" matemático, a él también le solicitan calcular el comportamiento opuesto para entender lo que sucederá en el "mejor caso ideal de tiempo" para poder catalogarlo técnicamente.

---

### ❓ Pregunta

¿Qué notación y científica de análisis de algoritmos dictamina el "Límite Inferior o Mejor Caso Posible" de eficiencia matemática?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En ciencias de la computación y análisis asintótico general, la *Notación O Grande (Big O)* describe el límite superior o el peor de los desastres en el procesamiento (Si buscas a una persona en una guía telefónica, el peor caso es O(n) si es la última).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción B**: Es incorrecta porque la notaciã³n delta (î ) no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque la notaciã³n theta (îü) estricta no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque la notaciã³n gamma (î ) abstracta no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

A

## CASO 183: Una empresa analiza perfiles y detecta redes inmensas de "Ami

**Dificultad:** Media
**Tiempo recomendado:** 40 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

Una empresa analiza perfiles y detecta redes inmensas de "Amigos de los amigos que comparten intereses". Procesar esto en la base de datos MySQL tradicional usando `JOIN` paralelos entre cuatro tablas resulta insosteniblemente lento, generando tablas recursivas gigantes. Deciden migrar a una arquitectura donde las entidades (Personas) y las relaciones con dirección (A es amigo de B) son tratadas como elementos primarios indexables de la base de datos de manera autónoma.

---

### ❓ Pregunta

¿A qué modelo específico de base de la nube moderna no relacional se orienta esta solución abstracta?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Las Bases de Datos de Grafos (como Neo4j) están matemáticamente estructuradas usando vértices (Nodos de información) y aristas (Relaciones vinculantes) para navegar instantáneamente por redes inmensas de datos sociales, así como operar en detección veloz de fraudes financieros abstractos.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque base de datos nosql tipo documental en json clã¡sica no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque base de datos columnar dinã¡mica no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque modelo vectorial de inteligencia fija no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 184: Los ingenieros del equipo QA de un corporativo ejecutan 1,000

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Los ingenieros del equipo QA de un corporativo ejecutan 1,000 pruebas unitarias en código reportando "100% de Cobertura de Código". Para estar seguros de que los programadores no engañaron la prueba (escribiendo asserts que siempre dan éxito sin revisar de verdad la matemática interna del bloque), instalan una herramienta especializada. Esta altera automáticamente y rompe adrede condicionales del código fuente (ej. cambiando temporalmente un signo `<` por un `>`), vigilando si la suite de pruebas falla y detecta la anomalía introducida intencionalmente.

---

### ❓ Pregunta

¿Qué método infalible de pruebas avanzadas están empleando para auditar sus casos de pruebas ?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Testing de Mutación (Mutation Testing) es el auditor absoluto de las Pruebas Unitarias.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque prueba de caja gris no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque pruebas extremas cã­clicas modulares de integraciã³n no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque fuzzing testing dinã¡mico no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 185: Un juego de estrategia en Java cuenta con el objeto central "

**Dificultad:** Media
**Tiempo recomendado:** 30 segundos
**Tipo de trampa:** conceptual

---

### 📖 Contexto

Un juego de estrategia en Java cuenta con el objeto central "Soldado". Este objeto debe calcular matemáticamente el daño de sus diferentes ataques según lo que porte. En lugar de codificar todos los cálculos con un enorme `switch/case` inmodificable dentro de la clase Soldado general para resolver "Si dispara Escopeta", "Si usa Espada", el desarrollador extrae esos algoritmos de daño de armas en clases matemáticas separadas y los inyecta dinámicamente como diferentes comportamientos abstractos (Instancias intercambiables de daño).

---

### ❓ Pregunta

¿Qué patrón dinámico de diseño de la POO implementó para encapsular y delegar matemáticamente a estas familias de algoritmos y cálculos de armas de forma modular?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Patrón Estrategia (Strategy Pattern) de comportamiento arquitectónico permite declarar y agrupar familias de algoritmos independientes matemáticos encapsulándolos separadamente de la clase principal original, haciendo fácil su intercambio al vuelo en plena ejecución del programa.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque patrã³n observador no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque patrã³n adaptador de componentes abstractos no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque patrã³n constructor cã­clico no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 186: En un sistema central multi-hilos, ocurre un congelamiento de

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En un sistema central multi-hilos, ocurre un congelamiento del sistema. Dos transacciones chocan eternamente. Tras analizar los registros de software concurrente, descubres la materialización forzosa de las cuatro reglas que deben cumplirse forzosamente en simultáneo en un equipo para que el estancamiento de hilos concurrente y cruce catastrófico suceda inquebrantablemente (Condición de Exclusión mutua, Espera y Retención matemática, Espera circular y No apropiación o interrupción del recurso).

---

### ❓ Pregunta

¿Cómo se denominan estas cuatro exigencias académicas de ciencias y sistemas operativos que marcan la ocurrencia del Bloqueo Mutuo general (Deadlock)?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Las Condiciones Clásicas Formidables de Coffman establecen en ingeniería que, para que un bloqueo mutuo central (Deadlock de Hilos Concurrentes) se materialice trágicamente en procesador y RAM, deben presentarse de manera estricta y conjunta las 4 en la máquina: 1) Exclusión Mutua estricta, 2) Retención de recurso base y Espera, 3) Ausencia total de Expulsión o interrupción del proceso por el Kernel, y 4) Circuito cerrado y cíclico llamado Espera Circular matemática.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque condiciones mutantes fijas de turing computacionales no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque ecuaciones dinã¡micas de interbloqueo de von neumann no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque reglas arquitectã³nicas de concurrencia de dijkstra y moore no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 187: Cuando un celular y tableta se conecta a la nueva red de WiFi

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

Cuando un celular y tableta se conecta a la nueva red de WiFi de la cafetería, envía un grito y ruego de red abierta (Broadcast) para que le arrienden una identidad. El servicio de red servidor le devuelve un contrato de renta, le ofrece formalmente una dirección IPv4 local y, finalmente, termina asignándole de manera oficial y central el enrutamiento de puerta de enlace.

---

### ❓ Pregunta

Bajo la nomenclatura y arquitectura teórica de redes clásicas, ¿qué acrónimo mundial inamovible de cuatro letras modela y resume el ciclo de viaje de asignación de un servidor DHCP para IPs dinámicas locales?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El ciclo universal de la asignación por servidores DHCP se modela mundialmente a través del proceso paralelo y de la palabra acrónimo "DORA".
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque protocolo de identidad de dhcp handshake no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque secuencia init y ack central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque el acuerdo tcp de triple enlace 3-way handshake dinã¡mico no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 188: En el backend bancario, el DBA debe decidir si para ejecutar

**Dificultad:** Media
**Tiempo recomendado:** 40 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

En el backend bancario, el DBA debe decidir si para ejecutar cálculos matemáticos de usuarios va a escribir y compilar un "Procedimiento Almacenado de Base de Datos (Stored Procedure)" o si debe construir una pequeña "Función Escalar (User Defined Function)". Necesita devolver un solo número que pueda invocar repetidamente incrustado dentro de instrucciones rápidas y dinámicas de `SELECT` masivas.

---

### ❓ Pregunta

¿Qué diferencia y restricción arquitectónica técnica puramente de SQL inclina obligatoriamente la decisión para usar una Función Escalar en vez del Procedimiento Almacenado general en la consulta matemática?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Las Funciones Escalares SQL están destinadas a funcionar para devolver e inyectar un valor (Ej.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque el procedimiento almacenado central es el ãºnico que genera un plan de ejecuciã³n. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque los procedimientos almacenados no permiten inyectar e ingerir parã¡metros dinã¡micos. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque la funciã³n escalar central inserta transacciones destructivas en cascada alterando las restricciones. no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 189: Al programar de cero la clásica secuencia recursiva de cálc

**Dificultad:** Difícil
**Tiempo recomendado:** 60 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

Al programar de cero la clásica secuencia recursiva de cálculo de "Fibonacci", un desarrollador emplea recursividad (La función matemática se llama a sí misma constantemente en el código base). Al pasarle un número tan pequeño como el 50, la máquina se colapsa brutalmente, debido a que el árbol y los hilos duplican exponencialmente llamadas que procesan ramas operativas que ya habían sido calculadas cien pasos antes temporalmente.

---

### ❓ Pregunta

Bajo la materia avanzada de diseño de optimización y ciencias de la computación, ¿qué técnica debe aplicar y añadir a la función para almacenar matemáticamente las respuestas viejas en un diccionario de caché local en el programa y así evadir el tener que repetir los cálculos ?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** La "Memoización" o Memoization es el pilar sagrado central que convierte y dota a los algoritmos destructivos y recursivos en reyes de la optimización y Programación Dinámica computacional.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque abstracciã³n algorã­tmica paralela no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque inversiã³n matemã¡tica y segmentaciã³n paralela estricta no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque patrã³n de diseã±o flyweight abstracto y no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 190: El equipo de calidad y pruebas (QA Testing) despliega el soft

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El equipo de calidad y pruebas (QA Testing) despliega el software actualizado a la nueva versión de base general de la semana dos. El desarrollador corrigió de manera impecable el error reportado en el módulo frontal y dinámico del "Carrito de Compras". Sin embargo, al pasarlo a revisión final, el equipo detecta que aunque arregló perfectamente el carrito de los productos, inexplicablemente el código paralelo del "Botón de Recuperación de Contraseñas" que nunca debió verse involucrado en el código, se rompió e inoperantemente en silencio de manera central y.

---

### ❓ Pregunta

¿Qué tipo de ciclo, estrategia y batería puramente estructurada de pruebas automáticas (Testing) salva a la empresa de esta fatalidad forzando revisiones globales tras cualquier modificación de la base ?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Las Pruebas de Regresión matemáticas automáticas aseguran de manera estricta la supervivencia y calidad paralela.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque pruebas matemã¡ticas unitarias modulares locales no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque pruebas dinã¡micas de carga y tensiã³n no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque pruebas de escalabilidad modulares arquitectã³nicas no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 191: Un programador en lenguaje C# o Java de sintaxis estricta uti

**Dificultad:** Media
**Tiempo recomendado:** 30 segundos
**Tipo de trampa:** conceptual

---

### 📖 Contexto

Un programador en lenguaje C# o Java de sintaxis estricta utiliza variables para guardar inmensas cadenas de texto (String clásico). Aconseja que utilizar `String texto = "Data"` y luego estar sumándole temporalmente en bucles concatenaciones de código bruto (`texto += " Update"`) dentro de mil ciclos continuos destruirá el rendimiento y gastará forzosamente la Memoria RAM. Esto ocurre porque cada que el usuario asume formalmente estar "modificando" lógicamente la variable y alterándola, en la realidad técnica de bajo nivel el objeto en el servidor jamás es alterado pasivamente en su casilla interna y.

---

### ❓ Pregunta

¿Qué concepto estructural y arquitectónico fundamental abstracto dictamina y obliga a que este comportamiento devorador de memoria RAM se detone obligando a fabricar e instanciar nuevos objetos inútiles?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Los "Objetos Inmutables" (Como la clase matemática y de texto String en Java clásico estricto), garantizan blindaje estructural en procesamiento multi-hilo y.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque la mutaciã³n de intercambio central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque paginaciã³n interna cã­clica del motor de garbage collector no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque sobreescritura dinã¡mica abstracta no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

B

## CASO 192: El Sistema Operativo Linux entra en alerta de saturación

**Dificultad:** Difícil
**Tiempo recomendado:** 60 segundos
**Tipo de trampa:** interpretación

---

### 📖 Contexto

El Sistema Operativo Linux entra en alerta de saturación. Tras enviar un comando de consola, el administrador mata forzosamente al "Proceso Padre" central. Sin embargo, la computadora sigue asfixiada estáticamente revelando que los diminutos "Sub-Procesos " (Procesos hijos) que fueron dados a luz por el Proceso Padre asesinado, continúan corriendo a la deriva en la RAM y ejecutando recursos, sin nadie estructuralmente por encima de ellos pasivamente que los controle, asimile, recicle y entierre asiladamente asimétricamente.

---

### ❓ Pregunta

Bajo la materia estricta arquitectónica de Gestión de Hilos y Sistema Operativo, ¿cómo se les cataloga a estos pequeños sub-programas que quedan libres y sueltos al ejecutar asiladamente a su progenitor ?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Existe una diferencia vital estricta y en el corazón del Kernel de OS: Un "Proceso Zombi " es un sub-proceso matemático *muerto y finalizado asimétricamente*, en donde el padre y central estricto ha tardado, negado e ignorado estáticamente levantar y borrar en código el "Cadáver numérico (PID)".
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque procesos y bloques zombis no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque procesos suspendidos y central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque demonios kernel no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 193: El administrador de redes corporativo estricto diseña y segm

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El administrador de redes corporativo estricto diseña y segmenta esquemas de direcciones IP para la red VLAN de gerencia central. Sabe que las máscaras y rangos de clase le indican la cuadrícula de computadoras y terminales totales posibles. Un estudiante emplea y paralelamente la vieja fórmula de `2^n - 2` fijos para hallar la cifra útil paralela y que sí se puede encadenar a las PC.

---

### ❓ Pregunta

Considerando la teoría inamovible de direccionamiento clásico IP de enrutadores, ¿qué representan y exigen puramente sustraer y descontar físicamente los dos espacios ("- 2") de la fórmula y estricta matemática paralela ?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En IPv4 estructurado (Ej.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque una para la direcciã³n mac y otra para la red central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque representan el gateway de central y el firewall no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción D**: Es incorrecta porque representan reservas abstractas de nat paralelo central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

C

## CASO 194: El motor SQL principal alojado lógicamente en México es mod

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El motor SQL principal alojado lógicamente en México es modificado y rediseñado por un arquitecto. Debido a la extrema lejanía, y paralela entre su servidor y un nodo Esclavo y replicador secundario situado matemáticamente del otro lado de las redes globales asimétricamente en la ciudad española de Madrid, el experto decide no obligar al equipo de la ciudad matemática de América a pausarse asiladamente y esperando confirmación remota central. En su lugar, México ejecuta lógicamente el trabajo, lo consolida y devuelve el poder rápido y al usuario, y de inmediato y tras bambalinas, avienta la instrucción por internet paralelo central a España y.

---

### ❓ Pregunta

En diseños de Clusters y Redes puramente paralelos centrales, ¿qué estrategia de control de réplicas en bases maestras y de duplicación ha forzado el sistema y paralelo y ?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En nodos globales paralelos centrales y de bases, intentar inyectar de replicación estricta "Síncrona Central " en una distancia oceánica y sería el fin del corporativo.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque replicaciã³n maestro-esclavo y multi-mundo paralela central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque duplicaciã³n matemã¡tica cruzada central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque replicaciã³n activa central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 195: El robot rastreador y araña puramente paralelo de búsquedas

**Dificultad:** Difícil
**Tiempo recomendado:** 50 segundos
**Tipo de trampa:** cálculo

---

### 📖 Contexto

El robot rastreador y araña puramente paralelo de búsquedas de web y de algoritmos de lectura web necesita leer todos los dominios. El ingeniero diseña el programa arquitectónico puramente matemático empleando y creando una estructura y pilar de "Cola" (Queue estricta). Esta estructura matemática define que la araña explore asiladamente y transaccionalmente todo lo adyacente a nivel central antes de adentrarse.

---

### ❓ Pregunta

Considerando la teoría puramente de algoritmos y grafos, ¿qué técnica paralelo central de red se invocó ?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En exploración algorítmica y gráfica, el diseño y pilar matemático define tu rumbo.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque bãºsqueda iterativa central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque optimizaciã³n matemã¡tica no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque algoritmo de flujo central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 196: En la programación y control modular central, un ingeniero u

**Dificultad:** Media
**Tiempo recomendado:** 30 segundos
**Tipo de trampa:** conceptual

---

### 📖 Contexto

En la programación y control modular central, un ingeniero utiliza el popular patrón "Singleton". Este diseño y estructura garantiza crear y aisladamente un solo objeto global único para todo el programa. Sin embargo, en un sistema concurrente de hilos, descubre que la clase se está inicializando, sobrescribiendo y colisionando asiladamente, porque varios hilos logran entrar paralelamente evaluando el "if (instancia == nula)" en el mismo milisegundo. El programador no usa el clásico "synchronized" general bloqueando todo, sino que verifica y lógicamente primero, luego asegura y bloquea y vuelve a verificar antes de crear la entidad.

---

### ❓ Pregunta

Bajo este escenario de programación multihilo y arquitectura, ¿qué concepto y algoritmo avanzado de diseño para bloqueo se aplica estáticamente en Java/C#?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Doble Chequeo (Double-Checked Locking Paralelo) es la salvación en Concurrencia de hilos.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque monitoreo paralelo simple central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque exclusiã³n de bucle paralela no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque inversiã³n de dependencia central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 197: En la programación y y paralelo de POO en Java central, un d

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

En la programación y y paralelo de POO en Java central, un desarrollador declara el método estricto `obtenerSuma` en la clase base "Animal ". Posteriormente en otra clase, define asimétricamente el método `obtenerSuma` con el nombre idéntico, pero el programador altera y transaccionalmente y expande los argumentos de entrada. En lugar de mandar una variable, ahora declara y le pasa como base abstracta tres argumentos paralelos centrales y para que convivan en el mismo bloque.

---

### ❓ Pregunta

Considerando la teoría puramente paralela de objetos, ¿qué herramienta o manipulación de métodos arquitectónicos y pilar se ejerció paralela ?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** En lenguajes paralelos centrales, la Sobrecarga (Overloading) te provee el lujo de clonar y bautizar puramente al mismo nombre de código de un método matemático varias veces en tu clase central.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque mutaciã³n central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque inyecciã³n paralelo central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque herencia y ocultamiento de pila central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 198: El núcleo del Sistema Operativo debe programar que dos proce

**Dificultad:** Media
**Tiempo recomendado:** 30 segundos
**Tipo de trampa:** conceptual

---

### 📖 Contexto

El núcleo del Sistema Operativo debe programar que dos procesos concurrentes simultáneos, A y B, no vayan a estrellarse o dañar y leer a medias lógicamente la variable y objeto "Cuenta Bancaria". Para evitarlo, crea un mecanismo en el CPU. Una primitiva funciona como si tú cerraras la cerradura de un baño al entrar. Cuando un proceso entra a la Zona Crítica, "cierra y apaga" el semáforo para que otros hilos no interrumpan su edición, y luego "levanta y prende " la bandera para que el hilo vecino pueda seguir.

---

### ❓ Pregunta

Bajo ciencias de concurrencia y de exclusión, ¿qué nombre se le otorga a esta barrera central paralela ?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Un Mutex central paralelo (De la síntesis y acrónimo Mutual Exclusion) ejerce la protección y exclusión matemática y absoluta de la zona crítica en CPU.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque monitor de tensiã³n central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque seã±al de segmentaciã³n central paralelo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque paginaciã³n atã³mica central paralelo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 199: El servidor de internet y la página web central del banco es

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El servidor de internet y la página web central del banco están listos. El administrador de cortafuegos y el equipo de IT instalan su viejo Firewall clásico de Red en el puerto 443. Un experto en auditoría y ciberseguridad paralela le comenta estáticamente : "Como la web legítima requiere y fuerza el puerto TCP 443 paralela abierto, cualquier ataque o Hacker que me mande un virus y fragmento de Inyección SQL disfrazada en el campo de texto, va a poder cruzar fácilmente y el muro porque tú dejaste y le aprobaste la entrada libre en tu Firewall clásico para el Puerto ".

---

### ❓ Pregunta

Bajo la materia estricta paralela de Ciberseguridad, ¿qué equipo de protección de Capa 7 debes inyectar para escanear y desarmar ataques web en pleno texto ?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** Un Firewall tradicional opera en puertos (Abre la puerta 443 y se olvida).
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque un filtro de segmentaciã³n central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque ipsec dinã¡mico paralela no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque balanceador central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

## CASO 200: El banco paralela reemplaza a la base relacional

**Dificultad:** Media
**Tiempo recomendado:** 45 segundos
**Tipo de trampa:** cálculo / conceptual

---

### 📖 Contexto

El banco paralela reemplaza a la base relacional. El arquitecto dicta y asienta que tú jamás debes sobrescribir ni destruir y alterar el saldo de "Cuenta ". A partir de hoy, en vez de alterar "100 menos 20 ", guardarás un diario cronológico de eventos inmutables ("Evento Depositó 100", "Evento Retiró 20 ").

---

### ❓ Pregunta

Bajo la materia y arquitectura, ¿qué patrón y estructura de inmutabilidad y registro cronológico se está implementando ?

---

### 🧠 Cómo pensar este caso

1. **Identifica el concepto clave:** El Aprovisionamiento de Eventos (Event Sourcing central paralelo) revoluciona la forma de usar bases de datos.
2. **Descarta distractores:** El EGEL suele poner opciones que son correctas en teoría pero no aplican a la restricción del caso (ej. presupuesto, hardware legado o latencia).
3. **Decisión final:** Selecciona la opción que garantiza la estabilidad y eficiencia del sistema bajo las condiciones dadas.

---

### 🚫 Por qué las otras opciones están mal

*   **Opción A**: Es incorrecta porque base relacional dinã¡mica paralelo no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción B**: Es incorrecta porque paginaciã³n central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.
*   **Opción C**: Es incorrecta porque segmentaciã³n y balanceo mãºltiple central no aborda el requerimiento específico de este escenario o introduce una complejidad innecesaria.

---

### 🧠 Trampa del examen

El examen intenta confundirte con términos del mismo dominio (como confundir TCP con UDP en streaming) o soluciones que parecen correctas pero violan una restricción del contexto.

---

### ✅ Respuesta correcta:

D

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

# 🚨 Errores que te hacen reprobar el EGEL

*   **No leer las restricciones:** Ignorar detalles como "sin presupuesto" o "hardware existente".
*   **Dudar de la técnica:** Cambiar una respuesta basada en principios por una "sensación".
*   **Gestión del tiempo:** Perder demasiado tiempo en un solo reactivo complejo.

---

## 🧠 Consejo final

"El EGEL no evalúa tu memoria. 
Evalúa tu capacidad de pensar como un Ingeniero bajo presión."

---
