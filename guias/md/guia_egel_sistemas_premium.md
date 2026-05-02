<div align="center">
  
# LIA-Train  
## GUÍA DEFINITIVA EGEL - INGENIERÍA EN SISTEMAS COMPUTACIONALES (Sistemas IT)
**El atajo práctico para aprobar tu examen de titulación sin estrés y a la primera.**

<br>

✔ Incluye preguntas tipo EGEL  
✔ Explicaciones paso a paso  
✔ Estrategias reales de examen  

</div>

---

## 🧠 Introducción

Olvídate de leer libros teóricos de 800 páginas. El examen EGEL no evalúa tu capacidad de memorizar conceptos abstractos, sino tu agilidad para resolver problemas reales del día a día en la industria tecnológica.

Esta guía ha sido diseñada por expertos con un solo objetivo en mente: **hacerte aprobar**. Aquí no encontrarás relleno académico; vamos directo al grano con los patrones exactos, las trampas comunes y los temas clave que garantizan tu éxito en el examen. 

Es hora de asegurar ese título. ¡Comencemos!

---

## 📊 ¿Cómo es el examen?

El EGEL-ISC es una prueba de opción múltiple estructurada en casos prácticos. En lugar de preguntarte "¿Qué es una base de datos?", te pondrán frente a un sistema colapsado y te pedirán la mejor solución.

Concéntrate en dominar estos 4 pilares:
- **Desarrollo de Software:** Algoritmos, programación orientada a objetos y estructuras de datos.
- **Bases de Datos:** Modelado, normalización estricta y consultas SQL (Joins).
- **Redes e Infraestructura:** Capas del modelo OSI, subneteo y sistemas operativos.
- **Ingeniería de Software:** Metodologías ágiles, pruebas de calidad (QA) y ciclo de vida.

---

## 🎯 Estrategia para aprobar (Hackeando el examen)

1. **Lee la pregunta final antes que el contexto:** Los enunciados suelen ser intencionalmente largos. Si lees la pregunta específica primero, sabrás exactamente qué datos buscar en el texto y ahorrarás minutos valiosos.
2. **Descarta lo absurdo (Regla del 50/50):** De las cuatro opciones, casi siempre hay dos que son técnicamente inviables o no responden al problema. Elimínalas rápido y elige solo entre las dos restantes.
3. **Responde según "El deber ser":** El EGEL evalúa el estándar internacional y las mejores prácticas. Responde pensando en el escenario ideal (metodologías ágiles, normalización completa, patrones de diseño), sin importar si en tu trabajo real se usan atajos.

---

## 📚 Temas clave desglosados

### Tema 1: Desarrollo de Software y Bases de Datos

**Programación y Algoritmos:**
- **Complejidad algorítmica (Big O):** Evita los ciclos anidados. Un algoritmo O(n) siempre vencerá a un O(n²).
- **Estructuras de Datos:** 
  - *Pilas (LIFO):* Útiles para deshacer acciones (ej. Ctrl+Z).
  - *Colas (FIFO):* Ideales para procesar tareas en orden.
  - *Hash maps (Diccionarios):* Tu mejor opción para búsquedas ultra-rápidas.
- **POO (Programación Orientada a Objetos):**
  - *Encapsulamiento:* Ocultar el estado interno.
  - *Polimorfismo:* Un método que reacciona distinto según el objeto.
  - *UML rápido:* Flecha vacía = Herencia. Rombo negro = Composición.

**Bases de Datos:**
- **La Regla de Oro de Normalización:**
  - *1FN:* Sin grupos repetidos (datos atómicos).
  - *2FN:* Cumple 1FN y todo depende de la clave primaria.
  - *3FN (La meta del EGEL):* Cumple 2FN y **no hay dependencias transitivas** (ningún atributo depende de otro que no sea la clave primaria).
- **SQL (Joins clave):**
  - `INNER JOIN`: Solo devuelve donde hay coincidencia en ambas tablas.
  - `LEFT JOIN`: Todo lo de la izquierda, existan o no coincidencias en la derecha.

### Tema 2: Infraestructura, Redes e Ingeniería de Software

**Redes y Sistemas Operativos:**
- **Capas clave del Modelo OSI:**
  - *Capa 2 (Enlace de datos):* Trabaja con Switches y direcciones MAC.
  - *Capa 3 (Red):* Trabaja con Routers, IPs y pings (ICMP).
  - *Capa 7 (Aplicación):* DNS, HTTP.
