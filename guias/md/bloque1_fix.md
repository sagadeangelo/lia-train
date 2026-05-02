## CASO 1

Contexto:
Un equipo está diseñando un sistema de comercio electrónico. Tienen una clase base "MetodoPago" y clases derivadas como "TarjetaCredito", "PayPal" y "Transferencia". El módulo de cobros necesita ejecutar la función "procesarPago()" sobre una lista de métodos, sin importar cuál sea el método específico en tiempo de compilación.

Pregunta:
Â¿Qué principio de la Programación Orientada a Objetos se debe aplicar para lograr este comportamiento dinámico?

Opciones:
A) Abstracción
B) Encapsulamiento
C) Polimorfismo
D) Herencia múltiple

Respuesta correcta: C

Explicación:
El polimorfismo permite que un mismo método reaccione y ejecute comportamientos distintos dependiendo de la clase específica instanciada en tiempo de ejecución, permitiendo tratar objetos derivados a través de la interfaz de su clase base.

---

## CASO 2

Contexto:
Se requiere segmentar la red 192.168.10.0/24 para asignar un segmento exclusivo al departamento de ventas que requiere exactamente 25 direcciones IP asignables a dispositivos.

Pregunta:
Â¿Qué máscara de subred de longitud variable (VLSM) es la más óptima para evitar el desperdicio de direcciones IP?

Opciones:
A) /26
B) /27
C) /28
D) /25

Respuesta correcta: B

Explicación:
Una máscara /27 deja 5 bits para hosts, lo que permite (2^5) - 2 = 30 direcciones IP asignables. Esto cubre exactamente el requerimiento de 25 hosts con el menor desperdicio posible. Una /28 solo brindaría 14 direcciones.

---

## CASO 3

Contexto:
En una base de datos relacional, la tabla "Ventas" contiene los campos: ID_Venta, Fecha, ID_Cliente, Nombre_Cliente y Correo_Cliente. 

Pregunta:
Â¿Qué regla de normalización está violando el diseño de esta tabla?

Opciones:
A) Primera Forma Normal (1FN)
B) Segunda Forma Normal (2FN)
C) Tercera Forma Normal (3FN)
D) Forma Normal de Boyce-Codd (FNBC)

Respuesta correcta: C

Explicación:
Los campos Nombre_Cliente y Correo_Cliente tienen una dependencia funcional hacia ID_Cliente, el cual no es la llave primaria de la tabla (ID_Venta). Esto se conoce como dependencia transitiva, lo cual viola la Tercera Forma Normal (3FN).

---

## CASO 4

Contexto:
En un sistema operativo servidor, dos procesos simultáneos (P1 y P2) requieren acceso exclusivo a una impresora y a un escáner. P1 bloquea la impresora y espera el escáner. Al mismo tiempo, P2 bloquea el escáner y espera la impresora. Ambos quedan congelados indefinidamente.

Pregunta:
Â¿Qué anomalía clásica de sistemas operativos se ha presentado en este escenario?

Opciones:
A) Inanición (Starvation)
B) Interbloqueo (Deadlock)
C) Condición de Carrera (Race Condition)
D) Paginación excesiva (Thrashing)

Respuesta correcta: B

Explicación:
El interbloqueo o Deadlock ocurre cuando dos o más procesos se bloquean mutuamente esperando recursos que ya están retenidos por el otro proceso, creando un ciclo cerrado de espera.

---

## CASO 5

Contexto:
Un corporativo gubernamental requiere construir un sistema financiero con requerimientos legales estrictos, detallados y fijos desde el inicio, donde las regulaciones impiden que el alcance cambie una vez iniciado el desarrollo.

Pregunta:
Â¿Qué metodología de ciclo de vida del software es la más apropiada para este proyecto?

Opciones:
A) Scrum
B) Cascada (Waterfall)
C) Programación Extrema (XP)
D) Kanban

Respuesta correcta: B

Explicación:
El modelo en Cascada es ideal para proyectos donde los requerimientos son fijos, claros y no están sujetos a cambios, ya que cada fase debe completarse y documentarse antes de avanzar a la siguiente.

---

## CASO 6

Contexto:
Se necesita implementar un mecanismo de navegación para el botón "Atrás" de un navegador web, donde la última página visitada es la primera que se extrae al presionar el botón.

Pregunta:
Â¿Qué estructura de datos es la indicada para gestionar este historial de navegación?

Opciones:
A) Pila (Stack)
B) Cola (Queue)
C) írbol Binario
D) Grafo

Respuesta correcta: A

Explicación:
Una pila opera bajo el principio LIFO (Last In, First Out). La última página visitada (insertada) es la primera en ser extraída cuando el usuario desea regresar.

---

## CASO 7

Contexto:
Un analista necesita buscar un registro específico dentro de un arreglo de 1 millón de elementos numéricos que ya se encuentran ordenados ascendentemente.

Pregunta:
Â¿Cuál es la complejidad (Big O) del mejor algoritmo disponible para esta búsqueda?

Opciones:
A) O(n)
B) O(n log n)
C) O(log n)
D) O(1)

Respuesta correcta: C

