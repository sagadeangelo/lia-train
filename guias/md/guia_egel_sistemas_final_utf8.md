\begin{titlepage}
\centering
\includegraphics[width=\textwidth]{portada.png}
\end{titlepage}
\newpage
# LIA-Train
# GUIA COMPLETA EGEL
## Ingenieria en Sistemas Computacionales

200 Casos Practicos Tipo Examen
Nivel Profesional Real
\newpage
# Introduccion
Guia basada en casos reales tipo EGEL.
\newpage
# Bloque 1
## CASO 1



Contexto:

Un equipo está diseñando un sistema de comercio electrónico. Tienen una clase base "MetodoPago" y clases derivadas como "TarjetaCredito", "PayPal" y "Transferencia". El módulo de cobros necesita ejecutar la función "procesarPago()" sobre una lista de métodos, sin importar cuál sea el método específico en tiempo de compilación.



Pregunta:

¿Qué principio de la Programación Orientada a Objetos se debe aplicar para lograr este comportamiento dinámico?



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

¿Qué máscara de subred de longitud variable (VLSM) es la más óptima para evitar el desperdicio de direcciones IP?



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

¿Qué regla de normalización está violando el diseño de esta tabla?



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

¿Qué anomalía clásica de sistemas operativos se ha presentado en este escenario?



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

¿Qué metodología de ciclo de vida del software es la más apropiada para este proyecto?



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

¿Qué estructura de datos es la indicada para gestionar este historial de navegación?



Opciones:

A) Pila (Stack)

B) Cola (Queue)

C) Árbol Binario

D) Grafo



Respuesta correcta: A



Explicación:

Una pila opera bajo el principio LIFO (Last In, First Out). La última página visitada (insertada) es la primera en ser extraída cuando el usuario desea regresar.



---



## CASO 7



Contexto:

Un analista necesita buscar un registro específico dentro de un arreglo de 1 millón de elementos numéricos que ya se encuentran ordenados ascendentemente.



Pregunta:

¿Cuál es la complejidad (Big O) del mejor algoritmo disponible para esta búsqueda?



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

Según el Modelo OSI, ¿qué protocolo de la Capa de Transporte debe seleccionar?



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

Considerando que la tabla "Departamentos" está a la izquierda en la consulta, ¿qué cláusula de unión SQL resuelve el requerimiento?



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

¿Qué patrón de diseño de software restringe la instanciación de una clase a un único objeto?



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

¿Qué nombre técnico recibe este fenómeno de saturación del Sistema Operativo?



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

¿Qué componente estructural de la función fue omitido o programado de forma incorrecta, causando el error?



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

¿Qué mecanismo de la ingeniería de software es el estándar primario para mitigar este tipo específico de ataque a nivel de código de base de datos?



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

¿En qué servicio de red y capa del modelo OSI recae exclusivamente esta falla?



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

¿Qué propiedad de las transacciones (ACID) garantizó que no se guardaran operaciones a medias?



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

¿Qué tipo de técnica de pruebas de software se está aplicando?



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

¿Qué estructura de datos asegura este rendimiento óptimo?



Opciones:

A) Árbol Binario de Búsqueda

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

¿Qué pilar fundamental de la Programación Orientada a Objetos se está respetando?



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

¿Qué algoritmo de planificación de CPU (Scheduling) se describe en este comportamiento?



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

¿Qué tipo de direccionamiento y en qué capa del Modelo OSI debe aplicarse este bloqueo?



Opciones:

A) Direcciones MAC - Capa 2

B) Direcciones IP - Capa 3

C) Direcciones URL - Capa 7

D) Puertos - Capa 4



Respuesta correcta: B



Explicación:

Un enrutador (Router) o un cortafuegos para análisis de paquetes de red funciona mediante Direcciones IP, las cuales pertenecen estrictamente a la Capa 3 (Red) del modelo OSI. Las direcciones MAC solo tienen alcance de red local.

\newpage
# Bloque 2
## CASO 21



Contexto:

El administrador de bases de datos de una universidad intenta eliminar de la tabla "Carreras" el registro de la carrera de Ingeniería Industrial. Sin embargo, el motor de base de datos bloquea la operación arrojando un error de violación de restricción, ya que existen actualmente 500 alumnos registrados en esa carrera.



Pregunta:

¿Qué mecanismo relacional se activó para impedir el borrado y proteger los datos?



Opciones:

A) Índice Agrupado (Clustered Index)

B) Disparador (Trigger) de inserción

C) Integridad Referencial (Llave Foránea)

D) Bloqueo de Transacción (Deadlock)



Respuesta correcta: C



Explicación:

La Integridad Referencial, impuesta mediante una Llave Foránea (Foreign Key), asegura que no se pueda eliminar un registro padre (Carrera) si existen registros hijos (Alumnos) que dependen de él. Esto evita la creación de registros "huérfanos" en la base de datos.



---



## CASO 22



Contexto:

Un servidor cuenta con 8 GB de memoria RAM física. Al ejecutar un motor de renderizado 3D pesado que requiere 12 GB, el sistema no se detiene ni marca error, sino que se vuelve lento porque comienza a usar espacio libre en el disco duro para almacenar datos.



Pregunta:

¿Cómo se denomina técnicamente este espacio del disco duro que el sistema operativo utiliza como extensión de la RAM?



Opciones:

A) Memoria Caché L3

B) Memoria Virtual (Swap)

C) Memoria ROM

D) Buffer de E/S



Respuesta correcta: B



Explicación:

La Memoria Virtual (conocida como partición Swap en Linux o Archivo de Paginación en Windows) es un espacio reservado en el almacenamiento físico que el Sistema Operativo utiliza para emular memoria RAM adicional cuando la memoria física real se satura.



---



## CASO 23



Contexto:

Al inicio de un proyecto de software, el analista de requerimientos necesita graficar y comunicar a los directivos las funciones generales que el sistema ofrecerá a los distintos tipos de usuarios (ej. Administrador, Cliente, Cajero), sin detallar cómo estarán programadas por dentro.



Pregunta:

Según el lenguaje UML, ¿qué diagrama es el indicado para este propósito?



Opciones:

A) Diagrama de Clases

B) Diagrama de Secuencia

C) Diagrama de Estado

D) Diagrama de Casos de Uso



Respuesta correcta: D



Explicación:

El Diagrama de Casos de Uso de UML está diseñado para mostrar las interacciones funcionales externas. Mapea a los "Actores" frente a las acciones globales que pueden realizar en el sistema, siendo altamente comprensible para personal no técnico.



---



## CASO 24



Contexto:

En un corporativo, el departamento de Finanzas y el de Marketing comparten el mismo piso y los mismos switches físicos (Conmutadores). Por seguridad, se requiere que ambos departamentos no puedan comunicarse ni ver sus equipos entre sí a nivel de red.



Pregunta:

¿Qué tecnología de Capa 2 permite fragmentar lógicamente los switches para lograr este aislamiento sin comprar hardware nuevo?



Opciones:

A) VPN

B) NAT

C) VLAN

D) Subneteo IP



Respuesta correcta: C



Explicación:

Las Redes de Área Local Virtuales (VLAN) operan en la Capa 2 del Modelo OSI. Permiten crear dominios de difusión lógicamente aislados dentro de un mismo switch físico, segregando el tráfico como si existieran múltiples switches independientes de hardware.



---



## CASO 25



Contexto:

Un analista debe programar una rutina de ordenamiento que divida constantemente el arreglo original a la mitad en arreglos más pequeños hasta que tengan un solo elemento, para luego recombinarlos de manera ordenada.



Pregunta:

¿Qué algoritmo de ordenamiento y paradigma matemático está aplicando?



Opciones:

A) Bubble Sort - Iterativo

B) Merge Sort - Divide y Vencerás

C) Selection Sort - Búsqueda Exhaustiva

D) Insertion Sort - Backtracking



Respuesta correcta: B



Explicación:

Merge Sort es el ejemplo clásico del paradigma "Divide y Vencerás". Particiona el arreglo a la mitad recursivamente hasta la mínima unidad y luego los "mezcla" ordenadamente, garantizando una complejidad altamente eficiente de O(n log n).



---



## CASO 26



Contexto:

Un automóvil está estructurado en el software de tal manera que, si el objeto "Automóvil" es destruido por el recolector de basura, el objeto "Motor" contenido dentro de él también debe ser destruido inevitablemente, ya que no puede existir sin el automóvil.



Pregunta:

En UML y Programación Orientada a Objetos, ¿qué tipo de relación fuerte describe este escenario?



Opciones:

A) Agregación

B) Herencia

C) Composición

D) Asociación simple



Respuesta correcta: C



Explicación:

La Composición es una relación de pertenencia muy fuerte (representada por un rombo negro en UML). Dicta que la vida del objeto "parte" (Motor) depende estrictamente de la vida del objeto "todo" (Automóvil). Si el todo se destruye, las partes también mueren.



---



## CASO 27



Contexto:

Un administrador de servidores necesita acceder remotamente a la terminal de comandos de un servidor Linux. Quiere asegurarse de que toda la comunicación de texto enviada por internet viaje encriptada.



Pregunta:

¿Qué protocolo y puerto estándar oficial debe utilizar?



Opciones:

A) Telnet - Puerto 23

B) FTP - Puerto 21

C) SSH - Puerto 22

D) HTTP - Puerto 80



Respuesta correcta: C



Explicación:

Secure Shell (SSH) es el protocolo estándar de red que permite acceder de forma encriptada y segura a la terminal de un equipo remoto, y opera por defecto en el puerto 22. Telnet (puerto 23) envía los comandos en texto plano, lo que es un riesgo de seguridad.



---



## CASO 28



Contexto:

El administrador de bases de datos decide crear un índice especial en la tabla "Empleados" bajo la columna de "Fecha de Contratación". Este índice no reordena físicamente las filas de la tabla en el disco duro, sino que crea una estructura secundaria con punteros hacia los datos.



Pregunta:

¿Qué tipo de índice acaba de generar?



Opciones:

A) Índice Agrupado (Clustered Index)

B) Índice No Agrupado (Non-Clustered Index)

C) Índice de Texto Completo

D) Hash Index



Respuesta correcta: B



Explicación:

Un Índice No Agrupado (Non-Clustered) opera de manera análoga al índice al final de un libro: crea una lista externa ordenada que apunta hacia los registros, permitiendo tener múltiples índices en una tabla. El Clustered sí altera el orden físico en disco y solo puede haber uno por tabla (comúnmente la llave primaria).



---



## CASO 29



Contexto:

Un equipo de programación adopta una metodología rigurosa donde el programador está obligado a escribir las pruebas unitarias que van a fallar antes de escribir siquiera una sola línea de código fuente funcional de la aplicación.



Pregunta:

¿Cómo se denomina esta práctica de ingeniería de software?



Opciones:

A) Integración Continua (CI)

B) Desarrollo Dirigido por Pruebas (TDD)

C) Análisis de Código

D) Patrón Modelo Vista Controlador (MVC)



Respuesta correcta: B



Explicación:

El Test-Driven Development (TDD) exige un ciclo corto: Escribir primero una prueba que falla (Red), escribir el código mínimo para hacerla pasar (Green), y luego optimizar el código (Refactor). Garantiza cobertura total de pruebas desde el inicio.



---



## CASO 30



Contexto:

En un sistema operativo moderno, un navegador web abre múltiples pestañas. Para ahorrar recursos, el navegador decide no crear un clon completo de la aplicación por cada pestaña en la RAM, sino crear pequeñas unidades ligeras de ejecución dentro del mismo programa base compartiendo su memoria.



Pregunta:

¿Qué unidades de procesamiento concurrente está instanciando el navegador?



Opciones:

A) Demonios (Daemons)

B) Procesos Padre

C) Procesos Huérfanos

D) Hilos (Threads)



Respuesta correcta: D



Explicación:

Los Hilos (Threads) son la unidad básica de utilización del CPU y forman parte de un proceso más grande. Mientras que los procesos son pesados y tienen memorias aisladas, los hilos dentro de un mismo proceso comparten la misma memoria, haciéndolos ligeros y rápidos.



---



## CASO 31



Contexto:

El equipo de redes evalúa migrar toda la infraestructura corporativa de direcciones IPv4 hacia direcciones IPv6 para soportar la enorme cantidad de dispositivos inteligentes (IoT) previstos en el corporativo.



Pregunta:

¿Qué tamaño en longitud de bits tiene una dirección IPv6 estándar, garantizando espacio prácticamente inagotable?



Opciones:

A) 32 bits

B) 64 bits

C) 128 bits

D) 256 bits



Respuesta correcta: C



Explicación:

Mientras que las antiguas direcciones IPv4 miden 32 bits (limitando el mundo a 4.3 mil millones de IPs), el protocolo IPv6 mide 128 bits de longitud, permitiendo $3.4 \times 10^{38}$ direcciones únicas, resolviendo el problema de agotamiento global.



---



## CASO 32



Contexto:

Un startup está diseñando el backend para un catálogo de productos de e-commerce. Los atributos de los productos varían agresivamente: un celular requiere voltaje y RAM, pero una playera requiere talla y color. El equipo decide usar un motor de base de datos sin esquema rígido que almacena documentos tipo JSON.



Pregunta:

¿A qué categoría de bases de datos pertenece la solución seleccionada?



Opciones:

A) Bases de Datos Relacionales (RDBMS)

B) Bases de Datos Orientadas a Grafos

C) Bases de Datos NoSQL Documentales

D) Bases de Datos de Series 



Respuesta correcta: C



Explicación:

Las bases de datos NoSQL tipo Documental (como MongoDB) almacenan la información en documentos similares a JSON (BSON). Permiten flexibilidad total o "Schemaless", ideal para catálogos donde cada registro necesita campos y estructuras completamente distintas sin forzar nulos.



---



## CASO 33



Contexto:

En un servidor de impresión de oficina, cinco empleados envían documentos para imprimir casi al mismo tiempo. El servidor debe procesar los documentos en el orden exacto en que llegaron, sacando el primer archivo recibido.



Pregunta:

¿Qué estructura de datos es la indicada para administrar esta sala de espera de documentos?



Opciones:

A) Pila (Stack)

B) Cola (Queue)

C) Grafo ponderado

D) Árbol AVL



Respuesta correcta: B



Explicación:

Una Cola opera bajo el principio FIFO (First In, First Out). El primer elemento en ser encolado (el primer empleado que mandó imprimir) será estrictamente el primero en ser atendido y retirado de la fila de impresión.



---



## CASO 34



Contexto:

El arquitecto de software exige separar el código del sistema web: el código HTML/CSS no debe estar mezclado con la de conexión a la base de datos, y los cálculos de negocio deben estar aislados para que otros departamentos puedan modificarlos independientemente.



Pregunta:

¿Qué patrón arquitectónico clásico exige esta separación en tres componentes principales?



Opciones:

A) Patrón Observador

B) Modelo-Vista-Controlador (MVC)

C) Microservicios

D) CQRS



Respuesta correcta: B



Explicación:

El Patrón MVC divide el software en tres áreas: El Modelo (Datos y reglas de negocio), la Vista (Interfaz Gráfica / HTML), y el Controlador (intermediario que recibe peticiones y enlaza a ambos). Facilita el mantenimiento y el código limpio.



---



## CASO 35



Contexto:

Al encender 200 computadoras nuevas en el campus, todas adquieren automáticamente una dirección IP única válida, máscara de subred, puerta de enlace y servidores DNS, sin que los técnicos tengan que configurar cada máquina a mano.



Pregunta:

¿Qué protocolo de red se encargó de asignar esta configuración dinámicamente en broadcast?



Opciones:

A) DNS

B) ARP

C) ICMP

D) DHCP



Respuesta correcta: D



Explicación:

El Protocolo de Configuración Dinámica de Host (DHCP) asigna direcciones IP dinámicas y otros parámetros de configuración de red a los dispositivos a medida que se conectan a la red, evitando conflictos y gestión manual.



---



## CASO 36



Contexto:

En un servidor Linux, el administrador desea que el archivo secreto "claves.txt" solo pueda ser leído y escrito por el dueño del archivo (él mismo), pero nadie más (ni el grupo ni los usuarios externos) debe tener absolutamente ningún acceso.



Pregunta:

¿Qué notación de permisos octal ejecuta este comportamiento al usar el comando `chmod`?



Opciones:

A) 777

B) 644

C) 600

D) 755



Respuesta correcta: C



Explicación:

En permisos Linux (Usuario, Grupo, Otros), el octal 6 equivale a Lectura (4) y Escritura (2). 600 significa que el dueño tiene Lectura/Escritura, mientras que el Grupo (0) y Otros (0) no tienen ningún derecho. Un 777 daría control total al mundo entero.



---



## CASO 37



Contexto:

Para generar los reportes de nómina, el desarrollador decide no enviar las complejas sentencias de `SELECT` masivas desde el código PHP en el servidor web. En su lugar, empaqueta, compila y guarda las consultas SQL directamente dentro del motor de base de datos, llamándolas solo por un nombre corto.



Pregunta:

¿Qué elemento de bases de datos ha creado el desarrollador?



Opciones:

A) Vista Materializada

B) Procedimiento Almacenado (Stored Procedure)

C) Disparador (Trigger)

D) Cursor



Respuesta correcta: B



Explicación:

Un Procedimiento Almacenado es un bloque de código SQL y que se guarda y compila internamente en el servidor de base de datos. Reduce el tráfico de red, abstrae la de negocio y protege contra inyecciones SQL al separar la capa de datos de la capa de aplicación.



---



## CASO 38



Contexto:

El equipo terminó de programar dos módulos independientes: el "Módulo del Carrito" y el "Módulo de Facturación". Las pruebas de ambos pasaron individualmente, pero ahora deben conectarlos y verificar que los datos viajen sin error desde el Carrito hasta el servidor de Facturación.



Pregunta:

¿Qué fase del ciclo de calidad del software (QA) se está ejecutando?



Opciones:

A) Pruebas Unitarias

B) Pruebas de Integración

C) Pruebas de Sistema

D) Pruebas de Aceptación (UAT)



Respuesta correcta: B



Explicación:

Las Pruebas de Integración se enfocan en verificar la interacción e interfaz entre dos o más módulos (o servicios) ya probados unitariamente, garantizando que el flujo de datos entre ellos al conectarse funcione correctamente.



---



## CASO 39



Contexto:

En un laboratorio escolar de 30 computadoras, todas están conectadas mediante un cable UTP a un único Switch central. Si un cable se rompe, solo esa máquina se desconecta. Si el Switch central se apaga, toda la red del salón colapsa.



Pregunta:

¿A qué topología física de red pertenece este diseño?



Opciones:

A) Malla

B) Anillo

C) Bus

D) Estrella



Respuesta correcta: D



Explicación:

En la topología de Estrella, todos los nodos están conectados individualmente a un concentrador central (Switch/Hub). Es fácil de diagnosticar y un cable dañado no afecta al resto, pero el punto central de fallo es crítico.



---



## CASO 40



Contexto:

Un fotógrafo adquiere un servidor de almacenamiento con dos discos duros idénticos. Configura el sistema de arreglos para que todo archivo que se guarde en el Disco 1 se escriba al mismo tiempo y de manera exacta como espejo en el Disco 2, sacrificando la mitad del espacio total a cambio de máxima seguridad.



Pregunta:

¿Qué nivel de arreglo de discos redundantes (RAID) implementó?



Opciones:

A) RAID 0

B) RAID 1

C) RAID 5

D) RAID 10



Respuesta correcta: B



Explicación:

El RAID 1 es conocido como "Espejo" (Mirroring). Los datos se replican en dos discos idénticos. Si un disco muere por falla de hardware, la información sigue viva e intacta en el segundo. (RAID 0 suma los espacios para velocidad, pero no tiene tolerancia a fallos).

\newpage
# Bloque 3
## CASO 41



Contexto:

El administrador de red de una pequeña oficina contrata un servicio de Internet corporativo que le entrega únicamente 1 Dirección IP Pública. En la oficina existen 40 computadoras con IPs privadas. Sorprendentemente, todas logran navegar por Internet al mismo tiempo utilizando la única IP pública disponible.



Pregunta:

¿Qué tecnología de red alojada en el enrutador perimetral permite esta traducción de múltiples IPs privadas a una pública?



Opciones:

A) DHCP

B) DNS

C) NAT

D) VLAN



Respuesta correcta: C



Explicación:

El Network Address Translation (NAT) reescribe las cabeceras de los paquetes salientes, traduciendo múltiples direcciones IP privadas de una red local (LAN) para que naveguen a través de una sola dirección IP pública hacia el exterior (Internet).



---



## CASO 42



Contexto:

Una compañía telefónica necesita conectar 15 ciudades con cable de fibra óptica. El objetivo es que exista una ruta que conecte a todas las ciudades sin formar circuitos cerrados y utilizando la menor cantidad total de cable (costo mínimo de instalación).



Pregunta:

Modelando el problema como un grafo ponderado, ¿qué algoritmo de optimización permite descubrir la red óptima requerida?



Opciones:

A) Búsqueda en Profundidad (DFS)

B) Búsqueda en Anchura (BFS)

C) Algoritmo de Kruskal (Árbol de Expansión Mínima)

D) Algoritmo de Floyd-Warshall



Respuesta correcta: C



Explicación:

El algoritmo de Kruskal (o el de Prim) se utiliza específicamente para hallar el "Árbol de Expansión Mínima" (Minimum Spanning Tree) en un grafo ponderado no dirigido. Conecta todos los vértices sin crear ciclos usando las aristas de menor costo total.



---



## CASO 43



Contexto:

Una consulta SQL agrupa a los empleados por departamento para calcular el salario promedio de cada área utilizando `GROUP BY`. Sin embargo, el analista financiero quiere filtrar y mostrar exclusivamente aquellos departamentos cuyo salario promedio calculado sea mayor a $20,000.



Pregunta:

¿Qué cláusula SQL se debe usar para aplicar este filtro sobre el resultado de la función de agregación?



Opciones:

A) WHERE

B) HAVING

C) ORDER BY

D) LIMIT



Respuesta correcta: B



Explicación:

La cláusula `WHERE` filtra registros individuales antes de que se agrupen. Para filtrar los resultados que provienen de operaciones matemáticas de agregación (como SUM o AVG) sobre grupos formados por `GROUP BY`, el estándar SQL exige el uso obligatorio de la cláusula `HAVING`.



---



## CASO 44



Contexto:

Al final de un ciclo de desarrollo ágil de dos semanas, el equipo se reúne internamente a puertas cerradas. El propósito no es mostrar el producto al cliente, sino discutir honestamente "qué hicieron bien", "qué hicieron mal" y "cómo pueden mejorar como equipo para el próximo ciclo".



Pregunta:

¿Qué ceremonia oficial del framework Scrum están llevando a cabo?



Opciones:

A) Sprint Planning

B) Sprint Review

C) Sprint Retrospective

D) Daily Scrum



Respuesta correcta: C



Explicación:

La Sprint Retrospective (Retrospectiva del Sprint) es la última ceremonia del ciclo y se enfoca en la mejora continua del equipo (procesos y personas). A diferencia de la Sprint Review, donde se presenta el incremento del software terminado al cliente.



---



## CASO 45



Contexto:

Un arquitecto de software define la plantilla `Vehiculo`. Exige que todos los vehículos que la hereden implementen obligatoriamente el método `encender()`, pero además incluye código real ya programado en el método `apagar()` que será compartido por todos los herederos sin reescribirse.



Pregunta:

¿Qué elemento de la Programación Orientada a Objetos debe declarar el arquitecto?



Opciones:

A) Interfaz estricta

B) Clase Abstracta

C) Clase Final

D) Clase Anónima



Respuesta correcta: B



Explicación:

Una Clase Abstracta permite mezclar métodos "abstractos" (que obligan a las clases hijas a programarlos) con métodos ya implementados lógicamente con código que pueden ser heredados directamente. Una Interfaz clásica, en cambio, solo define contratos sin poder contener programada de estado.



---



## CASO 46



Contexto:

Un usuario graba un archivo de video 4K de alta calidad con un tamaño de 6 GB en su computadora. Al intentar copiarlo a su nueva memoria USB (Flash Drive) recién formateada, el sistema Windows bloquea la transferencia marcando un error de "El archivo es demasiado grande para el sistema de archivos de destino", a pesar de tener 32 GB libres.



Pregunta:

¿Con qué antiguo sistema de archivos de Microsoft está formateada la USB, limitando matemáticamente el peso del archivo?



Opciones:

A) NTFS

B) ext4

C) FAT32

D) exFAT



Respuesta correcta: C



Explicación:

El viejo sistema de archivos FAT32 tiene una restricción matemática absoluta que impide guardar un archivo individual que pese más de 4 GB, sin importar cuánto espacio libre quede en el disco duro. Se debe usar NTFS o exFAT para superarla.



---



## CASO 47



Contexto:

En una red corporativa configurada con la dirección 192.168.1.0/24, el administrador necesita enviar un mensaje de alarma de forma simultánea a todas y cada una de las 254 computadoras conectadas en el mismo segmento de red usando un único paquete enviado.



Pregunta:

¿A qué dirección IP matemática de destino debe apuntar el paquete?



Opciones:

A) 192.168.1.1

B) 192.168.1.0

C) 192.168.1.254

D) 192.168.1.255



Respuesta correcta: D



Explicación:

En IPv4, la última dirección IP de cualquier segmento de subred (donde los bits de host son todos 1) siempre es reservada matemáticamente para "Broadcast" (Difusión). Un paquete enviado a esa dirección es replicado por el switch y entregado a todos los nodos.



---



## CASO 48



Contexto:

Un gerente necesita leer reportes que cruzan datos de 5 tablas distintas mediante JOINs masivos y cálculos complejos. Para facilitarle la vida, el desarrollador almacena esa consulta compleja en el motor de base de datos de forma que el gerente solo tenga que ejecutar un `SELECT * FROM ReporteGeneral`, interactuando con ella como si fuera una tabla virtual física.



Pregunta:

¿Qué objeto acaba de crear el desarrollador en la base de datos?



Opciones:

A) Tabla 

B) Disparador (Trigger)

C) Vista SQL (View)

D) Índice de árbol



Respuesta correcta: C



Explicación:

Una Vista (View) es una tabla virtual cuyo contenido se genera mediante una consulta (Query) predefinida cada vez que se accede a ella. Abstrae la complejidad, protege datos ocultando columnas reales y facilita la creación de reportes.



---



## CASO 49



Contexto:

Un sistema de registros hospitalarios contiene 10 millones de historias clínicas almacenadas de forma totalmente desordenada y aleatoria (sin indexación por nombre o ID). Un enfermero necesita buscar un registro por nombre.



Pregunta:

Dada la falta de orden, ¿cuál será obligatoriamente la complejidad de tiempo (Notación Big O) en el peor de los casos al buscar el registro?



Opciones:

A) O(1)

B) O(log n)

C) O(n)

D) O(n^2)



Respuesta correcta: C



Explicación:

Dado que la información está desordenada, no se puede aplicar algoritmos optimizados como Búsqueda Binaria. El procesador estará forzado matemáticamente a realizar una Búsqueda Lineal, revisando registro por registro hasta encontrarlo o agotar la lista, lo cual representa complejidad O(n).