- **Subneteo (IPv4):** La fórmula mágica para saber cuántas redes o hosts tienes es **$2^n - 2$** (donde *n* son los bits disponibles para host).
- **Sistemas Operativos (Deadlocks):** Para que un sistema se bloquee permanentemente, requiere 4 condiciones a la vez. Si rompes una (ej. pidiendo todos los recursos desde el inicio), salvas el sistema.

**Ingeniería de Software:**
- **Metodologías:** Si el requerimiento cambia constantemente usa **Scrum (Ágil)**. Si el proyecto es rígido y predecible, usa **Cascada**.
- **Pruebas de Software:**
  - *Caja blanca:* El programador ve y conoce el código.
  - *Caja negra:* Solo se validan entradas y salidas sin ver el código fuente.

---

## ❓ 15 Preguntas tipo EGEL resueltas paso a paso


### Pregunta 1

**Contexto:** Un sistema web experimenta tiempos de respuesta muy lentos al consultar el catálogo de productos por categoría. La base de datos tiene 500,000 registros y la consulta principal utiliza la cláusula `WHERE id_categoria = ?`.  
**Pregunta:** ¿Cuál es la solución más eficiente para optimizar el tiempo de respuesta sin modificar el código de la aplicación?  
A) Aumentar la memoria RAM del servidor de base de datos.  
B) Crear un índice en la columna `id_categoria` de la tabla de productos.  
C) Normalizar la tabla de productos a la Tercera Forma Normal (3FN).  
D) Cambiar el motor de base de datos a uno NoSQL.  

**Respuesta correcta: B**  
**Explicación:** Sin un índice, el motor realiza un escaneo secuencial lento fila por fila. Un índice crea una estructura de búsqueda rápida directa en la BD, resolviendo la latencia sin requerir cambios en el código de la app ni invertir en hardware.

---


### Pregunta 2

**Contexto:** Se requiere diseñar un algoritmo para almacenar las acciones del usuario en un editor de texto y permitirle deshacerlas mediante la función "Ctrl + Z".  
**Pregunta:** ¿Qué estructura de datos es la más adecuada para implementar esta funcionalidad?  
A) Cola (Queue)  
B) Pila (Stack)  
C) Lista Enlazada Simple  
D) Árbol Binario de Búsqueda  

**Respuesta correcta: B**  
**Explicación:** La función deshacer necesita acceder siempre a la acción más reciente. Una Pila opera bajo el principio LIFO (Last-In, First-Out), lo que la hace perfecta para revertir el flujo desde lo último hasta lo primero.

---


### Pregunta 3

**Contexto:** Un equipo de desarrollo debe iniciar un proyecto donde los requerimientos del cliente son difusos y se espera que cambien constantemente a lo largo del año.  
**Pregunta:** ¿Qué metodología de desarrollo es la más apropiada?  
A) Modelo en Cascada  
B) Scrum  
C) Modelo en V  
D) Prototipado Rápido  

**Respuesta correcta: B**  
**Explicación:** Cuando leas "incertidumbre" o "cambios constantes", la respuesta es una metodología ágil. Cascada o Modelo en V son rígidos; Scrum, en cambio, está diseñado para adaptarse rápido mediante *sprints*.

---


### Pregunta 4

**Contexto:** Un programador valida la función de login introduciendo un usuario y contraseña, comprobando que se genere el token correcto. El programador hace esta prueba sin ver el código fuente.  
**Pregunta:** ¿Qué tipo de prueba está ejecutando?  
A) Prueba de caja blanca  
B) Prueba de estrés  
C) Prueba de integración  
D) Prueba de caja negra  

**Respuesta correcta: D**  
**Explicación:** Al probar exclusivamente las entradas (usuario/pass) y las salidas (token) sin analizar ni conocer la estructura interna del código, se define como "Prueba de Caja Negra".

---


### Pregunta 5

**Contexto:** En una red corporativa, los usuarios no pueden acceder a dominios como `www.google.com`, pero pueden hacer ping exitosamente a la IP `8.8.8.8`.  
**Pregunta:** ¿En qué servicio y capa del Modelo OSI reside la falla?  
A) Capa 3 - Falla de ruteo  
B) Capa 7 - Falla en el servicio DNS  
C) Capa 4 - Falla en TCP  
D) Capa 2 - Falla del Switch  

**Respuesta correcta: B**  
**Explicación:** El ping a una IP confirma que hay internet y ruteo funcional (Capas 1 a 3 ok). La falla existe solo al traducir nombres de dominio a IPs, tarea exclusiva del servicio DNS, que vive en la Capa 7 (Aplicación).