Explicación:
Como el arreglo ya está ordenado, el algoritmo óptimo es la Búsqueda Binaria. Este divide el arreglo a la mitad en cada paso, logrando un rendimiento logarítmico O(log n), extremadamente superior a una búsqueda lineal O(n).

---

## CASO 8

Contexto:
Un ingeniero desarrolla una aplicación para transmisión de video en vivo (Streaming). Prioriza la velocidad de entrega de datos y asume que perder unos cuantos fotogramas es preferible a sufrir retrasos severos de carga.

Pregunta:
Según el Modelo OSI, Â¿qué protocolo de la Capa de Transporte debe seleccionar?

Opciones:
A) TCP
B) UDP
C) HTTP
D) ICMP

Respuesta correcta: B

Explicación:
UDP (User Datagram Protocol) es un protocolo no orientado a conexión. No verifica que los paquetes lleguen completos ni los reordena, lo que lo hace inmensamente más rápido y adecuado para streaming de voz o video.

---

## CASO 9

Contexto:
Una empresa tiene las tablas "Empleados" y "Departamentos". Se requiere generar un reporte que incluya a todos los departamentos registrados, incluso aquellos que actualmente no tienen ningún empleado asignado.

Pregunta:
Considerando que la tabla "Departamentos" está a la izquierda en la consulta, Â¿qué cláusula de unión SQL resuelve el requerimiento?

Opciones:
A) INNER JOIN
B) LEFT JOIN
C) RIGHT JOIN
D) CROSS JOIN

Respuesta correcta: B

Explicación:
La operación LEFT JOIN devuelve todos los registros de la tabla izquierda (Departamentos) y las coincidencias de la tabla derecha. Si un departamento no tiene empleados, rellenará las columnas de empleados con valores NULL.

---

## CASO 10

Contexto:
Para evitar la sobrecarga de conexiones concurrentes hacia el motor de base de datos, el arquitecto de software decide que todo el sistema web debe compartir una única y misma instancia de conexión a lo largo de su ejecución.

Pregunta:
Â¿Qué patrón de diseño de software restringe la instanciación de una clase a un único objeto?

Opciones:
A) Factory
B) Observer
C) Singleton
D) Decorator

Respuesta correcta: C

Explicación:
El patrón Singleton garantiza que una clase solo tenga una instancia en todo el ciclo de vida del programa y proporciona un punto de acceso global a ella.

---

## CASO 11

Contexto:
Un servidor Linux entra en un estado crítico donde el disco duro emite ruido y el rendimiento de procesamiento decae a casi cero. El administrador descubre que el sistema está intercambiando páginas de memoria entre la RAM y el archivo de paginación de disco incesantemente.

Pregunta:
Â¿Qué nombre técnico recibe este fenómeno de saturación del Sistema Operativo?

Opciones:
A) Paginación segmentada
B) Fragmentación externa
C) Inanición cíclica
D) Hiperpaginación (Thrashing)

Respuesta correcta: D

Explicación:
El Thrashing o Hiperpaginación ocurre cuando un sistema se sobrecarga de procesos y agota su memoria RAM, dedicando todo su poder computacional a mover datos entre la RAM y el disco duro (Swap) en lugar de procesar instrucciones útiles.

---

## CASO 12

Contexto:
Al ejecutar una función matemática diseñada con recursividad, la aplicación lanza el error "StackOverflowError" (Desbordamiento de Pila) colapsando la memoria. 

Pregunta:
Â¿Qué componente estructural de la función fue omitido o programado de forma incorrecta, causando el error?

Opciones:
A) El iterador de paso
B) La llamada interna
C) El caso base
D) La inicialización de la memoria Heap

Respuesta correcta: C

Explicación:
El caso base es la condición de paro que indica a la función recursiva cuándo debe dejar de llamarse a sí misma. Sin él, la recursividad ocurre indefinidamente hasta agotar la memoria de la pila (Stack).

---

## CASO 13

Contexto:
Un desarrollador recibe alertas de seguridad. El log de la aplicación web muestra que atacantes están introduciendo comandos como `' OR '1'='1` en los campos del formulario de inicio de sesión.

Pregunta:
Â¿Qué mecanismo de la ingeniería de software es el estándar primario para mitigar este tipo específico de ataque a nivel de código de base de datos?

Opciones:
A) Hashear las contraseñas
B) Sentencias Preparadas (Prepared Statements)
C) Certificados SSL
D) Encriptación 

Respuesta correcta: B

Explicación:
El ataque es una Inyección SQL. Las Sentencias Preparadas o consultas parametrizadas precompilan la consulta en el motor de bases de datos antes de inyectar el valor del usuario, impidiendo que los caracteres especiales alteren la estructura del comando.

---

## CASO 14

Contexto:
Un empleado no puede acceder al portal interno mediante el nombre `intranet.empresa.local`, pero sí logra acceder directamente escribiendo la dirección IP `10.0.5.25` en el navegador.

Pregunta:
Â¿En qué servicio de red y capa del modelo OSI recae exclusivamente esta falla?