---



## CASO 50



Contexto:

Un programa genera "Enemigos" en un videojuego. Para no llenar el código principal con múltiples y repetitivos `new Orco()`, `new Goblin()` y de validación, se crea una clase central que recibe el parámetro del tipo de enemigo deseado y devuelve automáticamente la instancia del objeto correcta y lista para usar.



Pregunta:

¿Qué patrón de diseño de creación de software clásico se ha implementado?



Opciones:

A) Singleton

B) Factory (Fábrica)

C) Proxy

D) Adapter



Respuesta correcta: B



Explicación:

El patrón de diseño Factory Method abstrae la física de instanciación de objetos (`new`). Se delega la responsabilidad a una clase "Fábrica" que decide y devuelve la instancia del objeto correcto según los parámetros suministrados.



---



## CASO 51



Contexto:

Se diseña un sistema de venta de boletos de cine. Solo queda el último asiento disponible (E-10). Dos clientes hacen clic en comprar en el mismo milisegundo desde distintas computadoras. El Sistema Operativo del servidor atiende dos hilos concurrentes que acceden a la variable global `asientos_restantes` al mismo tiempo, provocando que ambos lo compren exitosamente.



Pregunta:

¿Qué primitiva de sincronización clásica debió implementarse a nivel sistema operativo para evitar esta Condición de Carrera?



Opciones:

A) Memoria Compartida

B) Tuberías (Pipes)

C) Mutex (Semáforo binario)

D) Planificador FCFS



Respuesta correcta: C



Explicación:

Un Mutex (Mutual Exclusion) es un candado utilizado en sistemas concurrentes. Cuando el hilo A entra a la zona crítica de la base de datos para vender el boleto, el Mutex cierra la puerta impidiendo que el hilo B entre a revisar hasta que el hilo A termine.



---



## CASO 52



Contexto:

Un técnico necesita conectar lógicamente dos computadoras en el mismo escritorio, conectando directamente la tarjeta de red de la PC-A con la tarjeta de la PC-B usando un cable físico UTP RJ45, sin pasar por un router o switch intermedio.



Pregunta:

¿Qué tipo de cableado es estrictamente necesario, normativamente hablando, para conectar dos equipos de la misma naturaleza o capa OSI sin autonegociación MDIX?



Opciones:

A) Cable Serial RS-232

B) Cable de Fibra Multimodo

C) Cable Directo (Straight-through)

D) Cable Cruzado (Crossover)



Respuesta correcta: D



Explicación:

Clásicamente, para conectar dos dispositivos del mismo tipo OSI directamente (PC a PC, o Router a Router), los pines de transmisión (TX) deben cruzarse físicamente con los pines de recepción (RX) en el conector opuesto. Esto se logra cableando un extremo con la norma T568A y el otro con la T568B (Cable Cruzado).



---



## CASO 53



Contexto:

Durante un mantenimiento a las 2 a.m., el administrador nota que vaciar la tabla "Auditoria" (5 millones de registros) usando el comando `DELETE FROM Auditoria` tarda horas. �0 l recuerda que existe un comando destructor que ignora el paso fila por fila, vaciando todo de un golpe destructivo.



Pregunta:

¿Qué comando DDL SQL es el adecuado para vaciar la tabla instantáneamente y de forma irreversible?



Opciones:

A) DROP TABLE Auditoria

B) FORMAT Auditoria

C) TRUNCATE TABLE Auditoria

D) ERASE Auditoria



Respuesta correcta: C



Explicación:

El comando DELETE es un proceso DML que borra fila por fila y guarda registros en el log de transacciones por si hay Rollback. TRUNCATE es un DDL estructural; destruye y recrea la estructura de la tabla al instante, eliminando los datos sin generar registro lento, haciéndolo increíblemente rápido.



---



## CASO 54



Contexto:

Un programador junior trabajando con el sistema Git escribe su código, guarda el archivo, e ingresa por terminal `git add.` seguido de un exitoso `git commit -m "Se arregló login"`. Sin embargo, el jefe de proyecto revisa el repositorio central corporativo remoto en GitHub y no ve el código del junior.



Pregunta:

¿Por qué el código aún no está en el servidor oficial de GitHub?



Opciones:

A) El comando commit sufrió de conflictos de fusión locales (Merge Conflicts).

B) El comando commit únicamente guarda los cambios localmente en el disco duro del programador.

C) El servidor principal de GitHub estaba en modo solo-lectura temporalmente.

D) Olvidó ejecutar un git pull antes de hacer el commit.



Respuesta correcta: B



Explicación:

A diferencia de sistemas antiguos centralizados (SVN), Git es distribuido. Un `commit` sella oficialmente los cambios de versión de forma estricta, pero únicamente dentro de la base de datos local de la computadora del programador. Obligatoriamente falta el comando `git push` para enviarlos por red al servidor central.



---



## CASO 55



Contexto:

Se tiene un Árbol Binario de Búsqueda (BST) poblado con los números [8, 3, 1, 6, 10, 14]. El profesor exige aplicar un algoritmo de recorrido clásico de profundidad que, matemáticamente, imprima como resultado la secuencia estrictamente ordenada de menor a mayor (1, 3, 6, 8, 10, 14).



Pregunta:

¿Qué método de recorrido de árboles produce inevitablemente un arreglo numéricamente ordenado en un Árbol Binario de Búsqueda?



Opciones:

A) Preorden (Pre-order)

B) Inorden (In-order)

C) Postorden (Post-order)

D) Nivel por Nivel (Anchura)



Respuesta correcta: B



Explicación:

El recorrido Inorden transita por el árbol procesando primero el subárbol izquierdo (nodos más pequeños), luego la raíz, y finalmente el subárbol derecho (nodos más grandes). Si se le aplica este recorrido a cualquier Árbol Binario de Búsqueda, el resultado siempre será un arreglo ordenado ascendentemente.



---



## CASO 56



Contexto:

En la programación de una calculadora orientada a objetos en Java, el desarrollador crea el método `sumar(int a, int b)`. En la misma clase, para acomodar a los decimales, declara otro método con el nombre idéntico `sumar(double a, double b)`. El compilador de lenguaje lo acepta sin marcar ningún error o de duplicidad.



Pregunta:

¿Qué técnica de la POO se ha aplicado en este escenario?



Opciones:

A) Sobreescritura de Métodos (Overriding)

B) Sobrecarga de Métodos (Overloading)

C) Abstracción Paramétrica

D) Herencia Múltiple 



Respuesta correcta: B



Explicación:

La Sobrecarga de Métodos (Overloading) permite definir múltiples métodos con exactamente el mismo nombre dentro de una misma clase, con la estricta condición de que la cantidad o el tipo de sus parámetros (las firmas del método) sean diferentes para que el compilador sepa a cuál invocar.



---



## CASO 57



Contexto:

Un analista de centro de control (NOC) necesita verificar rápidamente si el servidor de nóminas de la sucursal de Mérida está encendido y tiene una tarjeta de red local viva. Para ello, ejecuta desde Windows el comando `ping 192.168.10.5` para analizar los paquetes devueltos.



Pregunta:

¿Qué protocolo de red en la Capa de Red (OSI 3) es la columna vertebral que hace funcionar la comunicación de diagnóstico del comando "ping"?



Opciones:

A) ARP (Address Resolution Protocol)

B) SNMP (Simple Network Management Protocol)

C) TCP (Transmission Control Protocol)

D) ICMP (Internet Control Message Protocol)



Respuesta correcta: D



Explicación:

ICMP es el protocolo core utilizado en redes de capa 3 para transmitir mensajes de error, información de diagnóstico y control (como respuestas de "Host Inalcanzable" o "Tiempo de espera superado"). La herramienta "ping" es simplemente una interfaz visual que envía mensajes "Echo Request" y "Echo Reply" nativos de ICMP.



---



## CASO 58



Contexto:

Durante una transacción SQL compleja, el motor de base de datos activa un mecanismo de seguridad para impedir que otros usuarios alteren temporalmente la fila número 800 de la tabla de facturación que está siendo procesada, pero permite que los demás usuarios sigan leyendo o escribiendo el resto de las facturas libremente en la tabla.



Pregunta:

¿Qué nivel de control de concurrencia y aislamiento relacional ha aplicado el motor de bases de datos para optimizar recursos?



Opciones:

A) Bloqueo de Nivel de Tabla (Table-level Lock)

B) Bloqueo de Nivel de Fila (Row-level Lock)

C) Bloqueo de Página (Page-level Lock)

D) Exclusión Mutua Global (Global Mutex)



Respuesta correcta: B



Explicación:

El "Bloqueo de Nivel de Fila" (Row-level Lock) es el grano más fino de control de concurrencia en bases de datos. Congela estrictamente la celda de memoria de un solo registro individual (fila), permitiendo que la tabla en general siga sirviendo transacciones concurrentes a miles de usuarios sin estancarse.



---



## CASO 59



Contexto:

El "Dueño del Producto" (Product Owner) redacta el siguiente requerimiento en una tarjeta ágil para entregársela a los programadores del Sprint 1: *"Como cliente registrado de Amazon, quiero poder añadir productos a una lista de deseos, para así guardarlos y comprarlos el día de quincena."*



Pregunta:

¿Cómo se denomina formalmente este formato estructurado de requerimiento utilizado en la metodología Scrum?



Opciones:

A) Diagrama de Secuencia Ágil

B) Caso de Uso del Negocio

C) Tarea de Refactorización Técnica

D) Historia de Usuario (User Story)



Respuesta correcta: D



Explicación:

La Historia de Usuario es una explicación funcional de una característica de software escrita desde la perspectiva natural del usuario final. Suele obedecer al modelo estricto de: "Como [rol], quiero [objetivo/deseo], para poder [beneficio/razón]". Se estima y se evalúa en "Puntos de Historia".



---



## CASO 60



Contexto:

Un servidor en Linux está ejecutando una enorme base de datos en memoria (Redis) que de pronto agota por completo los Gigabytes físicos de la RAM y el espacio virtual (Swap). Sin previo aviso, el núcleo Linux "asesina" abruptamente uno de los procesos del motor Redis para evitar un pánico crítico total y colapso del hardware.



Pregunta:

¿Qué demonio o mecanismo nativo del kernel de Linux interviene como "último recurso" cortando cabezas en situaciones de agotamiento severo de memoria?



Opciones:

A) El Recolector de Basura (Garbage Collector)

B) El demonio Cron

C) El proceso Init/Systemd

D) El OOM Killer (Out Of Memory Killer)



Respuesta correcta: D



Explicación:

El OOM Killer es una rutina extrema del kernel de Linux. Cuando el sistema agota por completo la RAM física y la virtual, en lugar de permitir que la máquina entera se congele o bloquee fatalmente, este mecanismo busca heurísticamente el proceso más pesado e ineficiente y lo termina forzosamente (Kill -9) para que el sistema respire y sobreviva.

\newpage
# Bloque 4
## CASO 61



Contexto:

En una red corporativa muy grande, el administrador descubre que configurar manualmente las rutas en los enrutadores es imposible tras agregar 50 oficinas nuevas. Decide implementar un protocolo que permita a los enrutadores aprender automáticamente la topología intercambiando sus tablas de métricas basándose en el estado de los enlaces y la velocidad física del cable.



Pregunta:

¿Qué protocolo de enrutamiento dinámico interno, basado en el algoritmo de Dijkstra, es el estándar más robusto para este propósito?



Opciones:

A) RIP (Routing Information Protocol)

B) BGP (Border Gateway Protocol)

C) OSPF (Open Shortest Path First)

D) STP (Spanning Tree Protocol)



Respuesta correcta: C



Explicación:

OSPF es el protocolo de enrutamiento interior de estado de enlace dominante a nivel corporativo. Utiliza el algoritmo del "camino más corto" (Dijkstra) considerando el costo y el ancho de banda del enlace para tomar decisiones de ruteo, a diferencia del obsoleto RIP que solo cuenta el número de saltos.



---



## CASO 62



Contexto:

En la arquitectura de un sistema mundial de redes sociales masivas alojado en múltiples continentes, el sistema de bases de datos pierde conectividad de red entre Europa y América. Los arquitectos asumen que pueden permitir que el usuario europeo lea datos un poco atrasados (desactualizados), pero es imperativo que los servidores no se caigan y que toleren la ruptura del cable transatlántico.



Pregunta:

Según el Teorema CAP, ¿qué dos aristas matemáticas está eligiendo el negocio?



Opciones:

A) Consistencia y Disponibilidad (CA)

B) Disponibilidad y Tolerancia a Particiones (AP)

C) Consistencia y Tolerancia a Particiones (CP)

D) Tolerancia a Particiones y Escalabilidad Vertical



Respuesta correcta: B



Explicación:

El Teorema CAP para bases de datos distribuidas establece que solo puedes elegir 2 de 3 garantías (Consistencia, Disponibilidad o Partición). Al asumir que un cable se rompió (Partición) y al priorizar que el usuario vea datos aunque no sean los más recientes de último milisegundo (Disponibilidad en vez de Consistencia "Fuerte"), la elección es AP.



---



## CASO 63



Contexto:

Un procesador físico de 8 núcleos está colapsado corriendo 5,000 hilos (threads) activos de un servidor web monolítico en el mismo milisegundo. La CPU dedica más tiempo a guardar el estado de un hilo actual en registros de memoria RAM, sacarlo, cargar el estado del siguiente y repetir, que a procesar los cálculos del servidor web.



Pregunta:

¿Cómo se denomina este costoso proceso del Sistema Operativo a nivel de arquitectura del procesador?



Opciones:

A) Algoritmo FCFS (First Come First Serve)

B) Sobrepaginación de Memoria ROM

C) Cambio de Contexto (Context Switching)

D) Ejecución Multihilo Simétrica (SMT)



Respuesta correcta: C



Explicación:

El Cambio de Contexto (Context Switch) es el proceso mediante el cual el Sistema Operativo suspende un hilo o proceso en CPU, almacena su estado interno, e introduce otro. Cuando el número de hilos vivos es ridículamente grande para los núcleos físicos, el costo por cambio de contexto ahoga el rendimiento real.



---



## CASO 64



Contexto:

A punto de lanzar a producción, el equipo detecta que el módulo de control de usuarios tiene código sucio, duplicado y carece del patrón MVC que acordaron. El gerente decide lanzarlo "así como está" para cumplir con la fecha del contrato, prometiendo que el código se reparará en la siguiente fase tras recibir los fondos.



Pregunta:

En términos de la Ingeniería de Software ágil, ¿qué concepto de riesgo acumulativo ha incurrido el equipo?



Opciones:

A) Refactorización prematura

B) Defectos de Pruebas Unitarias

C) Inyección de Dependencias

D) Deuda Técnica



Respuesta correcta: D



Explicación:

La Deuda Técnica es el "interés de código" que contrae un proyecto cuando se eligen soluciones fáciles, rápidas y sucias sobre metodologías limpias (best practices) por restricciones de tiempo. Si no se "paga" (refactorizando en sprints futuros), asfixiará y ralentizará desarrollos nuevos por la alta fragilidad del código.



---



## CASO 65



Contexto:

El programador de una estructura "Tabla Hash (Hash Map)" descubre que, tras ingresar 1 millón de registros, su compleja función matemática ha asignado a varios registros completamente distintos (Ej. "Roberto" y "Rubén") el mismo idéntico índice de cajón de memoria (Bucket 501), causando que el sistema ralentice sus búsquedas al amontonar registros en la misma zona.



Pregunta:

¿Qué anomalía matemática estructural acaba de sufrir su algoritmo de diccionario?



Opciones:

A) Exceso de Recursividad

B) Colisión Hash (Hash Collision)

C) Pila Desbordada (Stack Overflow)

D) Fragmentación de B-Tree



Respuesta correcta: B



Explicación:

Una Colisión Hash ocurre inevitablemente cuando una función algorítmica resume valores diferentes (Inputs) proyectándolos hacia el mismo valor de salida o llave matemática (Output/Índice). Un buen diseño de Tabla Hash debe implementar mitigaciones fuertes (como Listas Enlazadas en el cajón de bucket) para sobrevivir a las colisiones.



---



## CASO 66



Contexto:

Se audita la calidad del diseño de programación Orientada a Objetos de un banco. Se encuentra que la clase `CajaRegistradora` llama directamente y de forma dura a métodos internos protegidos de la clase `Inventario`. Además, si el programador cambia el tipo de variable en `Inventario`, la `CajaRegistradora` explota inmediatamente y ya no compila.



Pregunta:

¿Qué principio cualitativo de la POO se ha violado gravemente en este diseño de arquitectura sucia?



Opciones:

A) Alta Cohesión

B) Alto Acoplamiento (Alta interdependencia)

C) Baja Herencia

D) Alta Encapsulación



Respuesta correcta: B



Explicación:

El diseño de software dicta: "Alta cohesión, Bajo acoplamiento". Cuando una clase asume, depende y conoce los entresijos internos, variables rígidas o métodos fuertes de otra clase, se dice que existe un *Alto Acoplamiento*. Esto es veneno en arquitecturas porque el código se vuelve como espagueti: mover una pieza rompe todo a su alrededor.



---



## CASO 67



Contexto:

Una empresa compra dos proveedores de Internet diferentes (ISP) en caso de que uno se caiga (redundancia extrema). Para que su centro de datos en la red corporativa negocie inteligentemente las rutas del tráfico global (Internet exterior mundial) hacia ambos ISPs, debe anunciar sus IPs dinámicas conectando su router corporativo maestro directamente con los routers de los proveedores de internet.



Pregunta:

¿Qué protocolo colosal de enrutamiento externo (Exterior Gateway Protocol) es el único capaz de sostener y enrutar las tablas de internet a nivel mundial?



Opciones:

A) OSPF (Open Shortest Path First)

B) BGP (Border Gateway Protocol)

C) EIGRP

D) RIPv2



Respuesta correcta: B



Explicación:

BGP es conocido como "El Protocolo de Internet" a nivel macro. Mientras OSPF y EIGRP son geniales dentro del edificio corporativo (IGP), BGP se utiliza exclusivamente para intercambiar información de encaminamiento de frontera entre el corporativo y los verdaderos proveedores o entre países (Sistemas Autónomos).



---



## CASO 68



Contexto:

En un portal de compras, el backend es escrito en Node.js operando sobre MongoDB (Una base de datos documental). El atacante entra al formulario de acceso de la página y en la casilla del correo, en lugar de ingresar "texto plano", inyecta maliciosamente un objeto JSON avanzado como `{"$gt": ""}` logrando que el backend procese el objeto y bypassée el formulario exitosamente como si la contraseña existiera.



Pregunta:

¿Qué tipo de ataque web moderno acaba de ocurrir ante este descuido del servidor?



Opciones:

A) Inyección SQL Clásica Blind ()

B) Ataque de Fuerza Bruta Local

C) Inyección NoSQL

D) Cross-Site Scripting (XSS)



Respuesta correcta: C



Explicación:

Aunque las bases MongoDB no son relacionales ni usan "SELECT/WHERE" y son inmunes a Inyección SQL, sufren la letal "Inyección NoSQL". Si el código de la API no valida fuertemente las entradas (sanitización) y permite que un usuario inserte JSON malicioso que actúe como operador (Ej. Operador Mayor Que `$gt`), el sistema NoSQL evaluará la condicional siempre como Verdadera engañando la del login.



---



## CASO 69



Contexto:

Un servidor Linux de desarrollo marca el error fatal de "Disco lleno" impidiendo subir fotos. El programador asustado ejecuta el comando `df -h` y la terminal revela algo absurdo: El disco duro principal de 1 Terabyte tiene todavía 800 Gigabytes completamente libres. El programador intenta crear un archivo vacío `.txt` y Linux le niega la acción.



Pregunta:

¿Qué límite estructural interno de la tabla de ext4 ha llegado secretamente al 100% de agotamiento asfixiando al servidor aunque tenga mucho espacio en disco duro?



Opciones:

A) Exhaustion de la RAM Swap

B) Agotamiento excesivo de Inodos (Inodes Exhaustion)

C) Desbaste sectorial del RAID

D) Límite de permisos del usuario Root



Respuesta correcta: B



Explicación:

En Linux, el espacio de almacenamiento real y la libreta de direcciones física (Inodos) corren por separado. Un inodo es el registro administrativo (tamaño, tipo, bloque) de 1 archivo. Si el programador web crea millones de archivos minúsculos (de 1KB o vacíos), los 800GB sobrarán, pero el contador del directorio se saturará impidiendo lógicamente que Linux liste un archivo nuevo.



---



## CASO 70



Contexto:

En una revisión de código en Java, encuentras la clase masiva `FacturaVentas`. Dicha clase calcula el subtotal, suma el IVA, dibuja la interfaz gráfica de la tabla, conecta con el puerto de la impresora térmica e inserta el registro final en PostgreSQL.



Pregunta:

Según los pilares de diseño limpio arquitectónico "SOLID", ¿qué principio capital se ha roto de forma rotunda en este código?



Opciones:

A) Liskov Substitution Principle (Sustitución de Liskov)

B) Interface Segregation Principle (Segregación de Interfaces)

C) Dependency Inversion Principle (Inversión de Dependencias)

D) Single Responsibility Principle (Principio de Responsabilidad �anica)



Respuesta correcta: D



Explicación:

La 'S' de SOLID establece que una clase de software "solo debe tener una única, clara y atómica razón para cambiar y para existir". Al agrupar finanzas (matemáticas), vistas (GUI) y redes (impresión/BD) en una clase "Clase Dios (God Object)", el diseño es caótico e inmanejable.



---



## CASO 71



Contexto:

Se desarrolla un algoritmo que toma una lista de correos electrónicos y busca correos duplicados. El programador diseña la solución creando un bucle `for` que itera todos los registros, y dentro de ese bucle anida ciegamente otro bucle `for` idéntico que escanea nuevamente toda la lista completa desde cero.



Pregunta:

Analíticamente hablando, ¿a qué nivel de complejidad y degradación de rendimiento matemática pertenece este diseño algorítmico?



Opciones:

A) Lineal: O(n)

B) Logarítmica: O(log n)

C) Cuadrática: O(n^2)

D) : O(1)



Respuesta correcta: C



Explicación:

Un ciclo que itera "n" veces (dependiendo del tamaño de los datos) equivale a complejidad lineal O(n). Si el desarrollador encierra un bucle dependiente del mismo tamaño de datos dentro del primer bucle, el algoritmo forzosamente tendrá que realizar el cálculo cruzado completo ($n \times n$), degradando exponencialmente el rendimiento a O(n²), lo que crasheará el CPU si ingresan cientos de miles de registros.



---



## CASO 72



Contexto:

En el desarrollo de un Backend con el framework Spring Boot, un arquitecto decide que ninguna clase debe instanciar y controlar manualmente conexiones de base de datos usando la orden nativa e inflexible `new ConexionBD()`. En su lugar, el Framework inyecta o regala de forma mágica la instancia ya pre-configurada directamente en los constructores de las clases a medida que se inicie la aplicación.



Pregunta:

¿Qué patrón avanzado de diseño es este, vital en frameworks como Angular, Spring o Laravel?



Opciones:

A) Patrón Observador 

B) Inyección de Dependencias (Dependency Injection / Inversion of Control)

C) Decorador Dinámico Abstracto

D) Adaptador Funcional



Respuesta correcta: B



Explicación:

La Inyección de Dependencias quita la responsabilidad a la clase de tener que construir manualmente sus componentes pesados. Facilita enormemente las pruebas automáticas (Mocks), el mantenimiento modular y reduce drásticamente el acoplamiento al aplicar la Inversión de Control.



---



## CASO 73



Contexto:

Al dar la inducción de redes al personal nuevo, el arquitecto de redes omite el Modelo OSI de siete capas argumentando que, para fines estandarizados, pragmáticos y reales del desarrollo moderno de internet global, solo es necesario basarse en el modelo condensado y consolidado.



Pregunta:

¿Qué modelo de estandarización condensado de cuatro capas en la industria rige realmente la arquitectura que forma el internet?



Opciones:

A) El modelo Token-Ring Macro

B) El modelo ATM (Asynchronous Transfer Mode)

C) El modelo TCP/IP

D) El modelo IPv6 Subnet Layering



Respuesta correcta: C



Explicación:

El Modelo OSI (con sus 7 teóricas e inmaculadas capas) es el estándar educativo fundamental. Sin embargo, en implementaciones reales, ingenieriles y prácticas del protocolo dominante del mundo de la nube global, el Modelo TCP/IP condensa estas funciones en cuatro robustas capas de trabajo: Aplicación, Transporte, Internet y Acceso a Red.



---



## CASO 74



Contexto:

El volumen masivo de datos del corporativo ha saturado al disco físico del nodo maestro central MySQL, asfixiando por completo su lectura y escritura vertical. El CTO ordena fragmentar y "Partir o Cuchillear" físicamente los datos, de modo que los registros de los clientes de América se alojen y residan en un servidor A, y los de Europa en un servidor B por separado.



Pregunta:

¿Qué técnica arquitectónica de particionamiento distribuido (Escalabilidad Horizontal de datos) están instaurando?



Opciones:

A) Clúster Híbrido

B) Replicación Maestro-Esclavo

C) Data Sharding (Fragmentación Horizontal de Base de Datos)

D) Caché Distribuido (Redis Layers)



Respuesta correcta: C



Explicación:

El "Sharding" o "Fragmentación Horizontal" consiste en tomar una tabla descomunal con miles de millones de filas, dividirla matemáticamente por piezas geográficas, llaves o alfabéticamente (Shards/Fragmentos), y alojar cada pedazo físico de disco en distintos servidores o clústeres separados. No debe confundirse con Replicación, donde todos los servidores guardan un clon del 100% de la misma data completa (redundancia ineficiente en disco).



---



## CASO 75



Contexto:

Un servidor que administra las grabaciones bancarias pierde el suministro de energía abruptamente. Al encender, un mecanismo invisible de tolerancia a fallos a nivel partición nativa recupera rápidamente los metadatos de los videos que estaban siendo copiados, asegurándose de que los bytes interrumpidos se corrijan y cancelen para no dejar la tabla del archivo "sucia".



Pregunta:

¿Cómo se le denomina técnicamente a esta funcionalidad vital propia de sistemas de archivo avanzados y sólidos (como NTFS de Windows o ext4 de Linux)?



Opciones:

A) Sistema de Archivos FAT Nativo Exclusivo

B) Journaling (Sistema de Archivos con Registro / Bitácora Oculta)

C) Indexación Profunda Externa

D) Particionamiento en espejo Swap (Swap Mirroring)



Respuesta correcta: B



Explicación:

El "Journaling" es una subrutina oculta que guarda metadatos (un diario atómico minucioso) de lo que el sistema está a punto de escribir en el disco justo antes de iniciar la escritura pesada. En caso de corte eléctrico inesperado en milisegundos, el OS lee ese pequeño diario, determina qué escritura quedó rota a medias, revierte el caos y devuelve la estabilidad a la base de archivo.



---



## CASO 76



Contexto:

Varios programadores envían código simultáneamente al repositorio central todo el día. Inmediatamente y de forma automatizada, en la nube arranca un bot que compila todo, descarga dependencias NPM y corre la batería de pruebas unitarias sobre el código fusionado por cada envío, emitiendo una alarma si alguien rompió el sistema remotamente.



Pregunta:

¿Qué práctica de ciclo de DevOps asegura este ensamblaje ágil,, automatizado y seguro de calidad?



Opciones:

A) Infraestructura como Código (IaC)

B) Entregas Continuas de Aceptación (UAT)

C) Integración Continua (CI / Continuous Integration)

D) Refactorización en Pipeline Físico



Respuesta correcta: C



Explicación:

La Integración Continua (CI) es la médula del DevOps. En lugar de fusionar y ensamblar los códigos de 20 desarrolladores a final del mes y sufrir choques incomprensibles (Integration Hell), el Pipeline (GitHub Actions, Jenkins) valida automáticamente, mediante la compilación y pruebas, cada diminuto código (Commit) que se sube en vivo.



---



## CASO 77



Contexto:

Se desarrolla un sistema de mensajería al estilo Instagram. El programador modela la información usando Grafos Matemáticos, argumentando que la base de la plataforma es "Si el Usuario A decide seguir y suscribirse al Usuario B, no implica ni forza para nada que el Usuario B decida seguir al Usuario A de regreso".



Pregunta:

Por su característica restrictiva relacional, ¿qué tipo de modelo de Grafo describe la programación de estos seguidores?



Opciones:

A) Grafo Bipartito No Conexo Absoluto

B) Grafo Completo Total (Mesh Fuerte)

C) Grafo No Dirigido con pesos nulos

D) Grafo Dirigido (Digrafo / Flechas apuntadas unidireccionales)



Respuesta correcta: D



Explicación:

Las relaciones de Facebook ("Amistad bidireccional forzosa") operan bajo un Grafo No Dirigido, donde la arista corre en ambas vías siempre y une estáticamente a A y B. Instagram y Twitter operan como "Grafos Dirigidos", cuyas relaciones son flechas (aristas dirigidas unidireccionales). "A sigue a B" es independiente de que "B siga a A".



---



## CASO 78



Contexto:

El programador Senior de criptografía crea una clase Java/C# llamada `GeneradorDeLlavesBancarias`. Para evitar brechas futuras de seguridad, sella explícita y contundentemente la arquitectura prohibiendo estructuralmente que cualquier desarrollador logre crear, compilar o inventar una nueva clase "hija" derivada basándose en esta mediante el uso del principio de herencia.



Pregunta:

¿Qué modificador de acceso o declaración protectora implementó?



Opciones:

A) Clase Abstracta (Abstract) 

B) Clase Local Privada (Private Static Local)

C) Clase Final (Final o Sealed)

D) Clase Virtual (Virtual Async Class)



Respuesta correcta: C



Explicación:

La palabra reservada `final` en Java (o `sealed` en C#) se aplica a una clase superior para "cortar el árbol genealógico" de raíz, impidiendo absolutamente que pueda extenderse y generar herencia, garantizando la inviolabilidad del diseño central y eliminando anulaciones o falsificaciones polimórficas de sus métodos sensitivos de negocio.



---



## CASO 79



Contexto:

El equipo IT reemplaza los equipos de transmisión del corporativo. Deciden inhabilitar por completo el viejo estándar Wi-Fi casero corporativo porque utilizaba un apretón de manos débil de 4 vías (Four-Way Handshake) altamente susceptible a ataques de fuerza bruta en diccionarios si era capturado a distancia por un hacker con una antena externa y tarjeta modo monitor (Aircrack).



Pregunta:

¿A qué antiguo estándar y vulnerabilidad de ciberseguridad inalámbrica mundial le están diciendo adiós para dar la bienvenida a infraestructuras seguras Enterprise o de Criptografía de Intercambio Equivalente a Pares limpios?



Opciones:

A) El estándar de protección WPA3 (SAE) de ruteo

B) La vulnerabilidad estructural del modelo PSK y al estándar WPA2

C) Criptografía MAC Local Filtering Básico

D) Autenticaciones Biométricas SSH



Respuesta correcta: B



Explicación:

El viejo WPA2-PSK estuvo plagado de debilidades de Fuerza Bruta offline al permitir el espionaje y robo a del archivo Handshake inicial. Su sucesor, WPA3, introduce el modelo criptográfico SAE (Simultaneous Authentication of Equals) eliminando el handshake del diccionario, impidiendo los robos fuera de línea, obligando a los hackers a intentos manuales que son penalizados con latencia.



---



## CASO 80



Contexto:

El administrador planea los respaldos mundiales de una base de datos pesada. Los domingos hace un respaldo `Full` (Completo) a las 00:00. El lunes hace una copia pequeña salvando y capturando *exclusivamente y de forma estricta única* los cambios ocurridos en las últimas 24 horas después de la copia del domingo completo. El martes toma una nueva foto guardando *únicamente* los bytes sucios insertados desde la copia mínima del lunes inmediato.



Pregunta:

¿Qué esquema restrictivo de ciclo de respaldo logarítmico está aplicando en la industria SysAdmin?



Opciones:

A) Respaldo Diferencial

B) Respaldo Completo Rotativo

C) Respaldo de Imagen Dinámica 

D) Respaldo Incremental



Respuesta correcta: D



Explicación:

El Respaldo Incremental ahorra un masivo e inmenso espacio en disco duro, ya que únicamente toma y clona la "diferencia" matemática respecto al último respaldo de cualquier tipo en la cadena más inmediata. (Ojo: El Respaldo "Diferencial", a diferencia del incremental, es torpe pero seguro y pesado: graba y suma los cambios ocurridos estrictamente siempre comparándolos en peso respecto al gran Full dominical perimetral nativo).

\newpage
# Bloque 5
## CASO 81



Contexto:

El equipo modela una base de datos escolar. Se determinan dos entidades: "Estudiantes" y "Clases". Un estudiante puede inscribirse en muchas clases y una clase puede contener muchos estudiantes matriculados. El ingeniero novato une ambas tablas directamente con una sola Llave Foránea.



Pregunta:

¿Por qué el modelo del ingeniero fallará estructuralmente y qué elemento relacional es obligatorio crear?



Opciones:

A) Fallará por redundancia transitiva; requiere desnormalizar en Primera Forma Normal.

B) La relación Muchos a Muchos (M:N) es matemáticamente imposible de representar con una simple Llave Foránea directa entre dos tablas. Obliga a construir una "Tabla Intermedia" o de intersección (ej. "Inscripciones") que contenga ambas llaves primarias.

C) El motor SQL bloqueará la tabla; requiere usar disparadores (Triggers).

D) Fallará porque no cumple con la restricción de integridad de dominio unívoco de Boyce-Codd.



Respuesta correcta: B



Explicación:

En bases de datos relacionales, una relación M:N no se puede almacenar con llaves foráneas entre dos entidades, ya que se necesitaría un arreglo dinámico en cada celda, violando la 1FN. La regla de oro exige "romper" la relación M:N mediante una tercera tabla pivote o asociativa que mapee a ambos elementos en relaciones de 1:N.



---



## CASO 82



Contexto:

El gerente del corporativo exige que todos los empleados puedan navegar por internet, pero desea bloquear el acceso a sitios de redes sociales. Además, quiere que las páginas de uso diario (como portales de noticias) se almacenen en una memoria central para ahorrar ancho de banda al corporativo.



Pregunta:

¿Qué dispositivo de red o componente de infraestructura es el indicado para cumplir ambos objetivos funcionales?



Opciones:

A) Servidor Proxy Perimetral

B) Enrutador de Borde BGP

C) Switch de Capa 2

D) Balanceador de Carga



Respuesta correcta: A



Explicación:

Un servidor Proxy actúa como un intermediario o portero a nivel de la Capa de Aplicación. No solo filtra y bloquea dominios específicos (control de acceso web), sino que su función más célebre es almacenar en caché las páginas visitadas por los usuarios, acelerando las respuestas de red locales y ahorrando el ancho de banda del ISP externo.



---



## CASO 83



Contexto:

Un centro de datos instala software de virtualización. En lugar de instalar Windows o Linux como sistema principal y luego cargar máquinas virtuales dentro de él, el administrador formatea los discos duros nativos en blanco e instala VMWare ESXi directamente sobre el procesador y hardware del servidor.



Pregunta:

¿Qué tipo de arquitectura de virtualización robusta está implementando el centro de datos?



Opciones:

A) Hypervisor Tipo 2 (Hosted)

B) Contenedores Dockerizados

C) Hypervisor Tipo 1 (Bare-Metal)

D) Virtualización de Sistema Operativo Emulado



Respuesta correcta: C



Explicación:

El Hypervisor Tipo 1, también llamado "Bare-Metal" (Metal Descubierto), es el rey de la virtualización corporativa. Se instala directamente sobre el hardware físico del servidor sin depender de un sistema operativo subyacente. Esto elimina a los intermediarios pesados, logrando una eficiencia de procesador abrumadora en comparación con el Tipo 2 (VirtualBox/VMWare Workstation) que corre como una aplicación más sobre Windows.



---



## CASO 84



Contexto:

Durante la etapa de diseño de una aplicación, el programador copia y pega un bloque de código matemático 15 veces a lo largo del sistema porque "era más rápido". Aunque el programa funciona, años después, al intentar cambiar una variable en la fórmula, el equipo tarda semanas persiguiendo errores y fallas inexplicables a lo largo del sistema entero.



Pregunta:

¿Qué actividad de ingeniería ágil no se realizó para curar este problema cuando el código aún era manejable?



Opciones:

A) Pruebas de Estrés Continuo (Load Testing)

B) Análisis de Requerimientos de Casos de Uso

C) Refactorización (Refactoring) para saldar la Deuda Técnica

D) Programación Extrema (Pair Programming)



Respuesta correcta: C



Explicación:

La Deuda Técnica se genera cuando el equipo elige atajos rápidos (copiar y pegar) en lugar de soluciones arquitectónicas limpias. La "Refactorización" es la tarea obligatoria de ingeniería para pagar esta deuda: consiste en limpiar, reestructurar y optimizar el código fuente interno sin alterar en absoluto su funcionalidad visual externa (ej. extraer esos 15 bloques duplicados en una sola función central).



---



## CASO 85



Contexto:

Un árbol binario de búsqueda recibe datos numéricos ordenados del 1 al 10,000 en secuencia. El desarrollador nota que las consultas son extremadamente lentas, como si no hubiera ningún árbol programado, porque todos los nodos se insertaron hacia un solo lado formando una enorme línea recta.



Pregunta:

¿Qué tipo de estructura de árbol especializada debió implementar para impedir esta degradación algorítmica?



Opciones:

A) Árbol de Segmentos Unidireccional

B) Árbol N-Ario

C) Árbol AVL o Árbol Rojo-Negro (Árboles Auto-balanceables)

D) Grafo Cíclico Dirigido



Respuesta correcta: C



Explicación:

Un Árbol Binario tradicional se degrada a una vil lista enlazada (Complejidad O(n)) si se le introducen datos ya ordenados secuencialmente. Los Árboles AVL (o Red-Black Trees) detectan este desbalance peligroso durante las inserciones y realizan "Rotaciones" matemáticas automáticas para mantenerse simétricos y chaparros, garantizando siempre su extrema velocidad de O(log n).



---



## CASO 86



Contexto:

En un sistema orientado a objetos, el arquitecto define un método `calcularArea()` en la clase `Poligono`. Luego, las clases derivadas `Triangulo` y `Cuadrado` definen su propia implementación matemática y fórmula de esa misma función, invalidando la del padre pero conservando el mismo nombre del método en todo el sistema.



Pregunta:

¿Qué pilar o característica de la POO ha aplicado el arquitecto?



Opciones:

A) Sobrecarga de Métodos

B) Ocultamiento de Variables

C) Polimorfismo por Sobreescritura (Method Overriding)

D) Abstracción de Datos



Respuesta correcta: C



Explicación:

La Sobreescritura de Métodos (Overriding) es la manifestación del Polimorfismo. Ocurre cuando una clase hija decide ignorar o cambiar el comportamiento dictado por su clase padre, "sobreescribiendo" el método con su propia, permitiendo la adaptación sin cambiar la interfaz global.



---



## CASO 87



Contexto:

El equipo de redes soluciona un problema de latencia cambiando un conector dañado en un cable de cobre trenzado y reemplazando un repetidor de señal básico en el cuarto de telecomunicaciones.



Pregunta:

Según el Modelo de Referencia OSI, ¿en qué capa ocurrieron las reparaciones estrictamente físicas de esta falla?



Opciones:

A) Capa 3 (Red)

B) Capa 2 (Enlace de Datos)

C) Capa 4 (Transporte)

D) Capa 1 (Física)



Respuesta correcta: D



Explicación:

La Capa 1 (Física) del Modelo OSI abarca los voltajes, radiofrecuencias, especificaciones de los conectores físicos, y componentes electrónicos que no piensan ni leen datos, sino que simplemente repiten pulsos eléctricos (como los concentradores/Hubs, cables UTP y repetidores).



---



## CASO 88



Contexto:

En un almacén de datos (Data Warehouse), se tiene una tabla masiva de mil millones de registros. Se requiere crear un índice sobre la columna "Género" que contiene exclusivamente los valores "Masculino" o "Femenino". Usar un índice B-Tree clásico resulta inútil, lento y pesado debido a la nula diversidad de valores.



Pregunta:

¿Qué tipo de índice especial para bases de datos es el ideal y está optimizado matemáticamente para columnas con bajísima cardinalidad (pocos valores distintos)?



Opciones:

A) Índice Hash Compuesto

B) Índice Agrupado Cíclico

C) Índice Bitmap (Mapa de bits)

D) Índice de Texto Completo



Respuesta correcta: C



Explicación:

Los Índices Bitmap están diseñados exactamente para columnas con baja cardinalidad (ej. "Estado_Civil", "Activo_Inactivo"). En lugar de guardar pesados árboles, el motor asigna un arreglo masivo de "Ceros" y "Unos" para cada valor posible. Las consultas cruzadas se vuelven hiper-veloces usando simples compuertas (AND/OR) a nivel procesador.



---



## CASO 89



Contexto:

Un equipo diseña un nuevo sistema operativo seguro para misiones aeroespaciales críticas. Deciden reducir el corazón del sistema operativo al mínimo tamaño posible, delegando los drivers, los servidores de gráficos y los sistemas de archivos a procesos de nivel de usuario, fuera de la zona protegida del núcleo.



Pregunta:

¿Qué arquitectura de diseño de núcleo de sistema operativo están empleando?



Opciones:

A) Arquitectura Monolítica Clásica

B) Arquitectura de Microkernel

C) Sistema Operativo de Tiempo Compartido

D) Arquitectura Distribuida en Red



Respuesta correcta: B



Explicación:

En un diseño Microkernel, el núcleo (Kernel) es diminuto y solo gestiona lo indispensable (comunicación de mensajes y hardware básico). Todo lo demás corre en el "Espacio de Usuario". Si el controlador de la impresora colapsa o se congela, el sistema completo sobrevive porque la falla está fuera de la zona núcleo. (Windows o Linux clásico son Monolíticos gigantes donde una falla en el driver tumba a todo el sistema provocando la Pantalla Azul).



---



## CASO 90



Contexto:

Se desarrolla un sistema de reportes en bolsa de valores donde el módulo "DashboardVisual" y el módulo "AlertaCelular" necesitan ser informados instantáneamente cada vez que el precio de una acción cambia en el objeto "CotizadorCentral", sin necesidad de tener un bucle que consulte repetidamente.



Pregunta:

¿Qué Patrón de Diseño del software orquesta eficientemente este mecanismo de notificaciones automatizadas estilo "suscripción"?



Opciones:

A) Patrón Fábrica (Factory)

B) Patrón Observador (Observer)

C) Patrón Fachada (Facade)

D) Patrón Adaptador (Adapter)



Respuesta correcta: B



Explicación:

El Patrón de Diseño Observer establece una relación de "Publicador-Suscriptor" uno a muchos. Cuando el sujeto central (el publicador del precio) cambia su estado, notifica silenciosamente e invoca a todos los objetos que están registrados en su lista de suscriptores para que se actualicen inmediatamente sin forzar búsquedas activas y pesadas.



---



## CASO 91



Contexto:

Un programador junior ejecuta un algoritmo de recursividad profundo sin darse cuenta de que su condición base está mal estructurada. Tras mil ciclos, el programa explota y se aborta repentinamente marcando un "Stack Overflow Error".



Pregunta:

Técnicamente a nivel de arquitectura de la memoria y compilación, ¿qué estructura interna se sobrecargó hasta reventar?



Opciones:

A) La Pila de Llamadas del Sistema (Call Stack)

B) El Registro Acumulador del Procesador (ALU)

C) La cola circular de paginación del sistema de archivos

D) El bloque de memoria reservada Heap de objetos dinámicos



Respuesta correcta: A



Explicación:

Cada vez que una función invoca a otra (o a sí misma en la recursividad), el sistema guarda las variables de entorno actuales y la instrucción de "retorno" en la "Pila de Llamadas" o Call Stack de memoria. Como la recursividad del junior fue infinita, la memoria física asignada al proceso del Call Stack llegó a su tope matemático (Límite de profundidad) y se derramó.



---



## CASO 92



Contexto:

En la librería "MatematicasAvanzadas" creada en C#, el equipo nota que cada vez que necesitan sumar dos números consumen recursos instanciando la clase con el operador `new MatematicasAvanzadas()`. Para ahorrar memoria, el arquitecto refactoriza la función para permitir que se ejecute la suma llamando directamente `MatematicasAvanzadas.sumar()`, prescindiendo de instanciar un objeto.



Pregunta:

¿Con qué modificador especial de la programación orientada a objetos debió declarar el arquitecto la función "sumar"?



Opciones:

A) Abstracto (Abstract)

B) Virtual (Virtual)

C) (Static)

D) Sellado (Sealed)



Respuesta correcta: C



Explicación:

Los métodos o atributos declarados como (`static`) pertenecen globalmente a la clase misma y no a sus múltiples objetos derivados. Esto permite acceder a la funcionalidad matemática de la clase instantáneamente sin obligar al compilador a reservar memoria dinámica para crear (instanciar) una variable u objeto nuevo.



---



## CASO 93



Contexto:

La empresa de servicios de contenido en streaming distribuye réplicas idénticas de su servidor de videos en 5 países distintos (Japón, Estados Unidos, Francia, Brasil y Sudáfrica), y configura los routers para que todos los cinco servidores utilicen matemáticamente la misma y única dirección IPv6 simultáneamente. Un usuario desde México solicita un video.



Pregunta:

¿Qué método avanzado y poderoso de direccionamiento IP se está empleando para asegurar que el tráfico desde México sea atendido por el servidor topológicamente más cercano (EE.UU.) en la red global?



Opciones:

A) Direccionamiento Multicast Clásico

B) Enrutamiento Anycast IPv6

C) Encapsulamiento VPN Directo Unicast

D) Algoritmo de Reparto ARP Dinámico



Respuesta correcta: B



Explicación:

A diferencia del Unicast (una IP para un solo equipo en el mundo) o el Broadcast (un mensaje a todos), el direccionamiento "Anycast" permite que múltiples servidores dispersos mundialmente tengan asignada idénticamente la misma dirección IP pública. El protocolo de red enviará matemáticamente la petición del cliente al nodo que esté geográficamente y lógicamente "más cerca" de él, acelerando la red globalmente.



---



## CASO 94



Contexto:

Una tabla relacional normalizada "Empleados" contiene información sobre qué empleado domina qué idioma y qué herramienta de software usa. Como Juan domina Inglés y Francés, y utiliza Excel y Word, la base de datos comienza a generar decenas de registros combinando y cruzando todas las tuplas de Juan solo para alojar estos arreglos múltiples.



Pregunta:

¿Qué forma de diseño de Normalización exige la eliminación estricta y rotunda de estas dependencias multivaluadas para no crear cruces cartesianos absurdos de múltiples temas independientes en una sola tabla?



Opciones:

A) Primera Forma Normal (1FN)

B) Tercera Forma Normal (3FN)

C) Cuarta Forma Normal (4FN)

D) Quinta Forma Normal (5FN)



Respuesta correcta: C



Explicación:

La 4FN interviene cuando el diseño ya es 3FN, pero se identifican dos o más hechos independientes multivaluados sobre la misma entidad principal en una tabla simple. Por ejemplo, mezclar "Las tres habilidades de Juan" con "Los tres teléfonos de Juan" provoca $3 \times 3 = 9$ repeticiones ridículas de información. La 4FN ordena romper estas dos temáticas multivaluadas en dos tablas limpias independientes.



---



## CASO 95



Contexto:

Un ingeniero se conecta al servidor corporativo basado en el sistema operativo Linux. Necesita modificar los archivos de configuración, globales y maestros que rigen el arranque de todos los programas instalados en la máquina, pero no encuentra el directorio raíz adecuado.



Pregunta:

Según el Estándar de Jerarquía del Sistema de Archivos (FHS) de Linux, ¿en qué directorio del sistema debe entrar para hallar obligatoriamente estas configuraciones centrales?



Opciones:

A) El directorio `/var`

B) El directorio `/etc`

C) El directorio `/bin`

D) El directorio `/home`



Respuesta correcta: B



Explicación:

En todo sistema Linux y Unix, el corazón de la configuración del host y de los servicios a nivel máquina reside dentro del directorio `/etc`. El directorio `/var` es para archivos variables como bitácoras (logs), y el directorio `/bin` o `/usr/bin` almacena los comandos binarios ejecutables compilados del sistema.



---



## CASO 96



Contexto:

Para calcular la nómina de desarrollo de un sistema de información inmenso antes de que exista una sola línea de código escrita, la empresa financiera se apoya en medir las "Entradas Externas", "Salidas Externas", "Archivos Internos" e "Interfaces" que componen la complejidad y el alcance real de las transacciones funcionales que el cliente verá al usar el software final.



Pregunta:

¿Qué metodología internacional de estimación de esfuerzo en la Ingeniería de Software están empleando?



Opciones:

A) Puntos de Historia Scrum Relativa (Story Points)

B) Análisis de Puntos de Función (Function Point Analysis - FPA)

C) Evaluación del Modelo de Madurez CMMI

D) Métrica COCOMO Recursivo



Respuesta correcta: B



Explicación:

El "Análisis de Puntos de Función" evalúa un proyecto no por sus líneas de código o su tecnología, sino por la "funcionalidad" matemática útil entregada y procesada a favor del usuario (cuántos reportes arroja el sistema, cuántas pantallas de entrada hay, y cuántos archivos modifica). Es vital para costear proyectos inmensos antes del desarrollo en entornos gubernamentales y corporativos de clase mundial.



---



## CASO 97



Contexto:

Un algoritmo de ajedrez tradicional de "Fuerza Bruta" explora millones de movimientos futuros utilizando un árbol de decisiones simple de manera estricta y recursiva. El ingeniero nota que la máquina desperdicia años de cálculo re-evaluando y procesando tableros que ya había visitado y analizado previamente.



Pregunta:

¿Qué paradigma algorítmico y matemático avanzado debe incorporar para guardar o cachear (memorizar) los sub-problemas previamente superpuestos solucionados y así evitar el recálculo masivo?



Opciones:

A) Paradigma Voraz (Greedy Algorithm)

B) Paradigma Backtracking simple recursivo

C) Programación Dinámica (Dynamic Programming)

D) Paradigma Lineal Distribuido



Respuesta correcta: C



Explicación:

La Programación Dinámica aborda problemas complejos optimizándolos profundamente mediante una técnica central: "La Memorización (Memoization)". Cuando el algoritmo resuelve un sub-problema complejo superpuesto, anota la respuesta en una tabla de memoria. Si la rutina de evaluación vuelve a enfrentarse a la misma encrucijada matemática exacta, simplemente lee la respuesta instantánea en lugar de recalcular todas las rutas de nuevo.



---



## CASO 98



Contexto:

En un lenguaje estricto como Java o C#, está terminantemente prohibido que una clase hija adquiera las implementaciones derivadas directamente de dos o más clases padre (Herencia Múltiple bloqueada a nivel máquina). Sin embargo, un objeto necesita firmar contratos y promesas de comportamiento de tres mundos de la empresarial distintos al mismo tiempo.



Pregunta:

En el diseño de la POO, ¿qué elemento estructural debe utilizarse para simular el comportamiento de la herencia múltiple sin caer en ambigüedades arquitectónicas como el "Problema del Diamante"?



Opciones:

A) Variables polimórficas 

B) Interfaces (Múltiples interfaces)

C) Super-clases inyectables modulares

D) Clases nativas en cadena



Respuesta correcta: B



Explicación:

Lenguajes fuertemente tipados deshabilitaron la herencia múltiple para evitar choques de métodos con igual nombre. Las *Interfaces* (contratos sin ni cuerpo que solo definen cascarones funcionales y encabezados de método obligatorios) son el remedio de la POO; una clase hija puede heredar e implementar múltiples interfaces diferentes sin sufrir colisiones matemáticas de arquitectura de datos o "Diamantes" de conflictos.



---



## CASO 99



Contexto:

El programador de una nueva aplicación de mensajería termina su código de red TCP y quiere probar que la del servidor de puertos en su código funcione correctamente. En lugar de instalar la aplicación en dos computadoras reales conectadas, ejecuta el servidor y el cliente en su misma laptop desconectada por completo de cualquier red o cable de internet.



Pregunta:

¿A qué dirección IP estandarizada de uso obligatorio le configuró la conexión a su código cliente para forzar el retorno de la red sobre su misma interfaz física interna?



Opciones:

A) 192.168.0.1

B) 255.255.255.255

C) 0.0.0.0

D) 127.0.0.1 (Loopback)



Respuesta correcta: D



Explicación:

La dirección reservada IPv4 `127.0.0.1` (o su red 127.x.x.x en general, conocida comúnmente en la industria por la interfaz `localhost`) es la dirección universal interna o de Loopback de toda máquina con pila de red. El tráfico enviado a esta dirección enrutará matemáticamente las capas y comandos TCP/IP enviando el pulso a sí mismo sin requerir ningún router real, permitiendo probar software de red aisladamente con total fiabilidad funcional.



---



## CASO 100



Contexto:

Un atacante encuentra una aplicación web antigua que exhibe un error SQL de inyección clásico con la sentencia `SELECT nombre, correo FROM Usuarios WHERE id = $id`. En lugar de insertar solo un `' OR '1'='1` simple, inyecta un comando complejo logrando que la tabla retorne la información normal del usuario junto con las contraseñas secretas de todos los administradores pegadas visualmente debajo.



Pregunta:

¿Qué comando relacional específico usó el cibercriminal para acoplar la consulta maliciosa a la consulta original forzando al motor a escupir ambas informaciones fundidas en el mismo formato en pantalla?



Opciones:

A) INSERT EXPLOIT

B) DELETE JOIN CLUSTER

C) UNION SELECT

D) RENAME TABLE HACK