---


### Pregunta 6

**Contexto:** Se tiene una tabla `Ventas` con las columnas: `id_venta`, `fecha`, `id_cliente`, `nombre_cliente`, `direccion_cliente`.  
**Pregunta:** ¿Qué regla de normalización viola este diseño?  
A) 1FN  
B) 2FN  
C) 3FN  
D) 4FN  

**Respuesta correcta: C**  
**Explicación:** `nombre_cliente` y `direccion_cliente` dependen de `id_cliente`, no de la llave primaria `id_venta`. Tener atributos que dependen de otros atributos que no son clave es una "dependencia transitiva", lo cual viola la 3FN.

---


### Pregunta 7

**Contexto:** Un sistema operativo sufre de "Deadlocks". Se implementa una regla donde cada proceso debe solicitar *todos* sus recursos antes de iniciar su ejecución.  
**Pregunta:** ¿Qué condición necesaria para el interbloqueo se elimina con esta estrategia?  
A) Exclusión mutua  
B) Espera circular  
C) Retención y espera (Hold and Wait)  
D) No apropiación  

**Respuesta correcta: C**  
**Explicación:** El interbloqueo exige que un proceso "retenga" un recurso mientras "espera" otro. Si se le obliga a pedir todo por adelantado, se elimina la posibilidad de retener esperando.

---


### Pregunta 8

**Contexto:** Debes ordenar eficientemente en memoria un arreglo desorganizado de 1 millón de enteros en el menor tiempo promedio posible.  
**Pregunta:** ¿Qué algoritmo de ordenamiento seleccionas?  
A) Bubble Sort  
B) Insertion Sort  
C) Selection Sort  
D) Quick Sort  

**Respuesta correcta: D**  
**Explicación:** Los tres primeros son algoritmos O(n²), terriblemente lentos para grandes volúmenes de datos. Quick Sort utiliza "divide y vencerás" alcanzando un rendimiento óptimo de O(n log n).

---


### Pregunta 9

**Contexto:** Una corporación debe dividir su red `10.0.0.0/8` para generar al menos 500 subredes destinadas a franquicias.  
**Pregunta:** ¿Cuántos bits adicionales debe tomar prestados para crear dichas subredes?  
A) 8 bits  
B) 9 bits  
C) 10 bits  
D) 12 bits  

**Respuesta correcta: B**  
**Explicación:** Usamos la fórmula 2^n donde *n* son los bits prestados. 2^8 es 256 (no alcanza). 2^9 es 512, lo cual cubre la necesidad de 500 subredes sobradamente.

---


### Pregunta 10

**Contexto:** En un sistema de e-commerce, una clase base `Producto` posee el método `calcularImpuesto()`. Las clases hijas `Software` y `Hardware` implementan lógicas totalmente distintas para este mismo método.  
**Pregunta:** ¿Qué principio de la POO describe este comportamiento?  
A) Abstracción  
B) Encapsulamiento  
C) Polimorfismo  
D) Modularidad  

**Respuesta correcta: C**  
**Explicación:** El Polimorfismo (múltiples formas) permite que un mismo método ejecute comportamientos distintos dependiendo del tipo específico del objeto en tiempo de ejecución.

---


### Pregunta 11

**Contexto:** Se requiere una consulta SQL que muestre la lista de *todos* los clientes registrados, junto con la cantidad de compras que han hecho. Los clientes que tienen cero compras también deben aparecer en el reporte.  
**Pregunta:** ¿Qué instrucción JOIN se debe usar (asumiendo `Clientes` a la izquierda y `Compras` a la derecha)?  
A) INNER JOIN  
B) LEFT JOIN  
C) RIGHT JOIN  
D) CROSS JOIN  

**Respuesta correcta: B**  
**Explicación:** Un `INNER JOIN` ignoraría a los clientes sin compras. El `LEFT JOIN` garantiza que toda la tabla izquierda (Clientes) permanezca en el resultado, rellenando con NULLs la tabla derecha si no hay historial.

---


### Pregunta 12

**Contexto:** Tras un despliegue, el servidor colapsa por alto uso de CPU. Se detecta que una función recursiva para calcular números de Fibonacci no tiene validaciones para valores negativos ni para el número cero.  
**Pregunta:** ¿Qué elemento técnico le falta a la función?  
A) Iterador  
B) Caso base  
C) Manejo de memoria dinámica  
D) Funciones callback  