Opciones:
A) Servicio DHCP - Capa 3
B) Servicio DNS - Capa 7
C) Servicio HTTP - Capa 4
D) Servicio NAT - Capa 2

Respuesta correcta: B

Explicación:
La falla radica en la resolución del nombre de dominio a una dirección IP. Este proceso lo realiza el servidor DNS (Domain Name System), el cual opera puramente en la Capa 7 (Aplicación) del modelo OSI.

---

## CASO 15

Contexto:
Un sistema bancario procesa una transferencia transfiriendo dinero de la Cuenta A a la Cuenta B. Ocurre un corte de energía justo después de que se restó el dinero en la Cuenta A, pero antes de que se sumara a la Cuenta B. Al reiniciar, el dinero de la Cuenta A ha vuelto íntegro.

Pregunta:
Â¿Qué propiedad de las transacciones (ACID) garantizó que no se guardaran operaciones a medias?

Opciones:
A) Consistencia
B) Aislamiento
C) Durabilidad
D) Atomicidad

Respuesta correcta: D

Explicación:
La Atomicidad es la propiedad de bases de datos que rige el principio "Todo o Nada". Si cualquier suboperación dentro de una transacción falla, todo el bloque se deshace (Rollback), impidiendo estados intermedios.

---

## CASO 16

Contexto:
El área de Control de Calidad (QA) debe validar un módulo de cálculos de impuestos de un sistema web. Los analistas introducen distintos rangos salariales en los formularios web y verifican los resultados en pantalla sin observar en ningún momento el código fuente.

Pregunta:
Â¿Qué tipo de técnica de pruebas de software se está aplicando?

Opciones:
A) Prueba de Caja Blanca
B) Prueba de Caja Negra
C) Prueba de Regresión
D) Prueba de Estrés

Respuesta correcta: B

Explicación:
Las Pruebas de Caja Negra evalúan exclusivamente las entradas y salidas de un sistema desde la perspectiva del usuario o de requisitos, asumiendo ignorancia total sobre la estructura interna y el código fuente.

---

## CASO 17

Contexto:
Se requiere implementar una libreta de contactos para un servidor donde el acceso a cualquier número de teléfono utilizando el nombre como clave debe ser instantáneo y mantener un tiempo de búsqueda promedio de O(1), sin importar si hay 100 o un millón de registros.

Pregunta:
Â¿Qué estructura de datos asegura este rendimiento óptimo?

Opciones:
A) írbol Binario de Búsqueda
B) Lista Doblemente Enlazada
C) Tabla Hash (Diccionario / Hash Map)
D) Arreglo dinámico ordenado

Respuesta correcta: C

Explicación:
Las Tablas Hash procesan la clave ("nombre") mediante una función matemática que indica directamente la posición exacta en memoria, logrando una búsqueda de rendimiento O(1) bajo condiciones óptimas sin colisiones severas.

---

## CASO 18

Contexto:
Un programador en Java declara las variables de una clase como "private" y genera los métodos "get" y "set" para permitir que otros objetos puedan acceder o modificar los datos bajo ciertas reglas de validación estipuladas.

Pregunta:
Â¿Qué pilar fundamental de la Programación Orientada a Objetos se está respetando?

Opciones:
A) Herencia
B) Polimorfismo
C) Abstracción
D) Encapsulamiento

Respuesta correcta: D

Explicación:
El Encapsulamiento consiste en restringir el acceso directo al estado interno de un objeto, protegiéndolo mediante atributos privados y obligando a los agentes externos a usar métodos controlados para interactuar con la información.

---

## CASO 19

Contexto:
Un sistema operativo multitarea asigna a cada proceso activo un pequeño "cuanto de tiempo" o intervalo fijo. Si el proceso no termina en ese lapso, es forzado a regresar al final de la fila de listos para ceder el procesador a otro.

Pregunta:
Â¿Qué algoritmo de planificación de CPU (Scheduling) se describe en este comportamiento?

Opciones:
A) Primero en llegar, primero en ser servido (FCFS)
B) Planificación por prioridad
C) Round Robin
D) El trabajo más corto primero (SJF)

Respuesta correcta: C

Explicación:
Round Robin es el clásico algoritmo multitarea por división de tiempos (Time-sharing). Asigna una porción equitativa de tiempo a todos los procesos en un ciclo rotatorio, garantizando respuesta justa y evitando monopolio de recursos.

---

## CASO 20

Contexto:
El administrador de red debe permitir el flujo de paquetes de internet en las reglas del enrutador o cortafuegos (Firewall). Decide bloquear las comunicaciones basándose en las direcciones de origen de la red pública.

Pregunta:
Â¿Qué tipo de direccionamiento y en qué capa del Modelo OSI debe aplicarse este bloqueo?

Opciones:
A) Direcciones MAC - Capa 2
B) Direcciones IP - Capa 3
C) Direcciones URL - Capa 7
D) Puertos - Capa 4

Respuesta correcta: B

Explicación:
Un enrutador (Router) o un cortafuegos para análisis de paquetes de red funciona mediante Direcciones IP, las cuales pertenecen estrictamente a la Capa 3 (Red) del modelo OSI. Las direcciones MAC solo tienen alcance de red local.