Respuesta correcta: C



Explicación:

La inyección de base de datos basada en Unión (UNION-Based SQL Injection) es la herramienta más invasiva en vulnerabilidades tempranas de programación no sanitizada. El operador `UNION` de SQL requiere combinar dos resultados del mismo formato en una sola hoja visible final. El hacker aprovecha el hueco cerrando la consulta 1 válida e inyectando `UNION SELECT pass, admin FROM Privado` extrayendo ambos mundos combinados limpiamente a los ojos de la consola o la web sin romper la visualización relacional ni arrojar alertas.

\newpage
# Bloque 6
## CASO 101



Contexto:

El administrador de dominios necesita configurar la zona DNS de la empresa. Tiene el servidor web principal apuntando a una IP pública específica. Adicionalmente, requiere crear el subdominio `ventas.empresa.com` y quiere asegurarse de que, si la IP del servidor principal cambia en el futuro, no tenga que editar el registro del subdominio manualmente, sino que siga heredando la dirección de `www.empresa.com`.



Pregunta:

¿Qué tipo de registro DNS debe utilizar para el subdominio con el fin de vincularlo dinámicamente como un alias al nombre de dominio principal?



Opciones:

A) Registro A

B) Registro MX

C) Registro CNAME

D) Registro PTR



Respuesta correcta: C



Explicación:

Un registro A enlaza estrictamente un nombre a una dirección IPv4. El registro CNAME (Canonical Name) funciona como un alias que apunta el subdominio de red hacia otro nombre de dominio. Si la IP del dominio maestro cambia en el Registro A central, el CNAME hereda la conectividad inmediatamente sin requerir actualizaciones paralelas.



---



## CASO 102



Contexto:

En el desarrollo de un algoritmo de búsqueda de rutas para un videojuego de navegación, el enemigo debe sortear obstáculos en el menor tiempo computacional posible buscando al jugador. El clásico Algoritmo de Dijkstra evalúa ciegamente todos los caminos radiando en círculo, lo cual resulta ineficiente para el motor del juego.



Pregunta:

¿Qué algoritmo heurístico avanzado y eficiente de grafos está diseñado específicamente para trazar rutas óptimas directas combinando el costo exacto del recorrido con una estimación inteligente hacia la meta final?



Opciones:

A) Algoritmo de Floyd-Warshall

B) Algoritmo A* (A-Estrella)

C) Algoritmo de Prim

D) Búsqueda Lineal Bidireccional



Respuesta correcta: B



Explicación:

A* (A-Star) es el algoritmo soberano en ruteo y navegación computacional. A diferencia de Dijkstra, que busca a expandiéndose simétricamente hacia todas direcciones, A* utiliza una función heurística (una "pista" o estimación matemática) para preferir evaluar únicamente aquellos caminos que visiblemente apuntan hacia el objetivo en el plano de red, ahorrando tiempo de procesamiento inmenso.



---



## CASO 103



Contexto:

En un sistema bancario crítico global, se ha determinado que las lecturas y escrituras contables cruzadas no pueden tolerar las llamadas "Lecturas Fantasmas" ni las inconsistencias de transacciones ejecutadas en paralelo, obligando a los usuarios a esperar matemáticamente a que otros terminen.



Pregunta:

Según las regulaciones de Aislamiento de Bases de Datos en SQL, ¿cuál es el nivel de bloqueo más estricto, paranoico y seguro aplicable por el motor, a cambio de sacrificar la mayor cantidad de rendimiento en concurrencia masiva?



Opciones:

A) READ COMMITTED

B) REPEATABLE READ

C) READ UNCOMMITTED

D) SERIALIZABLE



Respuesta correcta: D



Explicación:

El nivel de aislamiento SERIALIZABLE obliga lógicamente al motor de la base de datos a ordenar las operaciones masivas de miles de usuarios como si todos estuvieran en una fila india perfecta procesando uno por vez, deteniendo en seco el multihilo. Garantiza 100% la pureza sin colisiones matemáticas ni fenómenos fantasmas, pero es el más lento a nivel arquitectónico.



---



## CASO 104



Contexto:

En una startup que utiliza el framework ágil "Extreme Programming" (XP), dos ingenieros se sientan juntos compartiendo el mismo teclado y monitor todo el día. Uno teclea el código operativo observando la estructura táctica (el Piloto), mientras que el otro piensa en la estrategia algorítmica, vigila la estructura arquitectónica global y revisa errores en tiempo real (el Navegante).



Pregunta:

¿Qué práctica obligatoria del marco XP de la ingeniería de software se describe en esta situación?



Opciones:

A) Testing Continuo

B) Refactorización 

C) Programación en Parejas (Pair Programming)

D) Dual Git Commiting



Respuesta correcta: C



Explicación:

La Programación en Parejas (Pair Programming) es una regla central de la Programación Extrema. Disminuye radicalmente los errores tempranos, transfiere conocimiento silencioso entre miembros senior y junior de la red laboral de inmediato, y eleva la calidad del código, compensando el costo aparente de tener a dos programadores escribiendo en un mismo teclado con software de alto impacto y cero defectos.



---



## CASO 105



Contexto:

Una aplicación dibuja un objeto base `Ventana`. El requerimiento exige añadirle funcionalidad visual a los objetos sobre la marcha durante la ejecución (añadirle un `Borde`, una `BarraDeDesplazamiento`, o `Sombras`). Usar clases extendidas (`VentanaConBordeYSombra`) generaría cientos de combinaciones rígidas de herencia insostenibles.



Pregunta:

¿Qué Patrón de Diseño estructural permite acoplar capas de funcionalidades y responsabilidades a un objeto base de manera dinámica en tiempo de ejecución, envolviéndolo iterativamente?



Opciones:

A) Patrón Observador (Observer)

B) Patrón Singleton

C) Patrón Fachada (Facade)

D) Patrón Decorador (Decorator)



Respuesta correcta: D



Explicación:

El patrón de diseño Estructural Decorador evita la "Explosión de Clases" generada por la herencia múltiple combinatoria rígida. Modela envoltorios que le agregan habilidades a un objeto ya creado, comportándose funcionalmente de forma dinámica (ej. Tienes un café; le añades decorador "Leche", luego decorador "Azúcar") sin tener que crear una clase estricta `CafeConLecheYAzucar`.



---



## CASO 106



Contexto:

Un disco duro mecánico clásico (HDD) de un servidor masivo recibe peticiones de acceso a los cilindros número 10, 80, 20 y 90. Si procesa las llamadas en ese orden (First Come First Serve), el brazo lector magnético viajará de extremo a extremo frenéticamente perdiendo tiempos valiosos de hardware. Para arreglarlo, el sistema ordena las peticiones basándose en la posición actual del brazo y lo hace viajar barriendo uniformemente hacia arriba y luego hacia abajo procesando las peticiones en el camino.



Pregunta:

¿A qué algoritmo clásico de planificación de unidades de almacenamiento físico pertenece esta optimización?



Opciones:

A) C-SCAN (Circular SCAN)

B) SCAN (Algoritmo del Ascensor / Elevator Algorithm)

C) Algoritmo de Prioridad Exclusiva

D) Shortest Seek Time First (SSTF)



Respuesta correcta: B



Explicación:

El algoritmo de planificación de disco SCAN, apodado históricamente "Del Ascensor", procesa y ordena lógicamente las peticiones en un movimiento de barrido físico único. Así como un elevador real sube al piso 10 y recoge a la gente en el 3 y el 8 de pasada en vez de bajar al 3 y volver al 8; el disco duro minimiza el desgaste del brazo magnético recogiendo datos cercanos a su trayectoria.



---



## CASO 107



Contexto:

Un equipo requiere identificar a simple vista el comportamiento de diseño de varias direcciones IPv4 clásicas. Se le presenta la dirección IP `172.16.50.5` que el arquitecto antiguo usó por default sin manipulación de subred compleja, declarando que usa una máscara tradicional `255.255.0.0` para separar la mitad del ruteo del dominio local.



Pregunta:

Bajo la arcaica y obsoleta, pero fundamental clasificación estricta de redes de internet, ¿a qué Clase Direccional (IP Class) pertenece nativamente esa dirección según el primer octeto matemático?



Opciones:

A) Clase A

B) Clase B

C) Clase C

D) Clase D



Respuesta correcta: B



Explicación:

La clasificación histórica IPv4 define redes estándar con rangos fijos matemáticos. La Clase A abarca de 1.0.0.0 a 126.255.255.255 (Máscara /8). La Clase B abarca de 128.0.0.0 a 191.255.255.255 (Máscara /16), y aquí cae la IP "172.16.x.x". La Clase C abarca desde 192.0.0.0 hasta 223.255.255.255 (Máscara /24). Este formato se enseña como el fundamento del ruteo global CIDR moderno de internet.



---



## CASO 108



Contexto:

En un sistema escolar, una tabla de calificaciones llamada "Kardex" usa una "Llave Primaria Compuesta" con dos columnas: `ID_Estudiante` y `ID_Materia`. Para ahorrar tablas, el desarrollador también inserta la columna `Nombre_Materia` dentro del mismo registro de Kardex.



Pregunta:

La columna `Nombre_Materia` depende únicamente del `ID_Materia`, ignorando e independizándose del `ID_Estudiante`. ¿Qué pilar base de normalización y qué tipo de dependencia relacional quebranta brutalmente este diseño redundante?



Opciones:

A) Rompe la 1FN por Grupos Repetidos Atómicos

B) Rompe la 3FN por Dependencia Transitiva Cruzada

C) Rompe la 2FN por Dependencia Funcional Parcial

D) Rompe la Forma Normal de Dominio Fijo Boyce-Codd



Respuesta correcta: C



Explicación:

La Segunda Forma Normal (2FN) solo interviene y aplica en tablas con Llaves Primarias COMPUESTAS. Exige estrictamente que todo campo normal descriptivo dependa y requiera matemáticamente a *todas y cada una de las partes de la llave compuesta en su totalidad*. Si "Nombre de la Materia" solo necesita a la mitad de la llave ("ID_Materia") para existir, entonces sufre una Dependencia Parcial y se exige romper la tabla para normalizar.



---



## CASO 109



Contexto:

El procesador de tareas del servidor necesita procesar peticiones urgentes. A diferencia de una cola normal donde "el primero que llega sale primero (FIFO)", aquí las peticiones tienen calificaciones matemáticas dinámicas (Prioridades del 1 al 100). El algoritmo requiere asegurar de forma extremadamente veloz e inmediata la extracción del "Elemento de mayor prioridad numérica" de la colección total de objetos vivos sin importar en qué orden de tiempo entró.



Pregunta:

¿Qué estructura matemática de datos de la algoritmia clásica es la implementación ideal para alojar internamente esta base de "Cola de Prioridad Mínima o Máxima"?



Opciones:

A) Un Árbol Binario de Búsqueda Secuencial Lento (Unbalanced BST)

B) Una Tabla de Hash o Diccionario

C) Una Pila LIFO recursiva 

D) Una estructura de Montículo (Max-Heap o Min-Heap)



Respuesta correcta: D



Explicación:

Un Montículo (Heap) es un árbol binario especial de naturaleza algorítmica donde el elemento de valor máximo (o mínimo, según se diseñe) se ve lógicamente obligado y acomodado a "flotar" y vivir en la raíz suprema en tiempo O(log n). Almacenar datos en un Montículo es la forma universal de construir Colas de Prioridad en todos los lenguajes porque extraer el mayor o mejor elemento toma de inmediato O(1) pasos algorítmicos.



---



## CASO 110



Contexto:

Una empresa despliega 50 servicios pequeños (Microservicios). Tradicionalmente instalaría 50 Máquinas Virtuales completas (VMWare/VirtualBox). Al darse cuenta de que las VM arrancan 50 sistemas operativos pesados completos (con 50 kernels Linux) para ejecutar programas triviales, adoptan tecnologías como Docker, donde los 50 servicios comparten transparentemente un solo Kernel base Linux maestro y arrancan en microsegundos pesando megabytes.



Pregunta:

En términos estructurales y de virtualización, ¿cómo se denomina formalmente esta capa de infraestructura Docker moderna dentro del DevOps que abstrae todo a un nivel superior?



Opciones:

A) Virtualización Paravirtual Completa (Full OS Paravirtualization)

B) Virtualización a Nivel de Sistema Operativo (Contenerización / Containerization)

C) Aislamiento Sandbox en Máquina Virtual Nativa

D) Hipervisor Universal Barem-Metal Pila 1



Respuesta correcta: B



Explicación:

Los Contenedores de software (Docker) realizan "Virtualización a nivel de Sistema Operativo". A diferencia de una Máquina Virtual que simula e instala un hardware completo falso (discos duros virtuales, procesadores virtuales) e instala otro Sistema Operativo completo pesadísimo encima de él; los contenedores simplemente aíslan el proceso funcional mediante "Namespaces", usando todos el mismo y único núcleo real del servidor anfitrión original acelerando el rendimiento computacional de la nube corporativa.



---



## CASO 111



Contexto:

En un sistema de Big Data corporativo como Apache Hadoop, las peticiones almacenan archivos gigantescos de Terabytes. Como no caben en un solo disco físico, el software divide transparentemente el archivo monumental en trozos de 128 MB (Chunks) y los esparce por las redes a lo largo de 500 computadoras simples diferentes en el corporativo. Al solicitar abrirlo, el sistema lo rearma al vuelo uniendo los trozos como si fuera un solo disco gigante a ojos del usuario local.



Pregunta:

¿A qué familia de tecnología de sistemas de almacenamiento a nivel sistema operativo obedece y pertenece este ecosistema Hadoop fundamental?



Opciones:

A) Sistema de Archivos FAT16 de Almacenamiento Local

B) Sistemas de Archivos Distribuidos en Red (Distributed File Systems)

C) Sistemas de Paginación Fragmentada por Sector Ext4

D) Bases de Datos Relacionales Clásicas con Fragmentos Binarios



Respuesta correcta: B



Explicación:

Los Sistemas de Archivos Distribuidos (como HDFS de Hadoop, NFS clásico o Google File System) permiten la manipulación, lectura y almacenamiento gigantesco de información digital abarcando y aglutinando los espacios de disco de múltiples máquinas independientes. La complejidad de red, partición, y sincronización masiva se esconde al usuario, presentándole visualmente los archivos como si estuvieran ubicados pacíficamente en una carpeta común de su laptop central.



---



## CASO 112



Contexto:

El analista de ciberseguridad monitorea una subred e identifica una dirección física asignada al hardware de red de la laptop atacante mediante la cadena de notación exótica: `3A:4F:9C:22:BB:05`. �0 l sabe que los tres primeros octetos numéricos designan al fabricante de la tarjeta a nivel global y los tres últimos al dispositivo, sin cambiar nunca a menos que se suplante.



Pregunta:

Considerando la longitud y estructura de los datos, ¿qué es exactamente esta cadena analizada y en qué capa del Modelo OSI opera permanentemente en hardware en un Switch local?



Opciones:

A) Dirección IPv6 - Capa 3 de Red

B) Dirección MAC (Media Access Control) de 48 bits - Capa 2 de Enlace de Datos

C) Dirección IPv4 Privada en Hexadecimal - Capa 4 de Transporte 

D) Clave de Cifrado de Capa Física - Capa 1 de Fibra Local



Respuesta correcta: B



Explicación:

Una Dirección MAC es la huella digital "física e inmutable" quemada de fábrica en la tarjeta de red (NIC) del host. Está compuesta universalmente por 48 bits, agrupados lógicamente de dos en dos, escritos en formato numérico hexadecimal (base 16). Representan la moneda de cambio fundamental e insustituible para el encaminamiento físico de tramas en los concentradores (Switches) dentro del protocolo vital de Capa 2 (Enlace de datos).



---



## CASO 113



Contexto:

El motor SQL requiere garantizar seguridad al banco. El ingeniero DBA estipula reglas estrictas forzosas en el esquema: "El valor final en la columna de dinero nunca y bajo ninguna circunstancia natural puede descender del valor numérico cero (Restricción CHECK de Base de Datos)". Si un programa intenta procesar un bloque de transacciones matemáticas que termine quebrando y violando esta condición relacional central en la cuenta, la transacción fracasa y se descarta totalmente al milisegundo devolviendo el estado anterior intacto.



Pregunta:

Según las siglas inquebrantables de los modelos de las bases de datos relacionales "ACID", ¿qué propiedad se encarga formalmente de evitar que las reglas de integridad de la base queden dañadas tras una operación?



Opciones:

A) Aislamiento (Isolation)

B) Atomicidad (Atomicity)

C) Durabilidad (Durability)

D) Consistencia (Consistency)



Respuesta correcta: D



Explicación:

La "C" de Consistencia en ACID (Consistencia de Base de Datos, distinta al Teorema CAP de redes) dictamina y garantiza que ninguna transacción logre completarse de manera exitosa si eso significa abandonar la base de datos en un estado matemáticamente o estructuralmente inválido o corrupto (ej. violando reglas, checks o llaves foráneas inyectadas). La base de datos asume el control saltando de un estado lógicamente válido directamente a otro estado lógicamente válido por la fuerza.



---



## CASO 114



Contexto:

En la programación modular de un sistema ERP logístico se tiene la clase central "CalculoDeDescuentos". Al principio solo calculaba el descuento estándar. Luego, en la época navideña, en lugar de crear una clase independiente adaptadora, el programador junior entra directamente a la matriz del archivo de código base original de la clase y le inserta tres nuevos bloques `if-else` condicionales para manejar los descuentos, abriendo la puerta a que otro desarrollador quiebre o contamine todo lo que antes funcionaba bien.



Pregunta:

Dentro de los cinco pilares innegociables de arquitectura limpia de "SOLID", ¿qué principio capital violó directamente el programador al realizar esta intervención intrusiva al código central?



Opciones:

A) Principio Abierto/Cerrado (Open-Closed Principle - OCP)

B) Principio de Inversión de Dependencia (Dependency Inversion)

C) Principio de Sustitución de Liskov Matemática (LSP)

D) Principio de Segregación Simple de Interface (ISP)



Respuesta correcta: A



Explicación:

El Principio de Abierto/Cerrado (La O de SOLID) es el Santo Grial del desarrollo seguro y modular: Las clases deben ser siempre "Abiertas para la extensión" (capaces de adoptar nuevas funciones o variantes a futuro inyectándolas por interfaces y polimorfismo) pero estrictamente "Cerradas para la modificación matemática del código fuente nativo antiguo". Alterar el código original ya probado para inyectar "ifs" es romper el software al exponerlo a nuevos y desconocidos regresiones técnicas futuras.



---



## CASO 115



Contexto:

Un ingeniero de diseño de software describe y bosqueja en UML cómo debe funcionar exactamente la orden funcional de compra "Carrito": Primero nace como "Generado", al presionar pagar transita a "Autorizado". Si hay fondos, brinca a "Empacando". Finalmente viaja a la condición última de "Despachado". Si falla el cobro, es regresado a un formato alternativo "Rechazado", del cual ya no puede volver.



Pregunta:

¿Qué tipo de diagrama de comportamiento técnico UML permite cartografiar formalmente los diferentes periodos de vida que asume y adquiere un único objeto respondiendo a estímulos directos y eventos del tiempo?



Opciones:

A) Diagrama de Clases en Sistema

B) Diagrama Funcional General de Casos de Uso

C) Diagrama Físico de Despliegue y Redes de Host

D) Diagrama Dinámico de Máquina de Estado (State Machine Diagram)



Respuesta correcta: D



Explicación:

Los Diagramas de Máquina de Estados se especializan funcionalmente en ilustrar todos los comportamientos secuenciales en forma de vida por los que un solo y único objeto dinámico puede llegar a transitar ("Estados"), junto con los "Eventos" disparadores concretos o transiciones que causan y fuerzan ese cambio secuencial de fase en el sistema complejo (ej. Semáforo de Rojo a Verde). Es vital para modelar procesamientos de pagos complejos en backend global.



---



## CASO 116



Contexto:

En un sistema de telecomunicaciones local cerrado que lee audios en bucle repetitivo de alta latencia, el arreglo físico de almacenamiento debe ser veloz y continuo. Para ello, un puntero que lee el final matemático de la cola no choca contra un vacío, sino que al llegar a la última posición de la memoria del arreglo se salta y se reconecta instantáneamente hacia la posición cero original, leyendo datos nuevos en ciclos continuos indefinidamente sin expandir el tamaño límite original de la memoria RAM global predefinida localmente.



Pregunta:

¿Qué estructura matemática de datos de arreglo posicional especial está empleando activamente para optimizar recursos el administrador en programación concurrente local?



Opciones:

A) Pila de Recursión Circular Abstracta 

B) Cola Circular Dinámica Limitada / Ring Buffer Fijo

C) Árbol de Prioridad Estricto Simétrico Dinámico 

D) Vector Bidireccional Infinito de Nodos Distribuidos Locales Simples



Respuesta correcta: B



Explicación:

Un Buffer Circular (Ring Buffer o Cola Circular) optimiza elegantemente el almacenamiento con tamaño limitado. Resuelve el problema clásico de desperdicio de memoria y reubicación en arreglos planos básicos en los que "al retirar la cabeza de los datos y encolar al final, se requiere recorrer numéricamente todo", ya que la estructura "enlaza o hace un módulo matemático de longitud" para conectar el final con el inicio en su matriz, volviéndose una rueda perfecta de datos.



---



## CASO 117



Contexto:

El equipo informático levanta en la red local un servidor local de Exchange seguro corporativo y configura un software y cliente en escritorio. Necesitan habilitar rigurosamente dos protocolos clave separados y funcionales en los clientes de mensajería: el primero debe tomar la responsabilidad estricta de enviar las tramas textuales del mensaje de ida, mientras que el segundo protocolo se debe encargar únicamente de recibir y gestionar los buzones, descargando sincronizadamente los archivos finales de forma eficiente a los hosts locales del usuario final de red.



Pregunta:

¿Qué dupla estándar clásica de protocolos de la Capa de Aplicación de red resuelve exactamente esta división administrativa de transmisión saliente y recepción entrante?



Opciones:

A) Telnet para salida TCP, SSH para entrada TCP 

B) SMTP para salida de Envíos de Correo, e IMAP o POP3 para lectura entrante de buzones locales

C) FTP masivo para salida entrante local y SFTP entrante saliente para lecturas locales 

D) BGP Central local bidireccional localmente y RIP entrante interno 



Respuesta correcta: B



Explicación:

La dupla histórica del e-mail en redes de la Capa 7 del Modelo OSI de transporte informático. SMTP (Simple Mail Transfer Protocol) se ocupa exclusivamente de "Empujar / Push" de manera saliente el mensaje original al servidor remoto. Posteriormente, POP3 o el avanzado y distribuido IMAP entran en acción exclusivamente de manera activa por el cliente local de correo logrando el proceso "Arrastrar / Pull" solicitando la recepción global, leyendo y visualizando localmente de bajada lo que llegó del SMTP entrante local sin conflicto.



---



## CASO 118



Contexto:

En un ambiente Linux altamente de alta concurrencia intensiva y de procesador paralelo de multinúcleo pesado, existen múltiples procesos matemáticos (Process A y Process B independientes). Necesitan intercambiar entre ellos de manera crítica grandes cantidades masivas de datos a una velocidad de microsegundos matemáticos locales, sin la latencia de sobrecargas ni la intervención forzosa de tuberías directas, compartiendo simultáneamente el poder e interacción por el sistema operativo global central local.



Pregunta:

¿Qué técnica nativa en el Sistema Operativo para la Comunicación Inter-Procesos local (IPC) logra y ofrece la máxima velocidad existente técnica eliminando latencias del kernel?



Opciones:

A) Tuberías clásicas de red locales

B) Mensajes de Paso Fijos Interconectables y Sockets IP simples

C) Bloques de Memoria Compartida Directa y Transparente (Shared Memory Segment IPC)

D) Conexiones UDP en paralelo 



Respuesta correcta: C



Explicación:

En los entornos clásicos IPC (Inter-Process Communication), la transferencia paralela por Paso de Mensajes (Pipes o Sockets locales) requiere y exige múltiples copias sistémicas a los buzones del núcleo de Linux (Kernel). En absoluto contraste físico local, la Memoria Compartida (Shared Memory) reserva velozmente y en directo una zona específica de la RAM universal; todos los programas autorizados operan velozmente sobre esta misma variable local sin intermediarios logrando velocidades atómicas computacionales colosales en local, pero requiriendo candados o Semáforos forzosos para esquivar los choques cruzados locales.



---



## CASO 119



Contexto:

En una startup, el servidor central almacena datos de Big Data para un modelo simple local. Se manejan billones de datos por minuto, lo que asfixia un servidor estándar relacional. El CTO exige migrar de inmediato y reemplazarlo por un modelo avanzado de bases de datos que no almacena ni lee las cosas tradicionalmente "fila por fila relacionalmente " sino que estructura física e internamente todo leyendo los datos de manera transversal masiva (Por ejemplo, guardando todas las "fechas " juntas físicamente en el disco local y no en el registro lateral plano).



Pregunta:

¿A qué esquema de Base de Datos NoSQL avanzada debe recurrir forzosamente y técnicamente para cubrir su requerimiento vertical masivo veloz?



Opciones:

A) BD en Grafo de Nodos Bidireccionales Locales 

B) BD Documental Base Libre NoSQL Clásica en JSON

C) Base de Datos NoSQL Orientada a Columnas y Familias (Column-Family Store / Columnar como Cassandra)

D) Modelo de Llave-Valor simple de Cache Global Inversa Local



Respuesta correcta: C



Explicación:

Las Bases de Datos NoSQL Columnares (ej. Apache Cassandra o HBase) brillan y dominan los reportes de masivos OLAP y de inteligencia. A diferencia de MySQL o SQL Server clásico que leen y guardan las "filas o bloques enteros " para extraer el nombre y estatus de los usuarios (matando discos si solo querías sumar las facturas de todos en un instante), la Base Columnar guarda un archivo especial con los campos de toda una columna juntos en el disco, permitiendo búsquedas instantáneas promediables transversales simples sin tocar la lectura del resto de basura innecesaria colateral de los objetos.



---



## CASO 120



Contexto:

En una empresa con desarrollo colaborativo, tú trabajas localmente elaborando 5 commits en tu rama paralela secundaria "Feature" al mismo tiempo que el resto del corporativo envía otros 10 commits masivos e integran funciones principales en la rama original central "Main". Tu jefe local pide que integres y sincronices tu trabajo para publicarlo, logrando mantener limpio y linealmente plano todo el árbol local de tiempo de trabajo oficial central, sin generar jamás la contaminación histórica paralela del típico "Commit Especial Adicional Enredado" ni la creación y visión bifurcada compleja de burbujas en el árbol de colaboración de GitHub histórico.



Pregunta:

¿Qué acción y comando de ingeniería central de la plataforma de versionamiento de control Git logrará estricta y funcionalmente esta integración armónica logrando el acomodo ideal de inserción exigida?



Opciones:

A) Comando base Git Reset Hard global forzado

B) Acción y operación simple paralela Git Merge Fast-Forward local 