**Respuesta correcta: B**  
**Explicación:** Toda recursividad requiere una condición de escape para dejar de invocarse a sí misma, técnicamente conocida como "Caso base". Sin él, ocurre un *Stack Overflow*.

---


### Pregunta 13

**Contexto:** Para enlazar sucursales distantes utilizando el Internet público de manera segura, el equipo de infraestructura crea túneles encriptados.  
**Pregunta:** ¿A qué tecnología corresponde esta implementación?  
A) VLAN  
B) Firewall  
C) VPN (Virtual Private Network)  
D) Proxy reverso  

**Respuesta correcta: C**  
**Explicación:** Usar criptografía y encapsulamiento sobre una red pública para emular una conexión de red privada segura es el propósito exacto de una Red Privada Virtual (VPN).

---


### Pregunta 14

**Contexto:** Al diseñar una API RESTful, el cliente debe poder insertar un nuevo registro de usuario en el servidor enviando los datos en formato JSON.  
**Pregunta:** Según los estándares REST, ¿qué verbo HTTP es el adecuado?  
A) GET  
B) POST  
C) PUT  
D) DELETE  

**Respuesta correcta: B**  
**Explicación:** En el mapeo CRUD a verbos HTTP, GET es para leer y PUT/PATCH para actualizar. Para la creación (Create) de nuevos recursos, el estándar obliga a usar el verbo POST.

---


### Pregunta 15

**Contexto:** El equipo técnico se reúne a diario durante 15 minutos exactos para responder tres preguntas: ¿Qué hice ayer?, ¿Qué haré hoy? y ¿Qué impedimentos me bloquean?  
**Pregunta:** ¿A qué ceremonia ágil corresponde esta actividad?  
A) Sprint Retrospective  
B) Daily Scrum / Stand-up  
C) Sprint Review  
D) Backlog Refinement  

**Respuesta correcta: B**  
**Explicación:** Una reunión de sincronización diaria limitada a 15 minutos y enfocada en esas 3 preguntas clave es la definición exacta de una Daily Scrum (o Stand-up meeting) dentro de la metodología Scrum.

---

## ⚠️ Errores comunes que arruinan tu puntaje

- **Querer leer todo el código:** Si el examen te lanza una pared de 40 líneas de código, no la recorras mentalmente línea por línea. Ve directo a la falla lógica (¿falta el índice? ¿falta un caso base? ¿hay dependencia transitiva?). Ahorrarás minutos vitales.
- **Tu experiencia vs. El estándar internacional:** En el mundo laboral real se desnormalizan tablas por rendimiento o se ignoran las metodologías formales por prisas. **En el examen, eso es un error grave.** Responde siempre pensando en el modelo perfecto y purista.
- **Confundir Capas de Red (El error más triste):** Grábatelo en piedra: **Routers** operan con IPs en la Capa 3 (Red). **Switches** operan con MACs en la Capa 2 (Enlace de datos).

---

## 🚀 Consejos finales para el Día D

- **Tu mente es tu mejor hardware:** El examen no evalúa si te sabes el temario de memoria, evalúa si tu cerebro tiene la lógica para resolver 140+ problemas sin fundirse. Dormir bien te dará muchos más puntos que desvelarte leyendo a las 3:00 a.m.
- **Caza las palabras clave:** El EGEL es predecible. Identifica anclajes: 
  - "Incertidumbre" o "Cambios frecuentes" = Scrum.
  - "Redundancia" o "Anomalías de modificación" = Normalización.
  - "Divide y vencerás" = Quick Sort o Merge Sort.
- **Avanza sin miedo:** Tienes un promedio de 2 minutos por pregunta. Si una te bloquea por más de 3 minutos, márcala y avanza. ¡Una pregunta teórica sencilla vale los mismos puntos que el problema de ruteo más complejo!

> **Tiempo promedio por pregunta:** 2 minutos  
> **Meta ideal:** 70% o más de aciertos  

---

## 🌟 Estás a un paso de tu título

Has llegado al final de esta guía y ya tienes la mentalidad, los atajos y el conocimiento que separa a los que reprueban de los que obtienen resultados sobresalientes. 

Sistemas no es una carrera de memorización, es una carrera de lógica y resolución de problemas. Tú ya tienes esas habilidades, solo necesitabas estructurarlas al estilo EGEL.

**¿El siguiente paso?** Poner esto en práctica. No dejes que esta teoría se enfríe. Visita nuestro simulador completo en **LIA-Train**, enfréntate a exámenes contrarreloj y asegura tu éxito con confianza total. 

¡El título ya casi es tuyo!