C) Herramienta colaborativa Git Rebase interactiva dinámica lineal local de trabajo directo

D) Estructura Git Squash forzoso directo de tiempo



Respuesta correcta: C



Explicación:

A diferencia del tradicional `git merge` clásico (que aglutina y entrelaza asimétricamente el trabajo lateral creando bifurcaciones con un nuevo archivo o rombo de commit intermedio caótico e inevitable), la funcionalidad poderosa de `git rebase` desengancha y corta tus trabajos propios paralelos y los reubica transaccionalmente como una línea limpia y perfecta al frente o final exacto de la última línea base y fresca de "main", dejando un árbol limpio y un historial perfecto y plano cronológicamente como si tú nunca te hubieras atrasado ni trabajado en paralelo nunca.

\newpage
# Bloque 7
## CASO 121



Contexto:

Un corporativo sufre ataques. El arquitecto de red decide reemplazar el viejo filtro de paquetes del enrutador, el cual bloqueaba puertos de manera individual sin recordar las conexiones anteriores. El nuevo dispositivo analiza toda la sesión desde que inicia el saludo de tres vías (Three-way Handshake), recuerda el flujo de datos y bloquea automáticamente cualquier paquete entrante que no pertenezca a una conexión legítimamente iniciada desde el interior de la empresa.



Pregunta:

¿Qué tecnología de inspección avanzada de seguridad en redes acaba de implementarse?



Opciones:

A) Firewall de Filtrado Simple (Stateless)

B) Firewall de Inspección de Estado (Stateful Firewall)

C) Sistema de Detección de Intrusos (IDS)

D) Proxy Reverso en la Capa 7



Respuesta correcta: B



Explicación:

Un firewall "Stateless" examina cada paquete de red de forma individual e independiente, lo cual es ineficiente y fácil de evadir. Un "Stateful Firewall" mantiene una tabla de estado en memoria; rastrea el contexto y la sesión completa. Si un servidor externo intenta enviar datos hacia la red interna, el firewall solo lo permitirá si comprueba que una computadora interna solicitó previamente esa información.



---



## CASO 122



Contexto:

Una red social almacena millones de contraseñas de usuarios. Para proteger los datos en caso de una filtración de la base de datos, el ingeniero utiliza un algoritmo que convierte la contraseña en una cadena alfanumérica matemática fija de 256 bits, garantizando que sea extremadamente resistente a colisiones y sin posibilidad de aplicar ingeniería inversa.



Pregunta:

¿Qué algoritmo criptográfico moderno de la industria debe utilizar por defecto para cumplir con estas especificaciones de seguridad?



Opciones:

A) Algoritmo de Cifrado Simétrico AES-256

B) Algoritmo RSA

C) Función de Hash MD5

D) Función de Hash SHA-256



Respuesta correcta: D



Explicación:

Para almacenar contraseñas, nunca se utiliza un cifrado reversible (como AES o RSA) porque alguien con la llave podría leerlas. Se utilizan funciones de Hash unidireccionales. MD5 es un algoritmo obsoleto, roto y vulnerable a ataques de colisión masiva. SHA-256 es el estándar actual en la industria, ofreciendo alta seguridad al procesar los textos sin generar vulnerabilidades matemáticas previsibles.



---



## CASO 123



Contexto:

Para buscar velozmente registros en una tabla de cinco millones de clientes, el motor de base de datos no escanea fila por fila, sino que consulta una estructura anexa optimizada y jerárquica en el disco. Esta estructura agrupa llaves de forma ordenada con múltiples ramificaciones por nodo, permitiendo encontrar cualquier ID leyendo un máximo de 3 a 4 bloques en el disco duro.



Pregunta:

¿Cuál es la estructura de datos interna predominante y universal que usan los motores de bases de datos relacionales para construir sus índices principales?



Opciones:

A) Árbol B (B-Tree / Árbol Balanceado)

B) Lista Doblemente Enlazada

C) Pila Estructurada

D) Algoritmo de Búsqueda Lineal



Respuesta correcta: A



Explicación:

Los índices en bases de datos relacionales (como MySQL o SQL Server) están construidos sobre la base de un "Árbol B" (B-Tree o Árboles B+). Esta estructura matemática auto-balanceada es ideal para sistemas de almacenamiento en disco, ya que mantiene los datos ordenados y permite búsquedas, accesos secuenciales, inserciones y eliminaciones en tiempo logarítmico amortizado O(log n).



---



## CASO 124



Contexto:

Un equipo maduro en DevOps configura un servidor de automatización Jenkins. Cada vez que un desarrollador hace un envío de código, Jenkins lo compila, ejecuta 500 pruebas unitarias de calidad, y construye el paquete final listo para usar en un contenedor Docker. Sin embargo, el equipo de QA exige que ese contenedor final sea retenido en un entorno de pruebas, y prohíbe rotundamente que el código se mande al servidor de los clientes sin que un humano presione primero un botón de "Aprobar".



Pregunta:

¿Qué ciclo y etapa específica de despliegue de infraestructura ágil están implementando?



Opciones:

A) Integración Continua Total (CI)

B) Despliegue Continuo (Continuous Deployment)

C) Entrega Continua (Continuous Delivery)

D) Integración de Monitoreo Dinámico



Respuesta correcta: C



Explicación:

En DevOps, la "Entrega Continua" (Continuous Delivery) automatiza toda la cadena hasta dejar el paquete listo para producción, pero exige obligatoriamente una aprobación humana manual final antes de liberar el software a los usuarios. Por el contrario, el "Despliegue Continuo" (Continuous Deployment) es más agresivo: automatiza todo el proceso y, si las pruebas pasan, lanza el código a producción directamente y de manera totalmente invisible sin intervención humana.



---



## CASO 125



Contexto:

Un desarrollador en Java diseña una clase constructora para enviar correos. En lugar de forzar al usuario a llamar métodos en líneas separadas, diseña los métodos devolviendo la instancia de la misma clase al terminar, permitiendo encadenar funciones de forma natural: `Correo.crear().para("jefe@empresa.com").conAsunto("Aviso").enviar();`.



Pregunta:

¿Qué concepto y patrón de diseño de Programación Orientada a Objetos representa esta estructura concatenada?



Opciones:

A) Inyección de Dependencias

B) Interface Segregation (Segregación de Interfaz)

C) Interfaces Fluidas (Fluent Interface / Method Chaining)

D) Objeto Abstracto



Respuesta correcta: C



Explicación:

El patrón "Fluent Interface", comúnmente implementado mediante el "Encadenamiento de Métodos" (Method Chaining), es una técnica de POO donde cada método interno retorna obligatoriamente el propio objeto `(return this;)`. Esto permite concatenar múltiples llamadas a métodos en una sola línea elegante, logrando que el código fuente se lea fluidamente casi como una oración natural en idioma inglés.



---



## CASO 126



Contexto:

Un sistema escrito en el lenguaje C++ opera el radar de un aeropuerto. Tras varias semanas de uso sin apagarse, el servidor reporta un error fatal y se congela porque ha agotado toda la memoria RAM, a pesar de estar procesando pocos vuelos. Un análisis revela que los programadores olvidaron escribir el comando `delete` u `ocultar` en el código tras destruir los aviones que salían de la pantalla.



Pregunta:

¿Qué nombre técnico recibe esta peligrosa vulnerabilidad de arquitectura de software y gestión de memoria?



Opciones:

A) Inanición (Starvation)

B) Fuga de Memoria (Memory Leak)

C) Condición de Carrera (Race Condition)

D) Desbordamiento de Búfer (Buffer Overflow)



Respuesta correcta: B



Explicación:

En lenguajes no gestionados como C o C++ que carecen de "Recolector de Basura" automático (Garbage Collector), el programador es responsable de liberar manualmente en el código la memoria reservada de los objetos cuando ya no se usan. Si olvida hacerlo, el objeto pierde su referencia pero sigue ocupando espacio eternamente en la RAM, generando una "Fuga de Memoria" gradual que termina asfixiando por completo al Sistema Operativo.



---



## CASO 127



Contexto:

En un corporativo, el servidor de red DHCP se daña. Un empleado enciende su computadora con Windows para trabajar. Al revisar la configuración de red, nota que su máquina tiene una dirección IP asignada mágicamente con el valor `169.254.45.10`, aunque no hay ningún servidor en la oficina que le haya otorgado esa configuración.



Pregunta:

¿Qué protocolo nativo del sistema operativo generó y configuró esta dirección para intentar mantener viva la red local?



Opciones:

A) NAT (Network Address Translation)

B) APIPA (Automatic Private IP Addressing)

C) IPv6 Anycast Routing

D) DNS Dinámico de Emergencia



Respuesta correcta: B



Explicación:

Cuando una computadora (especialmente en entornos Windows) está configurada para obtener una IP automáticamente pero no logra comunicarse con un servidor DHCP, el sistema utiliza APIPA para auto-asignarse matemáticamente una dirección en el rango reservado "169.254.x.x". Esto le permite al menos comunicarse e interactuar con otras computadoras en la misma situación dentro del segmento físico local.



---



## CASO 128



Contexto:

Una empresa pierde datos valiosos de transacciones bancarias a las 3:15 p.m. debido a un error humano masivo en un query SQL. El administrador debe restaurar la base de datos no al cierre del día de ayer, sino exactamente al estado milimétrico de las 3:14 p.m. de hoy, justo un minuto antes del desastre.



Pregunta:

Para lograr esta recuperación quirúrgica en bases de datos relacionales, ¿qué mecanismo interno y archivo de control del motor de base de datos se debe utilizar y reproducir secuencialmente?



Opciones:

A) La Pila de Vistas Materializadas (Materialized Views)

B) El Registro o Bitácora de Transacciones (Transaction Log / Redo Log)

C) Un Respaldo Incremental de Bloques de Sistema (File System Snapshot)

D) El Clúster de Índices B-Tree



Respuesta correcta: B



Explicación:

El Registro de Transacciones (Transaction Log) es un archivo protegido y vital donde el motor de base de datos anota paso a paso cada `INSERT`, `UPDATE` o `DELETE` mucho antes de aplicarlo en el disco duro. En recuperación ante desastres (Point-In-Time Recovery), el administrador monta el respaldo completo de ayer, y luego le indica al motor que "reproduzca" hacia adelante como una cinta de video todas las operaciones del log secuencialmente, pausando exactamente a las 3:14 p.m.



---



## CASO 129



Contexto:

Un estudiante de Ciencias de la Computación diseña una inteligencia artificial básica para resolver un laberinto en pantalla. La programada avanza casilla por casilla eligiendo rutas; cuando se topa con un muro y descubre que está en un callejón sin salida, su código retrocede exactamente a la última intersección segura que visitó para descartar esa ruta y elegir la otra opción inexplorada.



Pregunta:

¿Qué estrategia clásica de algoritmos y diseño matemático de búsqueda está utilizando el programa para resolver el laberinto?



Opciones:

A) Programación Dinámica (Dynamic Programming)

B) Divide y Vencerás (Divide and Conquer)

C) Algoritmo Voraz Directo (Greedy Method)

D) Vuelta Atrás (Backtracking)



Respuesta correcta: D



Explicación:

El Backtracking o "Vuelta Atrás" es un paradigma algorítmico de búsqueda sistemática y exhaustiva. Opera mediante una estructura de árbol recursiva: avanza por una ruta posible intentando resolver el problema; si la ruta resulta matemáticamente inválida o choca con una regla restrictiva, el algoritmo "retrocede" (cancela o poda la rama) e intenta el siguiente camino viable hasta hallar la meta (ej. Sudokus y Laberintos).



---



## CASO 130



Contexto:

Para impedir sobrecargas en el software, implementas el Patrón de Diseño "Singleton" para garantizar un solo objeto gestor de correos globales. En un servidor concurrente multihilos, los hilos chocan creando la clase varias veces. Decides usar `synchronized` para bloquear la función entera, pero esto paraliza la velocidad del sistema. Decides bloquear el hilo solo dentro del constructor inicial, evaluando un `if (instancia == null)` de manera meticulosa y optimizada.



Pregunta:

¿Qué patrón avanzado de validación en concurrencia es el recomendado en Java o C# para aplicar el Singleton de forma veloz y segura usando una doble comprobación de los hilos?



Opciones:

A) Patrón Observador de Semáforos 

B) Bloqueo de doble comprobación (Double-Checked Locking)

C) Algoritmo de Hilos Mutex Independientes

D) Singleton de Inyección Fluida



Respuesta correcta: B



Explicación:

El Bloqueo de Doble Comprobación (Double-Checked Locking) es el diseño definitivo para el patrón Singleton seguro en hilos (Thread-Safe). Consiste en comprobar primero si el objeto es nulo sin ningún bloqueo pesado. Si es nulo, se coloca el candado (`synchronized`), y una vez dentro de la zona de bloqueo crítico, se vuelve a comprobar con un segundo `if` si el objeto sigue nulo (en caso de que otro hilo haya entrado antes) para luego crearlo, logrando máxima eficiencia de ejecución.



---



## CASO 131



Contexto:

En un sistema Linux, el programador ejecuta comandos de consola. Crea un archivo original llamado `config.conf`. Luego, mediante el comando `ln -s`, crea un "Enlace Simbólico" (Symlink) llamado `atajo.conf` apuntando al archivo original. Un minuto después, mueve y cambia de carpeta física el archivo original `config.conf` llevándoselo al directorio `/etc`.



Pregunta:

¿Qué ocurrirá al intentar abrir y leer los datos usando el acceso directo `atajo.conf`?



Opciones:

A) Se abrirá correctamente rastreando al sistema de Inodos.

B) Marcará error indicando que el archivo no existe o el enlace está roto.

C) Eliminará el archivo automáticamente por regla de seguridad estricta.

D) Duplicará el archivo creando una copia rígida real localmente.



Respuesta correcta: B



Explicación:

Un Enlace Simbólico (Symlink) funciona exactamente como los "Accesos directos" tradicionales de Windows. Es simplemente un pequeño archivo que contiene una cadena de texto (la ruta original). Si el archivo original es borrado, modificado en su nombre, o movido físicamente a otra carpeta de red, el enlace simbólico se "rompe" instantáneamente al apuntar a un lugar que ya no existe y mostrará error.



---



## CASO 132



Contexto:

Al auditar los servicios de red abiertos hacia internet en el firewall de la empresa, el especialista en ciberseguridad bloquea todos los puertos numéricos por seguridad extrema y exige habilitar y abrir estrictamente solo el puerto estándar del tráfico seguro de páginas web y el puerto para la resolución de nombres de dominio en los navegadores.



Pregunta:

Considerando el modelo oficial, ¿qué números de puertos de la capa de transporte deben abrirse estrictamente para cubrir esa solicitud?



Opciones:

A) Puerto 80 para la navegación HTTP y Puerto 21 para DNS Seguro

B) Puerto 443 TCP para navegación web segura (HTTPS) y Puerto 53 UDP/TCP para servicio DNS

C) Puerto 22 para Navegación Global y Puerto 25 para las peticiones DNS UDP

D) Puerto 8080 TCP para SSL Global y Puerto 53 para DNS Interno



Respuesta correcta: B



Explicación:

Para la navegación cifrada estándar de hoy en día (HTTPS), el protocolo de internet demanda la apertura del puerto 443 vía TCP. Paralelamente, el sistema de resolución de nombres de dominio (DNS), el cual traduce las direcciones web humanas en direcciones IP de máquina, opera globalmente y universalmente sobre el puerto 53 (usando UDP para velocidad de consulta, y TCP para transferencias de zonas completas).



---



## CASO 133



Contexto:

Una aplicación web de compras en Node.js recibe miles de visitas. Si se instruye al sistema para usar la instrucción `nueva_conexion()` abriendo y cerrando la red TCP hacia la base de datos por cada usuario que entra, el sistema colapsará, ya que crear conexiones de red desde cero toma cientos de milisegundos y consume excesiva RAM en el motor de base de datos.



Pregunta:

¿Qué arquitectura o patrón de software para backend resuelve este problema de conectividad de red asfixiante?



Opciones:

A) Implementar Fragmentación Horizontal de Nodos (Sharding)

B) El uso de un Grupo de Conexiones de Base de Datos (Connection Pooling)

C) Aplicar Inyección de Dependencias a las tablas relacionales

D) Desplegar réplicas con Memoria Virtual y Paginación



Respuesta correcta: B



Explicación:

El Connection Pooling (Pool de Conexiones) es vital para el rendimiento web avanzado. Consiste en crear y mantener siempre vivas en segundo plano un pequeño paquete estricto (ej. 50 conexiones simultáneas) hacia la base de datos. Cuando un cliente web necesita acceder a los datos, pide prestada una conexión del Pool en lugar de forzar a crear una nueva; al terminar su transacción, la devuelve sana a la alberca para que el siguiente usuario la reutilice al instante.



---



## CASO 134



Contexto:

Un arquitecto de programación modela aves. Define la clase superior `Ave` con el método fundamental `volar()`. Luego, la clase `Avestruz` hereda nativamente de `Ave`. Como los avestruces no vuelan, el desarrollador sobreescribe el método para que al invocar `volar()`, el objeto arroje directamente una excepción fatal y un quiebre en la aplicación (`Throw Exception`).



Pregunta:

Según las normativas de arquitectura y diseño limpio SOLID, ¿qué principio de estructuración de clases rompió por completo el desarrollador?



Opciones:

A) Principio de Inversión de Dependencia (DIP)

B) Principio de Segregación de Interfaz (ISP)

C) Principio de Sustitución de Liskov (LSP)

D) Principio Abierto/Cerrado (OCP)



Respuesta correcta: C



Explicación:

La "L" de SOLID (Principio de Sustitución de Liskov). Dictamina que cualquier objeto hijo de una clase superior debe ser perfectamente capaz de reemplazar a su padre en el código sin romper en absoluto la y la arquitectura funcional del programa general. Al obligar a heredar a un `Avestruz` forzándolo a tener un método `volar()` que destruye y estrella el programa global, se demuestra que `Avestruz` no debió heredar de una clase con atributos voladores.



---



## CASO 135



Contexto:

El equipo comercial en un proyecto ágil redacta una Historia de Usuario para la función "Carrito de Compras". El ingeniero líder la revisa y se la devuelve, argumentando que la historia carece de un elemento clave necesario para que el área de Control de Calidad (QA) y el programador sepan matemáticamente qué condiciones funcionales mínimas deben existir para poder dar por finalizada la tarea exitosamente.



Pregunta:

¿Qué elemento oficial y medible falta por redactar obligatoriamente dentro de la Historia de Usuario de Scrum?



Opciones:

A) Los Diagramas UML del Back-end Estructural

B) Criterios de Aceptación (Acceptance Criteria)

C) Casos de Uso Extendidos Técnicos

D) Puntos Estimados de Esfuerzo (Story Points)



Respuesta correcta: B



Explicación:

Los Criterios de Aceptación son una lista y binaria de reglas adjunta a cada Historia de Usuario. Mientras que la Historia de Usuario redacta el deseo del usuario en forma de conversación funcional general, los Criterios de Aceptación limitan el campo y definen técnicamente la prueba final para el éxito del desarrollo (Ej. "El botón debe calcular el 16% de IVA", "El pago no debe exceder los 10 segundos"). Sin estos criterios, nadie sabe en qué momento exacto el trabajo ha concluido.



---



## CASO 136



Contexto:

Un ingeniero debe programar una librería de procesamiento de listas de datos muy desordenadas de hasta 100,000 elementos. Decide usar un algoritmo fundamental de las ciencias computacionales: elige un número de la lista para usarlo como "Pivote", organiza los datos menores a la izquierda del pivote y los mayores a la derecha, para luego repetir esta estrategia matemáticamente sobre ambas mitades resultantes por separado.



Pregunta:

¿Qué potente algoritmo de ordenamiento y arquitectura Big O está diseñando el ingeniero?



Opciones:

A) Algoritmo Merge Sort de desempeño O(n)

B) Algoritmo Quick Sort de desempeño óptimo O(n log n)

C) Algoritmo Selection Sort de O(n^2)

D) Algoritmo Bubble Sort de alta fragmentación O(1)



Respuesta correcta: B



Explicación:

El ordenamiento Quick Sort (Ordenación Rápida) es el algoritmo más usado en bibliotecas nativas de todos los lenguajes de programación modernos. Aprovecha de manera brillante la estrategia "Divide y Vencerás" definiendo Pivotes y particionando el arreglo de datos en su lugar físico original, brindando en la mayoría aplastante de los casos cotidianos un tiempo de ejecución eficiente de O(n log n) superior a iteraciones lineales de O(n²).



---



## CASO 137



Contexto:

El director del campus universitario decide modernizar las antenas y ruteadores inalámbricos en los salones de clases argumentando que el viejo protocolo `802.11ac` ya no soporta la alta densidad de decenas de alumnos usando múltiples dispositivos de manera simultánea sin degradar enormemente la velocidad y provocar choques masivos de red.



Pregunta:

¿A qué protocolo inalámbrico moderno y de sexta generación (Wi-Fi 6) debe migrar para garantizar multiplexación masiva en entornos saturados de aparatos y conectividad de antenas de alta demanda computacional?



Opciones:

A) 802.11n (Wi-Fi 4 Clásico)

B) 802.11ax (Wi-Fi 6 Moderno)

C) 802.11b (Wi-Fi Legacy de Alta Distancia)

D) 802.1X (Protocolo Seguro Autenticado)



Respuesta correcta: B



Explicación:

El protocolo 802.11ax (comercialmente conocido como Wi-Fi 6) incorpora la tecnología crítica OFDMA (Múltiple Acceso por División de Frecuencias Ortogonales). Esto permite al punto de acceso subdividir un canal inmenso inalámbrico en pequeños conductos, lo que logra transmitir datos a múltiples aparatos de manera matemáticamente simultánea y organizada, acabando con el cuello de botella tradicional en auditorios densamente saturados.



---



## CASO 138



Contexto:

El encargado del centro de datos crea en Linux un archivo de automatización usando comandos de bash y lo guarda como `respaldo.sh`. En la primera línea del archivo de texto ha escrito rigurosamente el código `#!/bin/bash`. Sin embargo, al teclear `./respaldo.sh` en la consola, el sistema operativo le arroja un error absoluto de "Permiso Denegado".



Pregunta:

¿Qué comando administrativo faltó ejecutar previamente sobre el archivo en el nivel de permisos para permitir que el núcleo del sistema procediera con la lectura y ejecución del script algorítmico?



Opciones:

A) Asignarle permisos Root globales usando `sudo file./respaldo.sh`

B) Cambiar la bandera de permisos agregando ejecución matemática usando `chmod +x respaldo.sh`

C) Elevar el archivo sobre la capa estricta del kernel usando `chown root:root respaldo.sh`

D) Forzar el inicio manual del demonio shell `sh./respaldo.sh --execute`



Respuesta correcta: B



Explicación:

En los entornos de la rama Unix y Linux, crear un documento de texto y añadirle la extensión `.sh` no es suficiente para convertirlo en un programa interactivo. Linux ignora las extensiones visuales y se guía netamente por su matriz interna de permisos (Lectura, Escritura y Ejecución). Se requiere forzosamente usar `chmod +x` (Cambiar modo sumando el bit "eXecutable") para que el motor interno acepte procesarlo como un software funcional.



---



## CASO 139



Contexto:

En una transacción financiera SQL, la Transacción A bloquea el "Registro de Cuenta Fija" del cliente y luego solicita el "Registro de Cuenta de Ahorros" del mismo cliente. Al mismo tiempo y en milisegundos, la Transacción B bloquea primero el "Registro de Cuenta de Ahorros" y después intenta acceder al "Registro de Cuenta Fija". El sistema entra en una pausa perpetua colapsada donde ambos módulos informáticos están esperando indefinidamente a que el otro suelte su objeto matemático.



Pregunta:

¿Qué solución técnica automatizada en las bases de datos modernas interviene y quiebra radicalmente el famoso "Abrazo Mortal" y la parálisis arquitectónica generada por la colisión?



Opciones:

A) Un algoritmo de semáforo local binario y paginación en memoria swap dinámica

B) La Base de Datos reinicia en cascada apagando los servicios secundarios forzosos

C) El Motor de Bases de Datos usa un Monitor Algorítmico de Grafo de Esperas; detecta el ciclo infinito y aplica un proceso forzado (Kill) cancelando (Rollback) a la transacción que él considera menos costosa o como la "víctima".

D) La base de datos ignora las llaves abriendo la lectura sucia en el entorno de ambas cuentas.



Respuesta correcta: C



Explicación:

El abrazo mortal (Deadlock / Interbloqueo) es el peor terror de un programador concurrente. Los motores SQL modernos corren un vigilante interno invisible. Cuando dibuja un mapa de grafos de hilos y ve que dos procesos se bloquearon en un bucle cerrado matemático infinito, el motor asume el mando total y "mata" automáticamente a una de las dos consultas (la víctima) deshaciendo todo su trabajo, devolviendo la vida y funcionalidad del sistema central.



---



## CASO 140



Contexto:

El líder del equipo técnico decide elevar la rigidez de calidad del software y exige la implementación de una herramienta avanzada automatizada como SonarQube u otros analizadores en el entorno. Se decreta que el código nuevo enviado por cualquier desarrollador no podrá pasar a producción a menos que logre certificar matemáticamente la "Métrica Funcional del 80%".



Pregunta:

¿A qué métrica clave se refiere el estándar de la ingeniería de software moderna cuando exige alcanzar el "80% de calidad en pruebas y flujos técnicos"?



Opciones:

A) A la Cobertura de Código (Code Coverage), exigiendo que el 80% de las líneas y condicionales del código fuente escrito hayan sido ejecutadas e inspeccionadas exitosamente durante la corrida técnica de las Pruebas Unitarias de software antes de enviar a producción.

B) Al rendimiento métrico de la latencia en milisegundos de la red en cada iteración del código.

C) Al 80% de éxito matemático analizado en la velocidad de la base relacional del backend global.

D) Al acoplamiento arquitectónico de interfaces gráficas.



Respuesta correcta: A



Explicación:

La Cobertura de Código (Code Coverage) es una métrica incuestionable de aseguramiento de calidad (QA). Si un programador elabora un sistema inmenso con 1,000 líneas repletas de condiciones "If/Else" funcionales, pero al momento de correr las pruebas (Testing Unitario) sus simuladores solo acceden y cruzan el 20% de esas ramas condicionales dejándolo inexplorado, el sistema rechaza el código por fragilidad al poseer un altísimo nivel de riesgo oculto para el futuro del cliente final.

\newpage
# Bloque 8
## CASO 141



Contexto:

El hospital general necesita un rediseño de red corporativa. Implementan un servidor web externo para que los pacientes de todo el mundo consulten horarios de médicos. Sin embargo, también cuentan con un servidor interno que aloja el expediente clínico crítico. Por regla máxima de seguridad gubernamental, ambos servidores deben tener restricciones de red separadas físicamente.



Pregunta:

¿En qué sector perimetral específico del Firewall corporativo debe instalarse estratégicamente el servidor web público para aislarlo correctamente del servidor interno crítico?



Opciones:

A) En el clúster enrutador interno VLAN

B) En una Zona Desmilitarizada (DMZ)

C) En un segmento Switch Capa 2 local

D) En la misma subred usando máscara restrictiva 



Respuesta correcta: B



Explicación:

La Zona Desmilitarizada (DMZ) es un segmento de red aislado y ubicado entre Internet público y la red interna de la empresa (LAN). Los servidores que forzosamente deben recibir visitas de extraños (como páginas web o correos) se ponen ahí. Así, si un atacante compromete el servidor web, seguirá bloqueado por la segunda capa del firewall corporativo y no podrá acceder al área profunda donde residen las bases de datos de los pacientes.



---



## CASO 142



Contexto:

Un ingeniero compite diseñando un algoritmo para un robot de logística en un almacén inteligente. El robot tiene una caja con una capacidad máxima de 15 kilogramos. Existen diferentes artículos de distintos pesos y valores monetarios únicos. El robot debe calcular y llevarse la combinación matemática exacta de artículos que sume el máximo valor monetario posible, sin superar bajo ninguna circunstancia el peso permitido de la caja.



Pregunta:

¿A qué problema matemático y algorítmico clásico de la programación computacional óptima se están enfrentando?



Opciones:

A) Problema de los Filósofos Comensales (Dining Philosophers)

B) Problema del Viajante de Comercio (Traveling Salesman)

C) El Problema de la Mochila (Knapsack Problem)

D) Las Torres de Hanói Computacional



Respuesta correcta: C



Explicación:

El Problema de la Mochila (Knapsack Problem 0/1) es uno de los máximos exponentes de los retos matemáticos de optimización combinatoria. No se puede resolver a la ligera siendo avaro y escogiendo "el más caro primero", porque podría ser muy pesado y arruinar el espacio del resto. Su solución perfecta exige el despliegue del paradigma algorítmico computacional avanzado de Programación Dinámica evaluando un mapa de memoria y sub-problemas.



---



## CASO 143



Contexto:

El equipo de ventas de la matriz requiere ejecutar el reporte mundial financiero de los últimos diez años, un análisis exhaustivo que aglutina cincuenta tablas y suma miles de millones de filas en cruce. Al correrlo, el motor SQL sufre calculando todas las matemáticas al vuelo durante horas y colapsando el servidor completo. El DBA decide congelar los resultados y grabarlos físicamente en un espacio separado en el disco, permitiendo que las lecturas y consultas subsiguientes sean casi instantáneas.



Pregunta:

¿Qué tecnología relacional avanzada aplicó el Administrador de la Base de Datos para sanar y esquivar los cuellos de botella de esta demanda?



Opciones:

A) Vista Materializada (Materialized View)

B) Vista Estándar Común 

C) Disparador de Paginación Recursiva 

D) Fragmentación B-Tree de Indices Forzados



Respuesta correcta: A



Explicación:

A diferencia de una Vista Común (View normal de SQL, que solo actúa como un alias y obliga a correr la consulta de nuevo matemáticamente), una Vista Materializada ejecuta la consulta infernal una sola vez y graba los resultados físicos definitivos en una nueva tabla oculta del disco duro. Es el estándar número uno en "Almacenes de Datos / Data Warehouses" donde las consultas son inmensamente largas pero se pueden programar para refrescar y regenerarse matemáticamente por la noche de manera invisible.



---



## CASO 144



Contexto:

Una plataforma gigantesca como Netflix o Spotify sufre problemas en el departamento de desarrollo. El equipo que gestiona y programa "La barra lateral del menú web" retrasa constantemente la publicación de actualizaciones por esperar a que el equipo que programa "El reproductor de video" termine, ya que ambos comparten y editan en el mismo archivo gigante monolítico de React/Angular.



Pregunta:

Para resolver y fragmentar la aplicación del cliente final permitiendo que ambos equipos publiquen actualizaciones web y utilicen tecnologías independientes en la misma pantalla web al mismo tiempo sin colisionar lógicamente, ¿qué modelo de arquitectura y diseño debe emplearse?



Opciones:

A) Patrón MVC Estricto 

B) Despliegue de Aplicación Web de Página �anica (SPA) nativa

C) Arquitectura de Microfrontends

D) Refactorización a Microservicios de Back-End Rest API



Respuesta correcta: C



Explicación:

La Arquitectura de Microfrontends toma el mismo concepto salvador de los "Microservicios", pero lo aplica al lado del navegador e interfaz gráfica del cliente (Front-End). Consiste en dividir la página web visual inmensa en pequeñas piezas estructurales separadas lógicamente; cada equipo puede desarrollar, probar y publicar su "pedazo" de la pantalla de forma totalmente independiente de la de sus compañeros de trabajo sin obligar a compilar un programa global inmanejable y pesado.



---



## CASO 145



Contexto:

En la programación modular estricta de una tienda web, el arquitecto nota que las clases del "Cálculo de Descuentos" llaman e importan rígidamente dentro de su interior a clases externas de bases de datos de bajo nivel para buscar los catálogos. El arquitecto rechaza el código y exige inyectar una regla: Las reglas superiores de negocio jamás deben depender e importar archivos físicos básicos de la tecnología del software, y ambos módulos deben conectarse usando una abstracción en su lugar funcional.



Pregunta:

Según las normativas de SOLID y diseño modular, ¿qué principio fue violado de manera contundente y corregido estructuralmente?



Opciones:

A) Principio de Responsabilidad �anica (SRP)

B) Principio de Sustitución de Liskov (LSP)

C) Principio de Inversión de Dependencias (Dependency Inversion Principle - DIP)

D) Principio de Abierto y Cerrado (OCP)



Respuesta correcta: C



Explicación:

La "D" de SOLID es el muro final arquitectónico. Dictamina formalmente que "Los módulos de alto nivel (como la inteligencia o reglas de tu banco) nunca deben saber de la existencia ni estar encadenados a los módulos básicos de bajo nivel tecnológico (cómo enviar un email o la marca de tu base de datos)". Ambos dominios deben depender e interactuar a través de Interfaces (Contratos vacíos abstractos), haciendo al software sumamente testeable, reemplazable e inyectable dinámicamente sin sufrimiento arquitectónico.



---



## CASO 146



Contexto:

El Sistema Operativo Linux moderno de un desarrollador cuenta con escasa memoria RAM. Cuando el usuario hace doble clic para abrir la suite completa pesada del paquete Office o LibreOffice, el sistema operativo no carga los 2 Gigabytes del programa de golpe en la memoria RAM, sino que engaña matemáticamente al programa dejándolo en el disco duro, y va trayendo fragmentos de 4 Kilobytes a la memoria en el procesador estrictamente a medida que el programa avanza y los va requiriendo para funcionar lógicamente.



Pregunta:

¿Cómo se le denomina técnicamente a esta funcionalidad vital propia de los sistemas de administración de memoria y arquitectura contemporánea?



Opciones:

A) Carga Segmentada Lineal de Variables Directas

B) Memoria de Paginación Estricta Asignada en ROM

C) Paginación a Demanda (Demand Paging / Fallo de Página)

D) Re-localización Dinámica Secuencial Absoluta



Respuesta correcta: C



Explicación:

La Paginación a Demanda (Demand Paging) es la magia de los Sistemas Operativos modernos. El núcleo de Linux y Windows asume de manera perezosa (Lazy) que un usuario nunca usará todas las funciones matemáticas de un gran software; por lo tanto, solo transfiere al procesador las "Páginas de memoria" específicas al momento exacto en el que el programa incurre en un "Page Fault" (Fallo de página: buscar un dato necesario que aún no estaba cargado).



---



## CASO 147



Contexto:

El conmutador físico principal (Switch) de un centro comercial administra las cámaras de seguridad y paralelamente las computadoras públicas de atención al cliente. El administrador ordena la creación de Redes Virtuales (VLANs) para que se mantengan incomunicadas lógicamente, pero ambos tráficos deben fluir en el edificio a través del mismo único y grueso cable principal (Troncal / Trunk Link) sin revolver ni contaminar a qué grupo de red pertenecen los datos originados.



Pregunta:

¿Qué estándar o protocolo de etiquetado a nivel Capa 2 manipula y estampa los paquetes introduciendo la firma de red al atravesar esta manguera troncal de hardware y switches?



Opciones:

A) Protocolo IPv6 IPsec Dinámico Local

B) Estándar IEEE 802.1Q (VLAN Tagging / Etiquetado)

C) Multiplexación de División CSMA/CD

D) Spanning Tree Protocol Básico Local



Respuesta correcta: B



Explicación:

El IEEE 802.1Q (coloquialmente conocido en el gremio de redes como "dot1q") es la llave arquitectónica de las redes virtuales empresariales. Cuando la información de muchas redes debe viajar compartiendo un solo cable matriz (Puerto Trunk), el protocolo abre el paquete e inyecta una etiqueta (VLAN ID). El Switch receptor del otro lado lee el ID, reubica el paquete a su entorno y le retira la etiqueta sin que las computadoras finales perciban los cambios.



---



## CASO 148



Contexto:

Al ejecutar un SELECT SQL complicado, un proceso interno e invisible del servidor lee tus instrucciones relacionales e intenta inventar múltiples rutas y maneras matemáticas de buscar la información, calculando y evaluando cuál es la más rápida o la que gastará menos memoria RAM, para finalmente ejecutar la ganadora.



Pregunta:

¿Qué componente o sistema central algorítmico interno reside en el corazón de todas las bases de datos funcionales contemporáneas realizando esta ingeniería previa a favor del rendimiento relacional?



Opciones:

A) El Optimizador de Consultas (Query Optimizer) y el Plan de Ejecución interno (Execution Plan)

B) El Demonio Compilador Sintáctico Secuencial de Variables de Entorno 

C) El Motor de Almacenamiento InnoDB Local

D) El Árbol B Básico Paginado y Controlado en Memoria Heap Indexada



Respuesta correcta: A



Explicación:

El Optimizador de Consultas de un Motor (Query Optimizer) asume que la instrucción SQL pudo haber sido estructurada ineficientemente por el usuario. Funciona analizando y ponderando los índices con algoritmos estadísticos avanzados. El comando EXPLAIN expone a la vista del ingeniero la ruta final (Execution Plan) que la máquina inventó. Un programador avanzado siempre usa este plano para descubrir los cuellos de botella exactos.



---



## CASO 149



Contexto:

Un ingeniero requiere programar un software detector de plagio textual como los de la Universidad, capaz de buscar y analizar cadenas de frases específicas dentro de enciclopedias gigantescas de libros sin ralentizarse. Descarta la búsqueda ordinaria secuencial, y aplica un algoritmo inteligente avanzado y comprobado que lee y compara el texto creando una pequeña tabla matriz de coincidencias parciales, permitiéndole dar saltos largos y evitar releer segmentos para alcanzar una eficiencia inponente.



Pregunta:

¿Qué complejo e infalible algoritmo matemático computacional implementó en su búsqueda paralela?



Opciones:

A) El Algoritmo Backtracking Exhaustivo Universal

B) Algoritmo de Flujo Matemático de Ford-Fulkerson en Grafos y Rutas

C) Algoritmo de Búsqueda de Cadenas Texto Knuth-Morris-Pratt (KMP String Matching Algorithm)

D) La Búsqueda Binaria de Matrices Dobles Complejas



Respuesta correcta: C



Explicación:

El Algoritmo avanzado KMP (Knuth-Morris-Pratt) es el remedio frente a algoritmos de comparación clásicos ineficientes y lineales de "Fuerza Bruta" en textos (que retroceden desde cero ante cada error). El algoritmo KMP pre-procesa el texto clave creando y evaluando de antemano un sub-arreglo matriz de bordes y fallos, lo que le permite deslizarse a gran velocidad sobre miles de textos gigantes sin volver hacia atrás nunca.



---



## CASO 150



Contexto:

Un portal gubernamental será lanzado el próximo mes. El equipo de ingenieros en pruebas (QA) simula con software especializado inyectar el sistema web con 2,000 conexiones simuladas simultáneas y regulares para verificar si el servidor y la arquitectura web pueden tolerar el nivel básico promedio diario de usuarios con el que esperan trabajar cómodamente los primeros 3 años funcionales tras publicarlo.



Pregunta:

¿Qué tipo de ciclo y pruebas de calidad de rendimiento sistemático (Performance Testing) acaba de estructurar y realizar el equipo operativo?



Opciones:

A) Pruebas de Escalabilidad Local Básicas (Scalability Local Testing)

B) Pruebas de Tensión Estructural y Desbordamiento (Spike Testing Avanzado)

C) Pruebas Críticas de Carga (Load Testing)

D) Pruebas Formidables de Estrés Total (Stress Testing)



Respuesta correcta: C



Explicación:

En los entornos arquitectónicos de Software Quality Assurance y Testing, se debe separar el análisis en subcategorías. La "Prueba de Carga" (Load Test) mide si el software cumple establemente frente a los miles de usuarios que el servidor presupuestó albergar cómodamente. Es vital diferenciarla de la famosa "Prueba de Estrés" (Stress Test), cuyo fin técnico radica en ahogar al procesador arrojando millones de tráficos exagerados sin sentido hasta ver a la infraestructura desvanecerse para entender sus límites críticos finales.



---



## CASO 151



Contexto:

En la programación modular de arquitecturas de componentes limpios y mantenibles, el Líder de Proyecto inspecciona el código y decreta: "Las funciones de nuestras Clases Orientadas a Objetos deben siempre dedicarse estrictamente a una sola meta conjunta; pero también deben mantenerse estructuralmente separadas de otras clases para que, si un departamento actualiza su clase central general, a ningún otro desarrollador se le rompa su trabajo".



Pregunta:

¿Con qué dupla de términos inquebrantables de ingeniería y estructura del diseño modular arquitectónico se está guiando el requerimiento del director del proyecto?



Opciones:

A) Alto Acoplamiento Sistémico y Baja Cohesión Operativa

B) Alta Cohesión (High Cohesion) y Bajo Acoplamiento Modular (Low Coupling)

C) Alta Polimorfización Modular Local y Abstracción Total Funcional Abstracta

D) Inversión Dinámica Global y Herencia Profunda Extensa Simple



Respuesta correcta: B



Explicación:

"Alta Cohesión y Bajo Acoplamiento" es el lema mundial de los ingenieros arquitectónicos del software global. La Cohesión mide que las partes dentro del método sean afines entre sí (no puedes agrupar funciones de "imprimir nómina" junto a métodos para "renderizar gráficos 3D" en un mismo componente). Un Bajo Acoplamiento persigue que una clase o servicio no quede encadenada a las particularidades internas secretas de otra, sino que ambas deben colaborar ciegamente mediante contratos (Interfaces).



---



## CASO 152



Contexto:

Se está diseñando el marcapasos médico computarizado interno del corazón y la red computacional del freno (ABS) de la planta automotriz. Los arquitectos descartan instalarles el sistema operativo Windows o Linux común, indicando categóricamente que "si el sistema operativo llega a distraerse priorizando procesos internos sin valor, o si su kernel sufre un retraso en contestar e interrumpir el procesador, una vida estaría en riesgo".



Pregunta:

Bajo requerimientos de velocidad determinista inalterable, ¿qué arquitectura base e instalación de Sistema Operativo estructural global de la industria y bajo nivel deben utilizar para esta computadora?



Opciones:

A) Un Sistema Operativo Distribuido Basado en Mensajes y Microservicios Centralizados

B) Un Sistema Operativo Multiusuario Multitarea Segmentado en Paginación Local (Timesharing OS Global)

C) Un Sistema Operativo Clásico de Tiempo Real Estricto (Hard Real-Time Operating System / RTOS)

D) Un Sistema Operativo Simple y Monotarea Basado en Lotes Estructurales Secuenciales Dinámicos Básicos de Hardware



Respuesta correcta: C



Explicación:

Un RTOS "Duro" (Real Time Operating System o SOTR) garantiza de forma extrema que las instrucciones enviadas a sus componentes vitales van a procesarse y dar la contestación en un plazo estricto de tiempo prefijado y determinístico, en vez de un "plazo aproximado y variable sin urgencia como hace Windows al mover y cargar tu archivo pesado". Para la medicina y el sector aeroespacial, fallar la métrica exacta de velocidad límite equivale a fallar totalmente.



---



## CASO 153



Contexto:

El administrador nota que cuando cien computadoras del departamento logran acceder al mismo servidor externo de puerto web seguro cifrado (Puerto TCP 443 HTTPS corporativo seguro en la Nube), las cien computadoras reciben la respuesta simultánea correctamente cruzada sin enredar las ventanas del navegador con lo que otro usuario local pidió al mismo servidor global.



Pregunta:

Bajo las reglas de los modelos enrutados del sistema, ¿qué característica esencial de la Capa de Transporte (TCP) es implementada por cada máquina cliente local para identificar de retorno individualmente a su pestaña específica a pesar de dirigirse todas al mismo servidor y puerto universal mundial único 443 HTTP central del destino final?



Opciones:

A) El Encapsulamiento Virtual Cíclico Simple NAT y el Modelo IP dinámico

B) La Asignación de Puertos Origen (Ephemeral Source Ports locales)

C) El Control Paralelo Físico Matemático del Sumatorio Checksum Fijo Local Dinámico Paralelo Cíclico Global 

D) La Dirección Aleatoria MAC del Puerto General en Capa Dinámica Central



Respuesta correcta: B



Explicación:

El servidor externo seguro corporativo espera la petición sentado pacíficamente en su puerto "443 Estándar Universal (Destination Port)". Pero la computadora cliente para diferenciarse, crea un "Socket de Red" combinando su IP con un puerto número único asignado de manera aleatoria llamado "Puerto de Origen Efímero" o Ephemeral Source Port (ej. 50,422 o 56,128). Cuando el servidor de Amazon le contesta, envía la respuesta adjuntando y atando exactamente el resultado a ese Puerto individual exclusivo, asegurando que a tu pestaña le llegue tu video y no el de tu compañero.



---



## CASO 154



Contexto:

El volumen del juego de un celular colapsa tu servidor central relacional MySQL. Necesitan más poder para aguantar las millones de partidas. El jefe ordena agregarle RAM, procesador, y cambiar el disco duro por un inmenso almacenamiento de estado sólido NVMe último modelo. Con este incremento único a la máquina central actual local en la torre de seguridad, creen que aguantarán 3 años antes de requerir un servidor superior.



Pregunta:

¿Qué método e iniciativa técnica estructural directa de arquitectura e ingeniería del Cloud Computing para crecimiento está ejerciendo tu jefe con sus acciones corporativas internas ?



Opciones:

A) Escalabilidad Distribuida Dinámica

B) Escalabilidad Horizontal Global (Scale-Out o Nodos Independientes Masivos)

C) Crecimiento por Microservicios Vertical Dinámico Local Píldora

D) Escalabilidad Vertical Estructural (Scale-Up / Agrandamiento Monolítico de un único Equipo)



Respuesta correcta: D



Explicación:

La Escalabilidad Vertical (Scale-Up) de la nube moderna se fundamenta estrictamente en la antigua usanza directa: tomar al servidor central y hacerlo grande y gigante hasta exprimir el tope de la placa base incrementando RAM y CPU. Su limitante es que tiene un tope tecnológico y requiere apagar el servidor. Su rival arquitectónico poderoso invencible es el Horizontal (Scale-Out): En vez de un súper servidor monstruo gigantesco, utilizas cientos de computadoras simples, baratas e independientes conectadas en paralelo formando un clúster de alta disponibilidad.



---



## CASO 155



Contexto:

El ingeniero implementa una Tabla Hash para asignar correos. Como el espacio reservado es limitado, ocurre que la función matemática designa que los datos de los usuarios "Ana" y "Carlos" irán destinados al mismo índice de casillero (Bucket). El programador salva esto permitiendo que el objeto final no se re-escriba mutuamente por colisión; en su lugar enlaza la variable mediante punteros formando en esa casilla interna una pequeña lista entrelazada.



Pregunta:

¿Cómo se denomina formalmente a esta brillante e infalible solución de arquitectura de colecciones implementada para sortear la anomalía estructural de diccionario algorítmico global?



Opciones:

A) Resolución Dinámica Aleatoria Lineal Central Fija

B) Resolución Absoluta de Colisiones Por Encadenamiento Separado (Separate Chaining)

C) Resolución Abierta y Exploración por Sondeo Lineal de Capacidad Limitada

D) Hashing y Re-Hash Fractal Cíclico Matemático Dinámico Absoluto Central 



Respuesta correcta: B



Explicación:

El Encadenamiento (Chaining de diccionarios) en la algoritmia, absorbe tranquilamente la inevitable "Colisión" matemática asignando la responsabilidad del orden matemático estricto a una sub-lista secundaria (Linked List estricta). Su rival alternativo es el "Sondeo Lineal de Dirección Abierta (Probing)": Si un casillero fijo local está lleno por colisión, salta algorítmica y desesperadamente a los casilleros paralelos vecinos del arreglo matriz buscando un hueco libre para estacionar el valor.



---



## CASO 156



Contexto:

El equipo interviene la base de datos MySQL el fin de semana. No hay ningún ticket, error, fallo o queja levantada por los usuarios, pero ellos purgan la base, actualizan el motor y corren reconstrucción de índices fragmentados para impedir que el sistema falle por ralentización en los próximos cuatro meses y asegurar el rendimiento.



Pregunta:

¿Qué categoría del estándar y modelo clásico universal de mantenimiento de Ingeniería y ciclo de software están efectuando anticipadamente?



Opciones:

A) Mantenimiento Evolutivo Local Dinámico Paralelo General Directo Central

B) Mantenimiento Adaptativo Cíclico Simple Lineal Abstracto 

C) Mantenimiento Preventivo y 

D) Mantenimiento Correctivo Directo Fijo Simple Paralelo Central



Respuesta correcta: C



Explicación:

El Mantenimiento Preventivo ocurre proactivamente antes de un fallo. El "Correctivo" repara bugs que ya rompieron el sistema y generaron tickets. El "Adaptativo" modifica al sistema si el banco cambió sus normativas fiscales obligatorias, y el "Evolutivo o Perfectivo" agrega características nuevas, funciones extra y mejoras que el cliente pagó por tener transaccionalmente en el código futuro.



---



## CASO 157



Contexto:

Un científico codifica analíticamente un cálculo en un script. Empieza declarando la variable en su código fuente como: `edad = 5;`. El compilador del lenguaje no arroja ningún mensaje y arranca; pero treinta líneas más abajo en pleno tiempo de procesamiento del programa, le asigna y modifica el valor escribiendo `edad = "Joven"`. El sistema procesa la orden, destruye el formato numérico interno y ajusta la variable cambiándola dinámicamente como objeto de texto de manera natural en memoria.



Pregunta:

¿Bajo qué categoría de paradigma de lenguaje arquitectónico estructurado en tipado operó el sistema sin abortar la ejecución?



Opciones:

A) Lenguaje Estrictamente Tipado y Compilado (Statically Typed Language)

B) Lenguaje Universal Paradójico Multi Cíclico Lineal Fijo Abierto 

C) Lenguaje de Tipado Débil y Dinámico Simple (Dynamically Typed Language)

D) Lenguaje Interpretado Por Bloques Fijos y Centrales Paralelos Simples



Respuesta correcta: C



Explicación:

En Lenguajes formalmente de tipado estricto "" (como Java, C#), la declaración obliga a firmar con sangre el molde: `int edad = 5;` es una muralla matemática; si luego le metes un `edad = "Joven"`, explota en tiempo de compilación y no corre. Lenguajes de tipado "Dinámico" (Python, JavaScript clásico) determinan el peso, forma y tipo del objeto sobre el camino al vuelo "en tiempo de ejecución (runtime)", permitiendo a la variable mutar a voluntad.



---



## CASO 158



Contexto:

Un servicio clave que gestiona las peticiones del sistema de impresión Linux central no tiene ninguna ventana ni interfaz gráfica. Corre por meses enteros invisible bajo el agua y memoria RAM en segundo plano, esperando pacíficamente a que un cliente envíe un documento para ser procesado en la cola y puramente central de red dinámica.



Pregunta:

¿Qué categoría computacional estructural y término central Unix/Linux clásico define globalmente a este programa que opera ininterrumpidamente en fondo?



Opciones:

A) Un Macro-Script Automático 

B) Una Máquina Virtual 

C) Un Servicio Windows Clásico Abstracto

D) Un Demonio de Segundo Plano (Background Daemon)



Respuesta correcta: D



Explicación:

Los "Daemon" (Demonios) son las piezas vitales en arquitectura Linux. Son procesos y programas silenciosos que cobran vida al arrancar la computadora, desatándose de cualquier consola (terminal), viviendo sin interfaz gráfica alguna, haciendo todo el trabajo pesado de fondo de manera y paralela (Ej. El Demonio cron de reloj, el servidor web Apache httpd, o el controlador dockerd).



---



## CASO 159



Contexto:

El proveedor ISP usa un canal de fibra óptica única para la red metropolitana cruzada. Es físicamente inviable lanzar y colocar un hilo separado para cada cliente. Los arquitectos toman los canales independientes de diez edificios diferentes y los mezclan y envían simultáneamente empujándolos dentro del mismo hilo óptico al mismo tiempo separando las transmisiones con distintos colores de luz y frecuencias sin que interfieran entre ellas.



Pregunta:

¿Qué concepto pilar en la telecomunicación y teoría general de Capa 1 de redes computacionales permite interconectar y paralelizar múltiples canales de transmisión sobre y a lo largo de un mismo conducto físico de hardware?



Opciones:

A) La Paginación y Filtrado Cíclico de Antenas y Canales Dinámicos

B) El Subneteo 

C) La Modulación Unicast 

D) La Multiplexación General (Multiplexing)



Respuesta correcta: D



Explicación:

La Multiplexación (Multiplexing) aglutina docenas de llamadas o flujos de datos independientes, codificándolos y enviándolos asíncronamente mezclados sobre el mismo canal compartido físico (cable o espectro de radio), para luego volverlos a desarmar o demultiplexar en el router de llegada sin que las conversaciones y tramas se crucen o interfieran lógicamente, multiplicando la capacidad del hardware.



---



## CASO 160



Contexto:

El administrador purista del sistema de ventas SQL no confía pasivamente en los programadores front-end web para cuidar que el negocio no asigne precios de cero pesos o precios matemáticamente negativos a una factura desde la interfaz visual. Para asegurarse a toda costa de que ningún registro falso corrompa las reglas, incrusta a nivel de la estructura de la base central una barrera de código SQL relacional que rechazará cualquier "INSERT" donde la columna del "Monto" sea menor numéricamente a un peso.



Pregunta:

¿Qué mecanismo clásico forzoso de modelado de integridad y arquitectura relacional SQL ha forjado directamente en la capa de la base de datos de manera definitiva?



Opciones:

A) Trigger DDL 

B) Secuencia de Generación Cíclica de Disparo

C) Llave Foránea y Integradora Mutante Cíclica

D) Restricción de Integridad de Dominio o Verificación de Limites (CHECK Constraint Estricto)



Respuesta correcta: D



Explicación:

Las Restricciones "CHECK" (Restricción de Dominio) te blindan a nivel de núcleo de base de datos. Al obligar a la columna a seguir una regla condicional (ej. `Monto > 0` o `Estado IN ('Activo', 'Pausado')`), ni siquiera el desarrollador o administrador del sistema con máximos privilegios puede obligar y forzar a la tabla a guardar un estado o valor inválido o numéricamente inaceptable bajo las políticas matemáticas.

\newpage
# Bloque 9
## CASO 161



Contexto:

El administrador de redes requiere elegir un protocolo de enrutamiento interno. Desea que el algoritmo no solo cuente la cantidad de enrutadores, sino que considere estrictamente el ancho de banda del enlace y la velocidad física del cable para formar la ruta óptima basada en el costo.



Pregunta:

¿Qué protocolo dinámico de estado de enlace (Link-State) utiliza esta métrica en la industria?



Opciones:

A) RIP (Routing Information Protocol)

B) BGP (Border Gateway Protocol)

C) OSPF (Open Shortest Path First)

D) EIGRP (Enhanced Interior Gateway Routing Protocol)



Respuesta correcta: C



Explicación:

El protocolo OSPF es el estándar de redes corporativas. A diferencia de protocolos de Vector Distancia como RIP, OSPF mide el costo matemático del enlace, prefiriendo dar saltos rápidos por fibra óptica en lugar de usar rutas cortas por cables de cobre lentos.



---



## CASO 162



Contexto:

En la arquitectura de un motor de bases de datos, los índices se construyen frecuentemente bajo la estructura de un Árbol B+. El DBA nota que en consultas de rangos (BETWEEN), el sistema no baja y sube repetidamente por las ramas, sino que localiza el primer valor y navega fluidamente en línea recta por el fondo leyendo filas velozmente.



Pregunta:

¿Qué diferencia estructural clave del Árbol B+ sobre el Árbol B clásico permite este rendimiento horizontal?



Opciones:

A) Los Nodos raíz almacenan todas las ramas cruzadas.

B) En el Árbol B+ los nodos hoja finales (donde residen todos los datos) están vinculados mediante una Lista Enlazada secuencial.

C) El Árbol B+ carece de raíces superiores.

D) Carga en memoria RAM todos los datos en estructuras Heap.



Respuesta correcta: B



Explicación:

En el Árbol B+, todos los datos residen exclusivamente en las hojas finales en el piso inferior del árbol, y dichas hojas se conectan entre sí con punteros formando un carril horizontal. Si buscas un rango, localiza el inicio y se desliza linealmente hacia la derecha leyendo sin volver a subir.



---



## CASO 163



Contexto:

Un programador necesita actualizar el salario del 10% de los empleados en una tabla masiva. En lugar de ejecutar una sola instrucción UPDATE, implementa un Cursor en SQL, recorriendo y procesando la tabla manualmente "fila por fila". El servidor sufre una caída de rendimiento.



Pregunta:

¿Cuál es el gran problema estructural con el uso de Cursores en motores relacionales pesados?



Opciones:

A) Generan Bloqueos de Tabla destruyendo el ACID.

B) Rompen el motor al no estar paginados.

C) Operan mediante un modelo Iterativo rompiendo la filosofía "Orientada a Conjuntos" (Set-Based) de la base de datos.

D) Generan vistas materializadas ocultas.



Respuesta correcta: C



Explicación:

SQL es un lenguaje declarativo que opera nativamente sobre Conjuntos (Set-Based). Si usas un Cursor, lo degradas obligándolo a operar como un primitivo bucle secuencial (fila por fila), incurriendo en altos costos por Cambio de Contexto en el procesador y arruinando la velocidad.



---



## CASO 164



Contexto:

El equipo diseñó la arquitectura front-end donde el Código Visual (Interfaz) envía directamente sus peticiones al Código Controlador. Este Controlador contacta al Modelo para obtener datos. Posteriormente, el propio Controlador retorna para indicarle imperativamente a la Interfaz Visual qué gráficos debe redibujar, sin que el Modelo participe.



Pregunta:

¿Bajo qué patrón de y capas arquitectónicas de front-end están laborando?



Opciones:

A) Arquitectura RESTful Dinámica Central

B) Patrón MVC Clásico (Model-View-Controller)

C) Arquitectura SOA (Service Oriented Architecture)

D) Patrón Modelo-Vista-Presentador (Model-View-Presenter - MVP)



Respuesta correcta: D



Explicación:

El patrón MVP se diferencia del clásico MVC en que la Vista y el Modelo están rígidamente incomunicados. Todo el poder fluye por el Presentador; si el usuario da clic en la Vista, el Presentador atiende, pide al Modelo el dato y es el propio Presentador quien inyecta visualmente la gráfica a la Vista.



---



## CASO 165



Contexto:

Un ingeniero desarrolla en C#. A una variable se le ingresa el texto literal `"100"` desde un formulario, pero al intentar ejecutar en el código un `if (variable == 100)` para cálculos, el compilador arroja un error estructural marcando incompatibilidad.



Pregunta:

¿Cómo clasifica la ingeniería de lenguajes al modelo estructural C# que impide este cruce en el uso de memoria comparativa?



Opciones:

A) Lenguaje Dinámico Orientado a Objetos 

B) Lenguaje de Tipado Fuerte y Estricto (Strongly Typed Language)

C) Lenguaje Adaptativo de Compilación Temprana

D) Sistema de Intérprete Lineal



Respuesta correcta: B



Explicación:

En los lenguajes de Tipado Fuerte (como C# o Java), el compilador es inflexible. Una variable que nace como cadena (String), es puramente de texto para siempre en su contexto, y no permitirá ser cruzada frente a un número entero sin que medie explícitamente un método conversor previo (Parse o Cast).



---



## CASO 166



Contexto:

En un sistema hospitalario, existe una impresora global centralizada. Si cien computadoras mandan documentos al mismo tiempo, el sistema guarda los trabajos completos en el disco de manera inmediata simulando una impresión instantánea para liberar las pantallas, para luego pasarlos uno a uno a la impresora electromecánica en el orden correcto.



Pregunta:

¿Cómo se denomina históricamente a esta técnica de simulación con memoria intermedia en disco para desahogar la concurrencia rápida?



Opciones:

A) Paginación Lineal en Clúster (Paging Spool)

B) Interbloqueo de Procesador (Deadlock Spooling)

C) Técnica de SPOOLING (Simultaneous Peripheral Operations On-Line)

D) Multiplexación en Archivos FAT Cíclicos



Respuesta correcta: C



Explicación:

SPOOL (Operaciones en línea de periféricos simultáneos) intercepta y guarda el documento digital velozmente en una zona del disco (Cola de Impresión), devolviendo de inmediato el control y poder del cursor a la computadora, y dejando que un proceso daemon secundario lidie con el hardware real.



---



## CASO 167



Contexto:

El gerente corporativo busca deshacerse de docenas de enrutadores de marcas diferentes que requieren programarse en la consola uno por uno. Implementa un esquema donde todos los enrutadores físicos actúan como interruptores de cables, recibiendo estrictamente sus rutas y políticas de red a larga distancia desde una aplicación de inteligencia y cerebro de software en un panel controlador maestro.



Pregunta:

Bajo este concepto arquitectónico en donde el plano de control se separa por completo del hardware físico local, ¿qué tecnología de redes están inyectando en la empresa?



Opciones:

A) Redes Privadas Virtuales VPN Dinámicas

B) VLANs Segmentadas Híbridas Físicamente

C) Redes Definidas por Software (Software Defined Networking - SDN)

D) BGP OSPF Dinámico Autónomo



Respuesta correcta: C



Explicación:

Las Redes Definidas por Software (SDN) revolucionaron el mundo corporativo separando al "Plano de Control" (El Cerebro) del "Plano de Datos" (Los cables y Switches locales físicos). Permite orquestar remota y mágicamente toda la topología del edificio usando reglas, software avanzado virtual y APIs.



---



## CASO 168



Contexto:

Un arquitecto de plataformas bancarias debe asegurar la coherencia completa mundial al actualizar fondos. Exige que un servidor principal en México contacte a un servidor secundario en España antes del cargo, ambos bloqueen y confirmen las disponibilidades, y únicamente si ambas partes asienten su voto por red confirmando estar listos, procedan al unísono a ejecutar de verdad la alteración de los datos.



Pregunta:

¿Qué protocolo clásico computacional y mecanismo distribuido para confirmación en clúster mundial está instaurando para garantizar transaccionalidad de bases múltiples?



Opciones:

A) Escalabilidad Fragmentaria Vertical

B) Algoritmo de Aprobación Token-Ring

C) Consenso Múltiple 

D) Protocolo de Confirmación de Dos Fases (Two-Phase Commit Protocol / 2PC)



Respuesta correcta: D



Explicación:

El Commit en Dos Fases (2PC) es la garantía extrema en bases de datos distribuidas. Como no puedes asegurar que el servidor remoto no se apague, la Fase 1 obliga y pregunta: "¿Están listos?". Si todos envían un "Sí", se procede a la Fase 2 del "Commit General". Si uno solo falla, se aborta protegiendo la base.



---



## CASO 169



Contexto:

En la optimización de código, un desarrollador detecta que su software cuenta el número de elementos de un arreglo de 1 millón de clientes iterando linealmente registro por registro. Decide refactorizar usando la función `.length` de Java. El compilador entrega la longitud total requerida matemáticamente saltándose la iteración al leer instantáneamente un metadato preestablecido internamente.



Pregunta:

Técnicamente usando el formalismo y Notación de Ciencias de la Computación, ¿a qué nivel de complejidad superior y matemática se elevó esta simple consulta?



Opciones:

A) Complejidad Optimizada Lineal: O(n)

B) Complejidad Logarítmica: O(log n)

C) Complejidad Cuadrática: O(n^2)

D) Complejidad Inmediata: O(1)



Respuesta correcta: D



Explicación:

La notación O(1) ("O ") significa que la acción del procesador tomará matemáticamente siempre exactamente el mismo tiempo de procesamiento inamovible e inmediato, sin importar si la lista tiene un elemento o un millón. Consultar un metadato como `.length` toma tiempo inmediato.



---



## CASO 170



Contexto:

Durante un proyecto ágil, siete desarrolladores asisten por la mañana a una reunión de quince minutos parados en círculo. Al iniciar el evento, un ingeniero despliega un archivo Excel y empieza a dar quejas, explicaciones, y reportes técnicos visuales de un problema profundo que requiere resolver.



Pregunta:

Bajo la filosofía y el marco inquebrantable internacional de Scrum, ¿qué pilar clave procedimental rompió el programador durante su junta matutina?



Opciones:

A) Rompió el Sprint Backlog de refinamiento.

B) Rompió formalmente la regla del "Daily Stand-up" o "Daily Scrum", cuyo objetivo es sincronización relámpago de quince minutos (Timebox) para reportar "Qué hice, Qué haré y Qué me detiene", no para debatir ni resolver problemas profundos.

C) Alteró el código de Integración Ágil.

D) Violó pasivamente el "Sprint Review" general de cierre.



Respuesta correcta: B



Explicación:

El Daily Stand-up o Daily Scrum es para sincronización de equipo y alerta de estatus. Todo problema técnico profundo que asome debe registrarse y solucionarse estrictamente terminando los quince minutos en una junta privada ("Offline / Estacionamiento"), garantizando no secuestrar el valioso tiempo de todos los programadores.



---



## CASO 171



Contexto:

Un Arquitecto de Software programa y diseña el Sistema de Impresoras. Crea la clase `Impresora` con el método operativo `imprimirDatos()`. Posteriormente, crea la clase `Escaner` con otro método diferente pero llamado con el mismo título exacto `imprimirDatos()`. Luego el becario programa la clase `ImpresoraMultifuncional` intentando hacerla heredar simultáneamente de ambas clases madre, causando que el compilador enloquezca.



Pregunta:

¿Cómo se conoce a la anomalía y conflicto arquitectónico general matemático que causó el bloqueo mundial nativo que prohibió la Herencia Múltiple estricta de clases en Java y en C# moderno?



Opciones:

A) El Problema del Doble Bucle 

B) El Colapso de Encapsulamiento de Red

C) El Problema del Diamante (Diamond Problem)

D) La Anomalía de Reubicación de Metadatos



Respuesta correcta: C



Explicación:

El Problema del Diamante es la gran tragedia teórica que nace de la Herencia Múltiple directa. Si una clase híbrida hereda de dos padres y ambos padres programaron y comparten el mismo nombre de función, cuando ejecutes el comando final sobre la clase híbrida ni el procesador ni la máquina virtual tendrán manera de saber cuál de los dos códigos paternos tiene prioridad local, generando un error insalvable.



---



## CASO 172



Contexto:

En un sistema central computacional, la memoria RAM está prácticamente ahogada de carga. Para mantener abiertos y vivos cuarenta programas, el Sistema Operativo usa todo el tiempo real computacional dedicándose únicamente a mover las "Páginas de memoria virtual" desde la RAM hacia el Disco Duro (archivo Swap), y viceversa retornando otras, colapsando y deteniendo el avance real del procesamiento útil.



Pregunta:

¿Qué nombre técnico recibe esta crisis de sobre-paginación extrema de saturación y círculo trágico inútil de procesamiento?



Opciones:

A) Paginación Secuencial Cíclica

B) Condición Paralela de Carrera

C) Thrashing (Hiperpaginación o sobrecarga cíclica del Swap de memoria)

D) Inanición y Segmentación Fija



Respuesta correcta: C



Explicación:

El Thrashing (Hiperpaginación) sucede inevitablemente en entornos informáticos asfixiados cuando la CPU está cien por ciento ocupada, pero no hace nada de trabajo útil, porque el Kernel del Sistema Operativo invierte todos sus ciclos valiosos en "salvar y mover" datos temporalmente de la memoria física agotada al disco mecánico (Swap).



---



## CASO 173



Contexto:

Dentro del campus universitario con tres mil computadoras, el director desea conectar inteligentemente el tráfico de routers internos para que negocien tablas cruzadas y decidan velozmente enrutar el tráfico por caminos seguros internamente. Para esto instaura protocolos para organizar la red de forma interior, sin notificar ni enrutar tablas hacia los proveedores de internet mundiales externos.



Pregunta:

Bajo la normativa de división purista de enrutamiento TCP/IP, ¿qué categoría general y denominación estructural técnica reciben estos protocolos de comunicación topológica intra-red?



Opciones:

A) Protocolos de Enrutamiento MAC Fijo

B) Protocolos BGP Excluyentes Mundiales

C) Exterior Gateway Protocols (EGP)

D) Interior Gateway Protocols de Ruteo (IGP - Protocolos de Puerta de Enlace Interior)



Respuesta correcta: D



Explicación:

Las Redes y Ciencias de las Telecomunicaciones se segmentan en dos dominios centrales. Los Protocolos Interiores de Puerta de Enlace (IGP - como RIP, OSPF, EIGRP) rigen y viven únicamente para orquestar el tráfico contenido estrictamente dentro del mismo Sistema Autónomo corporativo y de la red local base. Lo opuesto son los EGP (Exterior Gateway como BGP), que orquestan las rutas que conectan continentes y proveedores ISPs a nivel de Internet global.



---



## CASO 174



Contexto:

Al crear la tabla de asignación de "Guardias Especiales", el desarrollador usa la llave principal compuesta: `ID_Empleado` y `Fecha_Turno`. El diseño obedece las reglas de la 3FN. Aun así, la tabla muestra redundancia cruzada anómala porque existe una superposición entre "Rol_Hospital" y "Area_Trabajo". Se exige aplicar una etapa extra avanzada especial para sanar estas llaves superpuestas en la tabla.



Pregunta:

¿Cuál forma rigurosa de normalización superior en matemáticas relacionales es la que rige formalmente la resolución central y erradicación de superposición cruzada entre múltiples "Llaves Candidatas" de control?



Opciones:

A) La Primera Forma Normal Clásica Multivaluada

B) La Cuarta Forma Normal Cruzada 

C) La Forma Normal de Boyce-Codd (BCNF)

D) La Quinta Forma Normal Simple



Respuesta correcta: C



Explicación:

La Forma Normal de Boyce-Codd (BCNF) es una versión más poderosa, paranoica y estricta de la tradicional Tercera Forma Normal. Interviene en la alta arquitectura cuando la tabla matemática posee dos o más columnas que están superpuestas y ambas tienen capacidad estricta e independiente de funcionar como "Llaves Candidatas o Determinantes ".



---



## CASO 175



Contexto:

En la programación de optimización de rutas, un ingeniero utiliza un algoritmo matemático para detectar rutas de costo en grafos cruzados. Necesita una alternativa robusta para evitar que las variables con costo o de peso de distancia "negativa" rompan el cálculo de manera perjudicial como sucede nativamente si usa tradicionalmente el algoritmo de Dijkstra.



Pregunta:

Bajo este escenario de peso numérico matemático destructivo de métricas negativas de aristas, ¿qué algoritmo es la solución inquebrantable de grafos de ruteo para encontrar distancias mínimas sin fallar?



Opciones:

A) Algoritmo de Flujo Dinámico Matemático DFS

B) El Algoritmo A* Estrella

C) El Algoritmo Dinámico de Kruskal

D) El Algoritmo Matemático de Ruteo de Bellman-Ford



Respuesta correcta: D



Explicación:

El algoritmo clásico del holandés Dijkstra está ante las distancias con peso negativo, provocando y generando bucles o mal-información y subestimando costos de manera letal. El algoritmo matemático de Bellman-Ford no solo soporta a los grafos repletos de "Aristas de Costo Negativo", sino que además detecta como alerta de radar si existe oculto un ciclo negativo y bucle atascado infinito en la red relacional.



---



## CASO 176



Contexto:

El equipo comercial decide migrar de la metodología estructural de Cascada (Waterfall), donde el proyecto tardaba lógicamente doce meses en analizarse, probarse e implementarse ciegamente hasta la entrega final, hacia un marco de Desarrollo Ágil (Scrum).



Pregunta:

En términos empresariales, de control y de ingeniería moderna, ¿qué beneficio absoluto e insuperable aporta al cliente pasarse a una metodología "Ágil" por encima del dinosaurio secuencial clásico "Waterfall"?



Opciones:

A) Que Ágil carece ciegamente de arquitectura y documentación técnica, abaratando el software.

B) Garantiza el éxito estructural de código y sin bugs ni colisiones.

C) El beneficio supremo de las "Entregas Iterativas e Incrementales", las cuales aportan valor de producto utilizable por el cliente en ciclos cortos (Sprints), permitiéndole cambiar de opinión o moldear su dirección rápidamente.

D) El ahorro total de programadores al no necesitar servidores paralelos de Testing.



Respuesta correcta: C



Explicación:

La Cascada es infalible si construyes un edificio donde cambiar planos al mes 9 significa un suicidio financiero. Pero para el entorno corporativo de software, el ciclo "Ágil" es superior al dividir al proyecto masivo en "Incrementos Iterativos Semanales". Esto le da vida al software desde el mes número uno permitiendo corregir el rumbo o abortar temprano asegurando el Retorno de Inversión.



---



## CASO 177



Contexto:

El lenguaje Java no tolera la "Múltiple Herencia de Clases", imposibilitando crear estructuras híbridas derivadas de dos árboles diferentes. En lugar de esto, si la clase debe amoldarse implícitamente a un conjunto de promesas de comportamiento de distintos departamentos, implementa cascarones de acción sin métodos construidos internos, firmando contratos arquitectónicos.



Pregunta:

Bajo la POO y programación de diseño limpio, ¿cómo se les llama universalmente a estos "contratos de comportamiento" que exigen al programador implementar ciertos métodos pero carecen de código funcional interior?



Opciones:

A) Clases Abstractas de Alto Acoplamiento

B) Instancias Dinámicas Generales

C) Métodos Sellados de Clúster

D) Interfaces (Interfaces de POO / Interfaces de comportamiento)



Respuesta correcta: D



Explicación:

Las *Interfaces* no tienen código ni vida propia abstracta; son una especie de tratado obligatorio. Si tú y tu clase firma la interfaz de contrato "ICalculable", automáticamente el compilador te obligará forzosamente a programar lógicamente y dotar de vida a un método interno llamado "Calcular()", promoviendo flexibilidad sin padecer el problema de la herencia múltiple en código.



---



## CASO 178



Contexto:

Una unidad USB ha sido formateada con Clústeres o Sectores en el disco duro del tamaño colosal de 64 Kilobytes. Un desarrollador almacena un texto diminuto de solo 2 Kilobytes en un archivo. El Sistema Operativo lo asienta en un sector de 64KB, pero sella y prohíbe formalmente que se pueda encadenar o guardar cualquier otra cosa distinta en el espacio físico libre de ese mismo sector que sobró.



Pregunta:

¿Qué anomalía matemática de fragmentación y desperdicio espacial de arquitectura computacional está ocurriendo masivamente bajo esta ciencia de discos?



Opciones:

A) Fragmentación Externa Central

B) Desperdicio Abstracto de Pila Secuencial

C) Fragmentación Externa

D) Fragmentación Interna (Internal Fragmentation de Memoria y Sectores)



Respuesta correcta: D



Explicación:

La Fragmentación Interna de Sectores es una calamidad en unidades de almacenamiento. Si el sistema divide la cuadrícula en cajas fijas inalterables (ej. de 64 KB), y tú guardas una carta de texto que solo pesa 2 KB, al meterlo al cajón, el cajón completo se "cierra"; desperdiciando inútilmente y bloqueando brutalmente en vacío computacional los 62 KB de espacio sobrante del clúster físico.



---



## CASO 179



Contexto:

Un empleado del área legal necesita trabajar remotamente usando internet en una cafetería insegura conectándose lógicamente a la red de su corporativo. Su objetivo es operar como si estuviera sentado físicamente dentro de las oficinas y acceder a la intranet interna de forma cifrada, sin que los hackers logren interceptar las contraseñas que teclea.



Pregunta:

¿Qué tecnología de seguridad criptográfica de red y encapsulamiento deben proporcionarle para blindar sus comunicaciones?



Opciones:

A) Traducción de Direcciones (NAT) Cíclica

B) La Apertura Asignada de Puertos TCP/IP 

C) Protocolos de Red Privada Virtual y Tunelado Encapsulado (VPN y Protocolo IPsec en túnel matemático)

D) Dirección Aleatoria MAC en Capa 2



Respuesta correcta: C



Explicación:

Las Redes VPN corporativas (Virtual Private Networks) son el cimiento de seguridad de túnel seguro "extremo a extremo". Toman la información del empleado remoto, la envuelven lógicamente y de forma cifrada como una caja fuerte, y la empujan por el internet hostil usando protocolos como IPSec hasta ser recibida segura formalmente dentro del fuerte del enrutador de la empresa.



---



## CASO 180



Contexto:

El servidor central relacional MySQL de ventas colapsa los fines de semana. En lugar de aumentar su RAM ciegamente, los arquitectos separan físicamente la base: designan una base paralela de hardware para realizar las rápidas inserciones de los clientes simultáneas (ESCRITURA / Writes) y crean otra base espejo separada dedicada y afinada para entregar los pesados reportes estadísticos del gerente (LECTURA / Reads).



Pregunta:

¿Qué Arquitectura y Estrategia Central de segregación de desarrollo se aplicó?



Opciones:

A) Fragmentación Horizontal (Sharding)

B) Arquitectura Distribuida de Microservicios Base

C) Segregación de Clúster Paralelo Multi-Master

D) Arquitectura y Patrón CQRS (Command Query Responsibility Segregation)



Respuesta correcta: D



Explicación:

CQRS (Segregación de Responsabilidad de Comandos y Consultas) separa el cerebro lógicamente de un motor de bases de datos central. Es ineficiente pedirle de manera simultánea al motor que guarde millones de boletos de Black Friday (Comandos / Writes veloces) y a la vez pedirle en paralelo que te devuelva el reporte financiero masivo de fin de año (Queries / Reads pesados). Se crean y mantienen dos bases sincronizadas separadas, optimizadas arquitectónicamente para su respectivo objetivo.

\newpage
# Bloque 10
## CASO 181



Contexto:

Un hospital debe diseñar su arquitectura de red considerando que doctores utilizan tabletas móviles conectadas al WiFi de forma general. El equipo de seguridad tecnológica descarta las tradicionales VLAN y dicta una regla estricta: "Aunque el dispositivo sea corporativo y esté conectado a nuestro WiFi interno de gerencia, no asumiremos jamás que es seguro ni de confianza por omisión. Cada intento de acceso a los sistemas deberá revalidarse con factor doble y escaneo de integridad en el software, salto por salto".



Pregunta:

¿Qué modelo conceptual riguroso y actual de arquitectura en Ciberseguridad ha ordenado y priorizado el equipo en todo el espectro físico?



Opciones:

A) El Protocolo Perimetral Firewall Clásico (VPN Stateful)

B) El Filtro IPS de Detección en Base Fija

C) Arquitectura de Red de Confianza Cero (Zero Trust Network Access - ZTNA)

D) Implementación de Zona Desmilitarizada Dinámica (DMZ Completa)



Respuesta correcta: C



Explicación:

Zero Trust asume una filosofía absoluta: "Nunca confíes, siempre verifica". El diseño de red clásico perimetral estipulaba que una vez dentro del muro físico del corporativo (conectado al switch interno), eras "de confianza". Zero Trust destruye esto; exige verificación minuciosa del dispositivo, ubicación y credenciales de usuario en cada salto hacia cada servidor individual, impidiendo movimientos de intrusión laterales si la tableta sufre un hackeo remoto.



---



## CASO 182



Contexto:

Un ingeniero compite analizando algoritmos de búsqueda exhaustiva. Mientras que la Notación "Big O" (O grande) le indica a la directiva qué tan pésimo será el rendimiento algorítmico frente a un volumen inmenso en el "peor caso posible" matemático, a él también le solicitan calcular el comportamiento opuesto para entender lo que sucederá en el "mejor caso ideal de tiempo" para poder catalogarlo técnicamente.



Pregunta:

¿Qué notación y científica de análisis de algoritmos dictamina el "Límite Inferior o Mejor Caso Posible" de eficiencia matemática?



Opciones:

A) La Notación Omega (Ω) 

B) La Notación Delta (� ) 

C) La Notación Theta (��) estricta

D) La Notación Gamma (� ) abstracta



Respuesta correcta: A



Explicación:

En ciencias de la computación y análisis asintótico general, la *Notación O Grande (Big O)* describe el límite superior o el peor de los desastres en el procesamiento (Si buscas a una persona en una guía telefónica, el peor caso es O(n) si es la última). La *Notación Omega (Ω)* dicta el límite inferior garantizando matemáticamente el tiempo en el "Mejor de los Casos Ideales" (Si es la primera persona de la guía, Omega es Ω(1)). La *Notación Theta (��)* representa el comportamiento central, promedio y ajustado.



---



## CASO 183



Contexto:

Una empresa analiza perfiles y detecta redes inmensas de "Amigos de los amigos que comparten intereses". Procesar esto en la base de datos MySQL tradicional usando `JOIN` paralelos entre cuatro tablas resulta insosteniblemente lento, generando tablas recursivas gigantes. Deciden migrar a una arquitectura donde las entidades (Personas) y las relaciones con dirección (A es amigo de B) son tratadas como elementos primarios indexables de la base de datos de manera autónoma.



Pregunta:

¿A qué modelo específico de base de la nube moderna no relacional se orienta esta solución abstracta?



Opciones:

A) Base de Datos NoSQL tipo Documental en JSON Clásica

B) Base de Datos Orientada a Grafos (Graph Database como Neo4j)

C) Base de Datos Columnar Dinámica 

D) Modelo Vectorial de Inteligencia Fija



Respuesta correcta: B



Explicación:

Las Bases de Datos de Grafos (como Neo4j) están matemáticamente estructuradas usando vértices (Nodos de información) y aristas (Relaciones vinculantes) para navegar instantáneamente por redes inmensas de datos sociales, así como operar en detección veloz de fraudes financieros abstractos. Hacen en milisegundos de rutas lo que un motor relacional tardaría horas cruzando tablas mediante uniones (`JOINs`) múltiples.



---



## CASO 184



Contexto:

Los ingenieros del equipo QA de un corporativo ejecutan 1,000 pruebas unitarias en código reportando "100% de Cobertura de Código". Para estar seguros de que los programadores no engañaron la prueba (escribiendo asserts que siempre dan éxito sin revisar de verdad la matemática interna del bloque), instalan una herramienta especializada. Esta altera automáticamente y rompe adrede condicionales del código fuente (ej. cambiando temporalmente un signo `<` por un `>`), vigilando si la suite de pruebas falla y detecta la anomalía introducida intencionalmente.



Pregunta:

¿Qué método infalible de pruebas avanzadas están empleando para auditar sus casos de pruebas ?



Opciones:

A) Prueba de Caja Gris

B) Pruebas Extremas Cíclicas Modulares de Integración

C) Fuzzing Testing Dinámico

D) Pruebas de Mutación Estricta y Funcional (Mutation Testing)



Respuesta correcta: D



Explicación:

El Testing de Mutación (Mutation Testing) es el auditor absoluto de las Pruebas Unitarias. Si la herramienta general inyecta un "Mutante" y corrompe un operador sumatorio del software adrede, el sistema espera confiado que los Unit Tests caigan en fallo y marquen rojo detectando la anomalía técnica. Si la prueba falsa Unit Test pasa en Verde a pesar del "Daño mutante", significa formalmente que el desarrollador escribió código de pruebas inútil y frágil que no audita ni blinda ninguna del código principal real.



---



## CASO 185



Contexto:

Un juego de estrategia en Java cuenta con el objeto central "Soldado". Este objeto debe calcular matemáticamente el daño de sus diferentes ataques según lo que porte. En lugar de codificar todos los cálculos con un enorme `switch/case` inmodificable dentro de la clase Soldado general para resolver "Si dispara Escopeta", "Si usa Espada", el desarrollador extrae esos algoritmos de daño de armas en clases matemáticas separadas y los inyecta dinámicamente como diferentes comportamientos abstractos (Instancias intercambiables de daño).



Pregunta:

¿Qué patrón dinámico de diseño de la POO implementó para encapsular y delegar matemáticamente a estas familias de algoritmos y cálculos de armas de forma modular?



Opciones:

A) Patrón Observador 

B) Patrón Adaptador de Componentes Abstractos

C) Patrón Constructor Cíclico 

D) Patrón Estrategia Dinámico (Strategy Pattern o Patrón Strategy)



Respuesta correcta: D



Explicación:

El Patrón Estrategia (Strategy Pattern) de comportamiento arquitectónico permite declarar y agrupar familias de algoritmos independientes matemáticos encapsulándolos separadamente de la clase principal original, haciendo fácil su intercambio al vuelo en plena ejecución del programa. En vez de rellenar asimétricamente a la clase "Soldado" con condicionales fijos puramente atados y complejos, el Soldado delega su función delegando y usando un objeto independiente (La Estrategia de ataque), lo que acata impecablemente el principio abierto/cerrado de SOLID.



---



## CASO 186



Contexto:

En un sistema central multi-hilos, ocurre un congelamiento del sistema. Dos transacciones chocan eternamente. Tras analizar los registros de software concurrente, descubres la materialización forzosa de las cuatro reglas que deben cumplirse forzosamente en simultáneo en un equipo para que el estancamiento de hilos concurrente y cruce catastrófico suceda inquebrantablemente (Condición de Exclusión mutua, Espera y Retención matemática, Espera circular y No apropiación o interrupción del recurso).



Pregunta:

¿Cómo se denominan estas cuatro exigencias académicas de ciencias y sistemas operativos que marcan la ocurrencia del Bloqueo Mutuo general (Deadlock)?



Opciones:

A) Condiciones Mutantes Fijas de Turing Computacionales

B) Ecuaciones Dinámicas de Interbloqueo de Von Neumann

C) Condiciones Clásicas de Deadlock y Exclusión de Coffman (Coffman Conditions)

D) Reglas Arquitectónicas de Concurrencia de Dijkstra y Moore 



Respuesta correcta: C



Explicación:

Las Condiciones Clásicas Formidables de Coffman establecen en ingeniería que, para que un bloqueo mutuo central (Deadlock de Hilos Concurrentes) se materialice trágicamente en procesador y RAM, deben presentarse de manera estricta y conjunta las 4 en la máquina: 1) Exclusión Mutua estricta, 2) Retención de recurso base y Espera, 3) Ausencia total de Expulsión o interrupción del proceso por el Kernel, y 4) Circuito cerrado y cíclico llamado Espera Circular matemática.



---



## CASO 187



Contexto:

Cuando un celular y tableta se conecta a la nueva red de WiFi de la cafetería, envía un grito y ruego de red abierta (Broadcast) para que le arrienden una identidad. El servicio de red servidor le devuelve un contrato de renta, le ofrece formalmente una dirección IPv4 local y, finalmente, termina asignándole de manera oficial y central el enrutamiento de puerta de enlace.



Pregunta:

Bajo la nomenclatura y arquitectura teórica de redes clásicas, ¿qué acrónimo mundial inamovible de cuatro letras modela y resume el ciclo de viaje de asignación de un servidor DHCP para IPs dinámicas locales?



Opciones:

A) Protocolo de Identidad de DHCP Handshake

B) Secuencia INIT y ACK Central

C) Algoritmo Arquitectónico DORA (Discover, Offer, Request, Acknowledge)

D) El Acuerdo TCP de Triple Enlace 3-Way Handshake Dinámico



Respuesta correcta: C



Explicación:

El ciclo universal de la asignación por servidores DHCP se modela mundialmente a través del proceso paralelo y de la palabra acrónimo "DORA". Empieza formalmente con **Discover** (Buscando un servidor a gritos DHCP en capa 2 o broadcast), **Offer** (El servidor asoma en red local y ofrece formalmente un contrato), **Request** (El usuario cliente acepta y envía la solicitud pidiendo fijar estáticamente esa dirección ofrecida), y termina lógicamente con **Acknowledge** (Confirmación absoluta y asienta registro del ruteador entregando los DNS y máscara a la estación).



---



## CASO 188



Contexto:

En el backend bancario, el DBA debe decidir si para ejecutar cálculos matemáticos de usuarios va a escribir y compilar un "Procedimiento Almacenado de Base de Datos (Stored Procedure)" o si debe construir una pequeña "Función Escalar (User Defined Function)". Necesita devolver un solo número que pueda invocar repetidamente incrustado dentro de instrucciones rápidas y dinámicas de `SELECT` masivas.



Pregunta:

¿Qué diferencia y restricción arquitectónica técnica puramente de SQL inclina obligatoriamente la decisión para usar una Función Escalar en vez del Procedimiento Almacenado general en la consulta matemática?



Opciones:

A) El Procedimiento almacenado central es el único que genera un plan de ejecución.

B) La Función Escalar puede ejecutarse e integrarse ciegamente dentro del flujo normal de una petición `SELECT / WHERE` devolviendo resultados en línea; mientras que un Procedimiento Almacenado rechaza lógicamente integrarse de retorno y exige ejecución exclusiva e independiente.

C) Los Procedimientos Almacenados no permiten inyectar e ingerir parámetros dinámicos.

D) La Función Escalar central inserta transacciones destructivas en cascada alterando las restricciones.



Respuesta correcta: B



Explicación:

Las Funciones Escalares SQL están destinadas a funcionar para devolver e inyectar un valor (Ej. Calcular Promedio y devolver un tipo entero). Al estar prohibidas formalmente de dañar o efectuar "UPDATE/INSERT/DELETE" (y al no tener derecho de invocar un Commit matemático), el motor de base de datos las permite ejecutar y transitar amigablemente "dentro" y a la par de las sentencias SELECT comunes. Un Procedimiento Almacenado en SQL está diseñado para alterar el estado matemático y tablas del disco, no para devolver lógicamente valores embebidos.



---



## CASO 189



Contexto:

Al programar de cero la clásica secuencia recursiva de cálculo de "Fibonacci", un desarrollador emplea recursividad (La función matemática se llama a sí misma constantemente en el código base). Al pasarle un número tan pequeño como el 50, la máquina se colapsa brutalmente, debido a que el árbol y los hilos duplican exponencialmente llamadas que procesan ramas operativas que ya habían sido calculadas cien pasos antes temporalmente.



Pregunta:

Bajo la materia avanzada de diseño de optimización y ciencias de la computación, ¿qué técnica debe aplicar y añadir a la función para almacenar matemáticamente las respuestas viejas en un diccionario de caché local en el programa y así evadir el tener que repetir los cálculos ?



Opciones:

A) Abstracción Algorítmica Paralela 

B) Inversión Matemática y Segmentación Paralela Estricta 

C) La Técnica Base de Memoización Matemática (Memoization Central y Programación Dinámica Aplicada) -> Simplificado: (Memoization / Memoización Computacional)

D) Patrón de Diseño Flyweight Abstracto y 



Respuesta correcta: C



Explicación:

La "Memoización" o Memoization es el pilar sagrado central que convierte y dota a los algoritmos destructivos y recursivos en reyes de la optimización y Programación Dinámica computacional. Implica atrapar o interceptar las rutinas. Si la operación matemática del procesador te exige formalmente y te fuerza a re-calcular "Fibonacci de 10" otra vez como rama, tu algoritmo inteligente y puente de memoria esquiva reescribir e inyectar el trabajo, leyendo y retornando de su caché en Memoria RAM instantáneamente el antiguo resultado ya calculado.



---



## CASO 190



Contexto:

El equipo de calidad y pruebas (QA Testing) despliega el software actualizado a la nueva versión de base general de la semana dos. El desarrollador corrigió de manera impecable el error reportado en el módulo frontal y dinámico del "Carrito de Compras". Sin embargo, al pasarlo a revisión final, el equipo detecta que aunque arregló perfectamente el carrito de los productos, inexplicablemente el código paralelo del "Botón de Recuperación de Contraseñas" que nunca debió verse involucrado en el código, se rompió e inoperantemente en silencio de manera central y.



Pregunta:

¿Qué tipo de ciclo, estrategia y batería puramente estructurada de pruebas automáticas (Testing) salva a la empresa de esta fatalidad forzando revisiones globales tras cualquier modificación de la base ?



Opciones:

A) Pruebas Matemáticas Unitarias Modulares Locales 

B) Pruebas Dinámicas de Carga y Tensión 

C) Pruebas de Escalabilidad Modulares Arquitectónicas

D) Pruebas Autómatas Completas de Regresión y Revisión Continua (Regression Testing)



Respuesta correcta: D



Explicación:

Las Pruebas de Regresión matemáticas automáticas aseguran de manera estricta la supervivencia y calidad paralela. Se efectúan y exigen ejecutarse centralmente en el ciclo cada vez que tú reparas un bug estricto o incrustas una característica en el código. Es tu obligación correr de nuevo sobre el sistema general toda la matriz y código completo paralelo antiguo de pruebas, para así corroborar rigurosamente que tu reparación local no haya roto ni "Regresado hacia atrás" los comportamientos funcionales del programa pasado que en ayer estaban perfectos.



---



## CASO 191



Contexto:

Un programador en lenguaje C# o Java de sintaxis estricta utiliza variables para guardar inmensas cadenas de texto (String clásico). Aconseja que utilizar `String texto = "Data"` y luego estar sumándole temporalmente en bucles concatenaciones de código bruto (`texto += " Update"`) dentro de mil ciclos continuos destruirá el rendimiento y gastará forzosamente la Memoria RAM. Esto ocurre porque cada que el usuario asume formalmente estar "modificando" lógicamente la variable y alterándola, en la realidad técnica de bajo nivel el objeto en el servidor jamás es alterado pasivamente en su casilla interna y.



Pregunta:

¿Qué concepto estructural y arquitectónico fundamental abstracto dictamina y obliga a que este comportamiento devorador de memoria RAM se detone obligando a fabricar e instanciar nuevos objetos inútiles?



Opciones:

A) La Mutación de Intercambio Central 

B) Inmutabilidad Estricta Absoluta y de la Clase String (Inmutabilidad de Objetos Computacionales)

C) Paginación Interna Cíclica del Motor de Garbage Collector 

D) Sobreescritura Dinámica Abstracta



Respuesta correcta: B



Explicación:

Los "Objetos Inmutables" (Como la clase matemática y de texto String en Java clásico estricto), garantizan blindaje estructural en procesamiento multi-hilo y. Como su estado es fijo, inquebrantable y permanentemente inalterable pasivamente, tú formalmente en la memoria no puedes sobre-escribirle una nueva letra a la vieja cadena. En la realidad de la memoria y paralela central, el motor y máquina virtual destruye lógicamente y olvida en memoria el original, para fabricar internamente instanciado de cero y asimétricamente un Objeto nuevo completo cada vez que haces un parche.



---



## CASO 192



Contexto:

El Sistema Operativo Linux entra en alerta de saturación. Tras enviar un comando de consola, el administrador mata forzosamente al "Proceso Padre" central. Sin embargo, la computadora sigue asfixiada estáticamente revelando que los diminutos "Sub-Procesos " (Procesos hijos) que fueron dados a luz por el Proceso Padre asesinado, continúan corriendo a la deriva en la RAM y ejecutando recursos, sin nadie estructuralmente por encima de ellos pasivamente que los controle, asimile, recicle y entierre asiladamente asimétricamente.



Pregunta:

Bajo la materia estricta arquitectónica de Gestión de Hilos y Sistema Operativo, ¿cómo se les cataloga a estos pequeños sub-programas que quedan libres y sueltos al ejecutar asiladamente a su progenitor ?



Opciones:

A) Procesos y Bloques Zombis 

B) Procesos Suspendidos y Central 

C) Demonios Kernel 

D) Procesos Huérfanos y Paralelos (Orphan Processes Computacionales Centrales) -> Simplificado: (Procesos Huérfanos)



Respuesta correcta: D



Explicación:

Existe una diferencia vital estricta y en el corazón del Kernel de OS: Un "Proceso Zombi " es un sub-proceso matemático *muerto y finalizado asimétricamente*, en donde el padre y central estricto ha tardado, negado e ignorado estáticamente levantar y borrar en código el "Cadáver numérico (PID)". En cambio, un "Proceso Huérfano", es donde el Padre fue fulminado en pleno trabajo, pero los procesos Hijos siguen *absolutamente vivos*, ejecutándose transaccionalmente, corriendo e incontrolados como dueños del CPU y.



---



## CASO 193



Contexto:

El administrador de redes corporativo estricto diseña y segmenta esquemas de direcciones IP para la red VLAN de gerencia central. Sabe que las máscaras y rangos de clase le indican la cuadrícula de computadoras y terminales totales posibles. Un estudiante emplea y paralelamente la vieja fórmula de `2^n - 2` fijos para hallar la cifra útil paralela y que sí se puede encadenar a las PC.



Pregunta:

Considerando la teoría inamovible de direccionamiento clásico IP de enrutadores, ¿qué representan y exigen puramente sustraer y descontar físicamente los dos espacios ("- 2") de la fórmula y estricta matemática paralela ?



Opciones:

A) Una para la Dirección MAC y otra para la Red Central 

B) Representan el Gateway de Central y el Firewall 

C) Quitan e imposibilitan utilizar la Primera IP y estricta matemática reservada y nombrada a la Subred (IP de Red), y anula la �altima IP de Difusión y grito masivo paralelo y central (IP Broadcast Central) -> Simplificado: (IP de Red e IP de Broadcast)

D) Representan reservas abstractas de NAT paralelo Central 



Respuesta correcta: C



Explicación:

En IPv4 estructurado (Ej. Subred /24), jamás podrás utilizar el número matemático completo de la potencia de hosts. La ecuación inamovible estricta exige y te fuerza estáticamente y paralelo a descontar puramente dos nodos centrales centrales inquebrantables : La IP primera y puramente más baja (Conocida como la IP de Identidad de Red y de la Subred) y restas paralela y y la última IP y más alta matemática (La célebre IP de Difusión Broadcast paralela central).



---



## CASO 194



Contexto:

El motor SQL principal alojado lógicamente en México es modificado y rediseñado por un arquitecto. Debido a la extrema lejanía, y paralela entre su servidor y un nodo Esclavo y replicador secundario situado matemáticamente del otro lado de las redes globales asimétricamente en la ciudad española de Madrid, el experto decide no obligar al equipo de la ciudad matemática de América a pausarse asiladamente y esperando confirmación remota central. En su lugar, México ejecuta lógicamente el trabajo, lo consolida y devuelve el poder rápido y al usuario, y de inmediato y tras bambalinas, avienta la instrucción por internet paralelo central a España y.



Pregunta:

En diseños de Clusters y Redes puramente paralelos centrales, ¿qué estrategia de control de réplicas en bases maestras y de duplicación ha forzado el sistema y paralelo y ?



Opciones:

A) Replicación Maestro-Esclavo y Multi-Mundo Paralela Central

B) Duplicación Matemática Cruzada Central 

C) Replicación Activa Central 

D) Replicación y de Bases de Datos Matemática Total Central Paralela (Replicación Central) -> Simplificado: (Replicación Central)



Respuesta correcta: D



Explicación:

En nodos globales paralelos centrales y de bases, intentar inyectar de replicación estricta "Síncrona Central " en una distancia oceánica y sería el fin del corporativo. El usuario en América paralelo y quedaría congelado paralela hasta que el esclavo cruzando el océano atienda. Implementar puramente y matemática de Replicación estricta le inyecta fluidez al sistema paralela y central.



---



## CASO 195



Contexto:

El robot rastreador y araña puramente paralelo de búsquedas de web y de algoritmos de lectura web necesita leer todos los dominios. El ingeniero diseña el programa arquitectónico puramente matemático empleando y creando una estructura y pilar de "Cola" (Queue estricta). Esta estructura matemática define que la araña explore asiladamente y transaccionalmente todo lo adyacente a nivel central antes de adentrarse.



Pregunta:

Considerando la teoría puramente de algoritmos y grafos, ¿qué técnica paralelo central de red se invocó ?



Opciones:

A) Búsqueda Iterativa Central 

B) Optimización Matemática 

C) Algoritmo de Flujo Central

D) Búsqueda Puramente en Red y de Anchura (Breadth-First Search / BFS Central Paralelo) -> Simplificado: (Búsqueda en Anchura / BFS)



Respuesta correcta: D



Explicación:

En exploración algorítmica y gráfica, el diseño y pilar matemático define tu rumbo. Al forzar al código a portar una "Cola ", te adhieres y a un comportamiento de Exploración transversal en Anchura o Breadth-First Search y paralela central. Evaluará y todas y cada una de las hojas paralelas en un anillo lógicamente fijo, evitando saltar a niveles inferiores y.



---



## CASO 196



Contexto:

En la programación y control modular central, un ingeniero utiliza el popular patrón "Singleton". Este diseño y estructura garantiza crear y aisladamente un solo objeto global único para todo el programa. Sin embargo, en un sistema concurrente de hilos, descubre que la clase se está inicializando, sobrescribiendo y colisionando asiladamente, porque varios hilos logran entrar paralelamente evaluando el "if (instancia == nula)" en el mismo milisegundo. El programador no usa el clásico "synchronized" general bloqueando todo, sino que verifica y lógicamente primero, luego asegura y bloquea y vuelve a verificar antes de crear la entidad.



Pregunta:

Bajo este escenario de programación multihilo y arquitectura, ¿qué concepto y algoritmo avanzado de diseño para bloqueo se aplica estáticamente en Java/C#?



Opciones:

A) Monitoreo Paralelo Simple Central

B) Exclusión de Bucle Paralela 

C) Inversión de Dependencia Central

D) El Algoritmo y Patrón Cíclico de Bloqueo de Doble Comprobación (Double-Checked Locking Paralelo) -> Simplificado: (Double-Checked Locking)



Respuesta correcta: D



Explicación:

El Doble Chequeo (Double-Checked Locking Paralelo) es la salvación en Concurrencia de hilos. Consiste asiladamente en un primer "if" rápido y barato para ahorrar CPU. Si detecta la instancia nula, entonces sí dispara y usa pesadamente el "Synchronized". Una vez logrando cerrar el hilo y blindar, obliga a repetir un segundo "If" para ver si durante lo que le tardó cerrar la puerta, algún hilo ya no fabricó paralela el objeto antes de tiempo.



---



## CASO 197



Contexto:

En la programación y y paralelo de POO en Java central, un desarrollador declara el método estricto `obtenerSuma` en la clase base "Animal ". Posteriormente en otra clase, define asimétricamente el método `obtenerSuma` con el nombre idéntico, pero el programador altera y transaccionalmente y expande los argumentos de entrada. En lugar de mandar una variable, ahora declara y le pasa como base abstracta tres argumentos paralelos centrales y para que convivan en el mismo bloque.



Pregunta:

Considerando la teoría puramente paralela de objetos, ¿qué herramienta o manipulación de métodos arquitectónicos y pilar se ejerció paralela ?



Opciones:

A) Mutación Central 

B) Inyección Paralelo Central

C) Herencia y Ocultamiento de Pila Central

D) Técnica Matemática y Pilar de Sobrecarga de Métodos (Overloading Central Paralela) -> Simplificado: (Sobrecarga de Métodos o Overloading)



Respuesta correcta: D



Explicación:

En lenguajes paralelos centrales, la Sobrecarga (Overloading) te provee el lujo de clonar y bautizar puramente al mismo nombre de código de un método matemático varias veces en tu clase central. A cambio, tú te comprometes y firmas que al menos cambias transaccionalmente paralelo el número de argumentos o el tipo paralelo de parámetros que va a masticar, dejando que el procesador elija dinámicamente. No lo confundas y con Sobreescritura (Overriding central paralela), donde cambias estáticamente el contenido del cuerpo heredado.



---



## CASO 198



Contexto:

El núcleo del Sistema Operativo debe programar que dos procesos concurrentes simultáneos, A y B, no vayan a estrellarse o dañar y leer a medias lógicamente la variable y objeto "Cuenta Bancaria". Para evitarlo, crea un mecanismo en el CPU. Una primitiva funciona como si tú cerraras la cerradura de un baño al entrar. Cuando un proceso entra a la Zona Crítica, "cierra y apaga" el semáforo para que otros hilos no interrumpan su edición, y luego "levanta y prende " la bandera para que el hilo vecino pueda seguir.



Pregunta:

Bajo ciencias de concurrencia y de exclusión, ¿qué nombre se le otorga a esta barrera central paralela ?



Opciones:

A) Monitor de Tensión Central

B) Señal de Segmentación Central Paralelo 

C) Paginación Atómica Central Paralelo

D) Componente de Bloqueo Binario Semáforo Mutex (Mutex / Mutual Exclusion Central Paralelo) -> Simplificado: (Mutex o Semáforo de Exclusión Mutua)



Respuesta correcta: D



Explicación:

Un Mutex central paralelo (De la síntesis y acrónimo Mutual Exclusion) ejerce la protección y exclusión matemática y absoluta de la zona crítica en CPU. Representa la y bandera puramente binaria (Cero y Uno). Si un hilo formalógico entra a escribir asiladamente y la tabla SQL, bloquea analíticamente la puerta ; ni el presidente de la red puede alterar la RAM hasta que el dueño devuelva y la bandera paralela de la Exclusión Mutua.



---



## CASO 199



Contexto:

El servidor de internet y la página web central del banco están listos. El administrador de cortafuegos y el equipo de IT instalan su viejo Firewall clásico de Red en el puerto 443. Un experto en auditoría y ciberseguridad paralela le comenta estáticamente : "Como la web legítima requiere y fuerza el puerto TCP 443 paralela abierto, cualquier ataque o Hacker que me mande un virus y fragmento de Inyección SQL disfrazada en el campo de texto, va a poder cruzar fácilmente y el muro porque tú dejaste y le aprobaste la entrada libre en tu Firewall clásico para el Puerto ".



Pregunta:

Bajo la materia estricta paralela de Ciberseguridad, ¿qué equipo de protección de Capa 7 debes inyectar para escanear y desarmar ataques web en pleno texto ?



Opciones:

A) Un Filtro de Segmentación Central 

B) IPSec Dinámico Paralela

C) Balanceador Central 

D) Sistema Avanzado y Cortafuegos de Aplicaciones Web (Web Application Firewall o WAF Central Paralelo) -> Simplificado: (Web Application Firewall / WAF)



Respuesta correcta: D



Explicación:

Un Firewall tradicional opera en puertos (Abre la puerta 443 y se olvida). El WAF (Web Application Firewall central) no solo abre el puerto, sino que revisa paralela el "Cuerpo y Payload " HTTP. Si tu atacante escribe asiladamente "OR 1=1--" en tu celda de contraseña paralela, el WAF central detecta y extirpa analíticamente la inyección antes de que el motor de SQL sufra ciegamente el caos.



---



## CASO 200



Contexto:

El banco paralela reemplaza a la base relacional. El arquitecto dicta y asienta que tú jamás debes sobrescribir ni destruir y alterar el saldo de "Cuenta ". A partir de hoy, en vez de alterar "100 menos 20 ", guardarás un diario cronológico de eventos inmutables ("Evento Depositó 100", "Evento Retiró 20 ").



Pregunta:

Bajo la materia y arquitectura, ¿qué patrón y estructura de inmutabilidad y registro cronológico se está implementando ?



Opciones:

A) Base Relacional Dinámica Paralelo

B) Paginación Central 

C) Segmentación y Balanceo Múltiple Central

D) Aprovisionamiento de Eventos Inmutables y (Patrón Event Sourcing Central Paralelo) -> Simplificado: (Event Sourcing)



Respuesta correcta: D



Explicación:

El Aprovisionamiento de Eventos (Event Sourcing central paralelo) revoluciona la forma de usar bases de datos. Te prohíbe destructivamente sobreescribir el saldo de la base. Guardas eventos (Suma 5, Resta 3). Si mañana quieres el saldo, sumas los miles de registros pasados, forjando y adquiriendo una auditoría de base de datos absoluta impenetrable.

\newpage
# Estrategia para aprobar el EGEL
- Piensa como ingeniero
- No memorices, analiza
- Practica bajo presion
