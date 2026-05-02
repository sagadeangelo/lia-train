\begin{titlepage}
\centering
\includegraphics[width=\paperwidth,height=\paperheight]{portada.png}
\end{titlepage}
\newpage
# BLOQUE 1
## CASO 1

Contexto:
Un equipo estÃ¡ diseÃ±ando un sistema de comercio electrÃ³nico. Tienen una clase base "MetodoPago" y clases derivadas como "TarjetaCredito", "PayPal" y "Transferencia". El mÃ³dulo de cobros necesita ejecutar la funciÃ³n "procesarPago()" sobre una lista de mÃ©todos, sin importar cuÃ¡l sea el mÃ©todo especÃ­fico en tiempo de compilaciÃ³n.

Pregunta:
Â¿QuÃ© principio de la ProgramaciÃ³n Orientada a Objetos se debe aplicar para lograr este comportamiento dinÃ¡mico?

Opciones:
A) AbstracciÃ³n
B) Encapsulamiento
C) Polimorfismo
D) Herencia mÃºltiple

Respuesta correcta: C

ExplicaciÃ³n:
El polimorfismo permite que un mismo mÃ©todo reaccione y ejecute comportamientos distintos dependiendo de la clase especÃ­fica instanciada en tiempo de ejecuciÃ³n, permitiendo tratar objetos derivados a travÃ©s de la interfaz de su clase base.

---

## CASO 2

Contexto:
Se requiere segmentar la red 192.168.10.0/24 para asignar un segmento exclusivo al departamento de ventas que requiere exactamente 25 direcciones IP asignables a dispositivos.

Pregunta:
Â¿QuÃ© mÃ¡scara de subred de longitud variable (VLSM) es la mÃ¡s Ã³ptima para evitar el desperdicio de direcciones IP?

Opciones:
A) /26
B) /27
C) /28
D) /25

Respuesta correcta: B

ExplicaciÃ³n:
Una mÃ¡scara /27 deja 5 bits para hosts, lo que permite (2^5) - 2 = 30 direcciones IP asignables. Esto cubre exactamente el requerimiento de 25 hosts con el menor desperdicio posible. Una /28 solo brindarÃ­a 14 direcciones.

---

## CASO 3

Contexto:
En una base de datos relacional, la tabla "Ventas" contiene los campos: ID_Venta, Fecha, ID_Cliente, Nombre_Cliente y Correo_Cliente. 

Pregunta:
Â¿QuÃ© regla de normalizaciÃ³n estÃ¡ violando el diseÃ±o de esta tabla?

Opciones:
A) Primera Forma Normal (1FN)
B) Segunda Forma Normal (2FN)
C) Tercera Forma Normal (3FN)
D) Forma Normal de Boyce-Codd (FNBC)

Respuesta correcta: C

ExplicaciÃ³n:
Los campos Nombre_Cliente y Correo_Cliente tienen una dependencia funcional hacia ID_Cliente, el cual no es la llave primaria de la tabla (ID_Venta). Esto se conoce como dependencia transitiva, lo cual viola la Tercera Forma Normal (3FN).

---

## CASO 4

Contexto:
En un sistema operativo servidor, dos procesos simultÃ¡neos (P1 y P2) requieren acceso exclusivo a una impresora y a un escÃ¡ner. P1 bloquea la impresora y espera el escÃ¡ner. Al mismo tiempo, P2 bloquea el escÃ¡ner y espera la impresora. Ambos quedan congelados indefinidamente.

Pregunta:
Â¿QuÃ© anomalÃ­a clÃ¡sica de sistemas operativos se ha presentado en este escenario?

Opciones:
A) InaniciÃ³n (Starvation)
B) Interbloqueo (Deadlock)
C) CondiciÃ³n de Carrera (Race Condition)
D) PaginaciÃ³n excesiva (Thrashing)

Respuesta correcta: B

ExplicaciÃ³n:
El interbloqueo o Deadlock ocurre cuando dos o mÃ¡s procesos se bloquean mutuamente esperando recursos que ya estÃ¡n retenidos por el otro proceso, creando un ciclo cerrado de espera.

---

## CASO 5

Contexto:
Un corporativo gubernamental requiere construir un sistema financiero con requerimientos legales estrictos, detallados y fijos desde el inicio, donde las regulaciones impiden que el alcance cambie una vez iniciado el desarrollo.

Pregunta:
Â¿QuÃ© metodologÃ­a de ciclo de vida del software es la mÃ¡s apropiada para este proyecto?

Opciones:
A) Scrum
B) Cascada (Waterfall)
C) ProgramaciÃ³n Extrema (XP)
D) Kanban

Respuesta correcta: B

ExplicaciÃ³n:
El modelo en Cascada es ideal para proyectos donde los requerimientos son fijos, claros y no estÃ¡n sujetos a cambios, ya que cada fase debe completarse y documentarse antes de avanzar a la siguiente.

---

## CASO 6

Contexto:
Se necesita implementar un mecanismo de navegaciÃ³n para el botÃ³n "AtrÃ¡s" de un navegador web, donde la Ãºltima pÃ¡gina visitada es la primera que se extrae al presionar el botÃ³n.

Pregunta:
Â¿QuÃ© estructura de datos es la indicada para gestionar este historial de navegaciÃ³n?

Opciones:
A) Pila (Stack)
B) Cola (Queue)
C) Ãrbol Binario
D) Grafo

Respuesta correcta: A

ExplicaciÃ³n:
Una pila opera bajo el principio LIFO (Last In, First Out). La Ãºltima pÃ¡gina visitada (insertada) es la primera en ser extraÃ­da cuando el usuario desea regresar.

---

## CASO 7

Contexto:
Un analista necesita buscar un registro especÃ­fico dentro de un arreglo de 1 millÃ³n de elementos numÃ©ricos que ya se encuentran ordenados ascendentemente.

Pregunta:
Â¿CuÃ¡l es la complejidad (Big O) del mejor algoritmo disponible para esta bÃºsqueda?

Opciones:
A) O(n)
B) O(n log n)
C) O(log n)
D) O(1)

Respuesta correcta: C

ExplicaciÃ³n:
Como el arreglo ya estÃ¡ ordenado, el algoritmo Ã³ptimo es la BÃºsqueda Binaria. Este divide el arreglo a la mitad en cada paso, logrando un rendimiento logarÃ­tmico O(log n), extremadamente superior a una bÃºsqueda lineal O(n).

---

## CASO 8

Contexto:
Un ingeniero desarrolla una aplicaciÃ³n para transmisiÃ³n de video en vivo (Streaming). Prioriza la velocidad de entrega de datos y asume que perder unos cuantos fotogramas es preferible a sufrir retrasos severos de carga.

Pregunta:
SegÃºn el Modelo OSI, Â¿quÃ© protocolo de la Capa de Transporte debe seleccionar?

Opciones:
A) TCP
B) UDP
C) HTTP
D) ICMP

Respuesta correcta: B

ExplicaciÃ³n:
UDP (User Datagram Protocol) es un protocolo no orientado a conexiÃ³n. No verifica que los paquetes lleguen completos ni los reordena, lo que lo hace inmensamente mÃ¡s rÃ¡pido y adecuado para streaming de voz o video.

---

## CASO 9

Contexto:
Una empresa tiene las tablas "Empleados" y "Departamentos". Se requiere generar un reporte que incluya a todos los departamentos registrados, incluso aquellos que actualmente no tienen ningÃºn empleado asignado.

Pregunta:
Considerando que la tabla "Departamentos" estÃ¡ a la izquierda en la consulta, Â¿quÃ© clÃ¡usula de uniÃ³n SQL resuelve el requerimiento?

Opciones:
A) INNER JOIN
B) LEFT JOIN
C) RIGHT JOIN
D) CROSS JOIN

Respuesta correcta: B

ExplicaciÃ³n:
La operaciÃ³n LEFT JOIN devuelve todos los registros de la tabla izquierda (Departamentos) y las coincidencias de la tabla derecha. Si un departamento no tiene empleados, rellenarÃ¡ las columnas de empleados con valores NULL.

---

## CASO 10

Contexto:
Para evitar la sobrecarga de conexiones concurrentes hacia el motor de base de datos, el arquitecto de software decide que todo el sistema web debe compartir una Ãºnica y misma instancia de conexiÃ³n a lo largo de su ejecuciÃ³n.

Pregunta:
Â¿QuÃ© patrÃ³n de diseÃ±o de software restringe la instanciaciÃ³n de una clase a un Ãºnico objeto?

Opciones:
A) Factory
B) Observer
C) Singleton
D) Decorator

Respuesta correcta: C

ExplicaciÃ³n:
El patrÃ³n Singleton garantiza que una clase solo tenga una instancia en todo el ciclo de vida del programa y proporciona un punto de acceso global a ella.

---

## CASO 11

Contexto:
Un servidor Linux entra en un estado crÃ­tico donde el disco duro emite ruido y el rendimiento de procesamiento decae a casi cero. El administrador descubre que el sistema estÃ¡ intercambiando pÃ¡ginas de memoria entre la RAM y el archivo de paginaciÃ³n de disco incesantemente.

Pregunta:
Â¿QuÃ© nombre tÃ©cnico recibe este fenÃ³meno de saturaciÃ³n del Sistema Operativo?

Opciones:
A) PaginaciÃ³n segmentada
B) FragmentaciÃ³n externa
C) InaniciÃ³n cÃ­clica
D) HiperpaginaciÃ³n (Thrashing)

Respuesta correcta: D

ExplicaciÃ³n:
El Thrashing o HiperpaginaciÃ³n ocurre cuando un sistema se sobrecarga de procesos y agota su memoria RAM, dedicando todo su poder computacional a mover datos entre la RAM y el disco duro (Swap) en lugar de procesar instrucciones Ãºtiles.

---

## CASO 12

Contexto:
Al ejecutar una funciÃ³n matemÃ¡tica diseÃ±ada con recursividad, la aplicaciÃ³n lanza el error "StackOverflowError" (Desbordamiento de Pila) colapsando la memoria. 

Pregunta:
Â¿QuÃ© componente estructural de la funciÃ³n fue omitido o programado de forma incorrecta, causando el error?

Opciones:
A) El iterador de paso
B) La llamada interna
C) El caso base
D) La inicializaciÃ³n de la memoria Heap

Respuesta correcta: C

ExplicaciÃ³n:
El caso base es la condiciÃ³n de paro que indica a la funciÃ³n recursiva cuÃ¡ndo debe dejar de llamarse a sÃ­ misma. Sin Ã©l, la recursividad ocurre indefinidamente hasta agotar la memoria de la pila (Stack).

---

## CASO 13

Contexto:
Un desarrollador recibe alertas de seguridad. El log de la aplicaciÃ³n web muestra que atacantes estÃ¡n introduciendo comandos como `' OR '1'='1` en los campos del formulario de inicio de sesiÃ³n.

Pregunta:
Â¿QuÃ© mecanismo de la ingenierÃ­a de software es el estÃ¡ndar primario para mitigar este tipo especÃ­fico de ataque a nivel de cÃ³digo de base de datos?

Opciones:
A) Hashear las contraseÃ±as
B) Sentencias Preparadas (Prepared Statements)
C) Certificados SSL
D) EncriptaciÃ³n 

Respuesta correcta: B

ExplicaciÃ³n:
El ataque es una InyecciÃ³n SQL. Las Sentencias Preparadas o consultas parametrizadas precompilan la consulta en el motor de bases de datos antes de inyectar el valor del usuario, impidiendo que los caracteres especiales alteren la estructura del comando.

---

## CASO 14

Contexto:
Un empleado no puede acceder al portal interno mediante el nombre `intranet.empresa.local`, pero sÃ­ logra acceder directamente escribiendo la direcciÃ³n IP `10.0.5.25` en el navegador.

Pregunta:
Â¿En quÃ© servicio de red y capa del modelo OSI recae exclusivamente esta falla?

Opciones:
A) Servicio DHCP - Capa 3
B) Servicio DNS - Capa 7
C) Servicio HTTP - Capa 4
D) Servicio NAT - Capa 2

Respuesta correcta: B

ExplicaciÃ³n:
La falla radica en la resoluciÃ³n del nombre de dominio a una direcciÃ³n IP. Este proceso lo realiza el servidor DNS (Domain Name System), el cual opera puramente en la Capa 7 (AplicaciÃ³n) del modelo OSI.

---

## CASO 15

Contexto:
Un sistema bancario procesa una transferencia transfiriendo dinero de la Cuenta A a la Cuenta B. Ocurre un corte de energÃ­a justo despuÃ©s de que se restÃ³ el dinero en la Cuenta A, pero antes de que se sumara a la Cuenta B. Al reiniciar, el dinero de la Cuenta A ha vuelto Ã­ntegro.

Pregunta:
Â¿QuÃ© propiedad de las transacciones (ACID) garantizÃ³ que no se guardaran operaciones a medias?

Opciones:
A) Consistencia
B) Aislamiento
C) Durabilidad
D) Atomicidad

Respuesta correcta: D

ExplicaciÃ³n:
La Atomicidad es la propiedad de bases de datos que rige el principio "Todo o Nada". Si cualquier suboperaciÃ³n dentro de una transacciÃ³n falla, todo el bloque se deshace (Rollback), impidiendo estados intermedios.

---

## CASO 16

Contexto:
El Ã¡rea de Control de Calidad (QA) debe validar un mÃ³dulo de cÃ¡lculos de impuestos de un sistema web. Los analistas introducen distintos rangos salariales en los formularios web y verifican los resultados en pantalla sin observar en ningÃºn momento el cÃ³digo fuente.

Pregunta:
Â¿QuÃ© tipo de tÃ©cnica de pruebas de software se estÃ¡ aplicando?

Opciones:
A) Prueba de Caja Blanca
B) Prueba de Caja Negra
C) Prueba de RegresiÃ³n
D) Prueba de EstrÃ©s

Respuesta correcta: B

ExplicaciÃ³n:
Las Pruebas de Caja Negra evalÃºan exclusivamente las entradas y salidas de un sistema desde la perspectiva del usuario o de requisitos, asumiendo ignorancia total sobre la estructura interna y el cÃ³digo fuente.

---

## CASO 17

Contexto:
Se requiere implementar una libreta de contactos para un servidor donde el acceso a cualquier nÃºmero de telÃ©fono utilizando el nombre como clave debe ser instantÃ¡neo y mantener un tiempo de bÃºsqueda promedio de O(1), sin importar si hay 100 o un millÃ³n de registros.

Pregunta:
Â¿QuÃ© estructura de datos asegura este rendimiento Ã³ptimo?

Opciones:
A) Ãrbol Binario de BÃºsqueda
B) Lista Doblemente Enlazada
C) Tabla Hash (Diccionario / Hash Map)
D) Arreglo dinÃ¡mico ordenado

Respuesta correcta: C

ExplicaciÃ³n:
Las Tablas Hash procesan la clave ("nombre") mediante una funciÃ³n matemÃ¡tica que indica directamente la posiciÃ³n exacta en memoria, logrando una bÃºsqueda de rendimiento O(1) bajo condiciones Ã³ptimas sin colisiones severas.

---

## CASO 18

Contexto:
Un programador en Java declara las variables de una clase como "private" y genera los mÃ©todos "get" y "set" para permitir que otros objetos puedan acceder o modificar los datos bajo ciertas reglas de validaciÃ³n estipuladas.

Pregunta:
Â¿QuÃ© pilar fundamental de la ProgramaciÃ³n Orientada a Objetos se estÃ¡ respetando?

Opciones:
A) Herencia
B) Polimorfismo
C) AbstracciÃ³n
D) Encapsulamiento

Respuesta correcta: D

ExplicaciÃ³n:
El Encapsulamiento consiste en restringir el acceso directo al estado interno de un objeto, protegiÃ©ndolo mediante atributos privados y obligando a los agentes externos a usar mÃ©todos controlados para interactuar con la informaciÃ³n.

---

## CASO 19

Contexto:
Un sistema operativo multitarea asigna a cada proceso activo un pequeÃ±o "cuanto de tiempo" o intervalo fijo. Si el proceso no termina en ese lapso, es forzado a regresar al final de la fila de listos para ceder el procesador a otro.

Pregunta:
Â¿QuÃ© algoritmo de planificaciÃ³n de CPU (Scheduling) se describe en este comportamiento?

Opciones:
A) Primero en llegar, primero en ser servido (FCFS)
B) PlanificaciÃ³n por prioridad
C) Round Robin
D) El trabajo mÃ¡s corto primero (SJF)

Respuesta correcta: C

ExplicaciÃ³n:
Round Robin es el clÃ¡sico algoritmo multitarea por divisiÃ³n de tiempos (Time-sharing). Asigna una porciÃ³n equitativa de tiempo a todos los procesos en un ciclo rotatorio, garantizando respuesta justa y evitando monopolio de recursos.

---

## CASO 20

Contexto:
El administrador de red debe permitir el flujo de paquetes de internet en las reglas del enrutador o cortafuegos (Firewall). Decide bloquear las comunicaciones basÃ¡ndose en las direcciones de origen de la red pÃºblica.

Pregunta:
Â¿QuÃ© tipo de direccionamiento y en quÃ© capa del Modelo OSI debe aplicarse este bloqueo?

Opciones:
A) Direcciones MAC - Capa 2
B) Direcciones IP - Capa 3
C) Direcciones URL - Capa 7
D) Puertos - Capa 4

Respuesta correcta: B

ExplicaciÃ³n:
Un enrutador (Router) o un cortafuegos para anÃ¡lisis de paquetes de red funciona mediante Direcciones IP, las cuales pertenecen estrictamente a la Capa 3 (Red) del modelo OSI. Las direcciones MAC solo tienen alcance de red local.
\newpage
# BLOQUE 2
## CASO 21

Contexto:
El administrador de bases de datos de una universidad intenta eliminar de la tabla "Carreras" el registro de la carrera de IngenierÃ­a Industrial. Sin embargo, el motor de base de datos bloquea la operaciÃ³n arrojando un error de violaciÃ³n de restricciÃ³n, ya que existen actualmente 500 alumnos registrados en esa carrera.

Pregunta:
Â¿QuÃ© mecanismo relacional se activÃ³ para impedir el borrado y proteger los datos?

Opciones:
A) Ãndice Agrupado (Clustered Index)
B) Disparador (Trigger) de inserciÃ³n
C) Integridad Referencial (Llave ForÃ¡nea)
D) Bloqueo de TransacciÃ³n (Deadlock)

Respuesta correcta: C

ExplicaciÃ³n:
La Integridad Referencial, impuesta mediante una Llave ForÃ¡nea (Foreign Key), asegura que no se pueda eliminar un registro padre (Carrera) si existen registros hijos (Alumnos) que dependen de Ã©l. Esto evita la creaciÃ³n de registros "huÃ©rfanos" en la base de datos.

---

## CASO 22

Contexto:
Un servidor cuenta con 8 GB de memoria RAM fÃ­sica. Al ejecutar un motor de renderizado 3D pesado que requiere 12 GB, el sistema no se detiene ni marca error, sino que se vuelve lento porque comienza a usar espacio libre en el disco duro para almacenar datos.

Pregunta:
Â¿CÃ³mo se denomina tÃ©cnicamente este espacio del disco duro que el sistema operativo utiliza como extensiÃ³n de la RAM?

Opciones:
A) Memoria CachÃ© L3
B) Memoria Virtual (Swap)
C) Memoria ROM
D) Buffer de E/S

Respuesta correcta: B

ExplicaciÃ³n:
La Memoria Virtual (conocida como particiÃ³n Swap en Linux o Archivo de PaginaciÃ³n en Windows) es un espacio reservado en el almacenamiento fÃ­sico que el Sistema Operativo utiliza para emular memoria RAM adicional cuando la memoria fÃ­sica real se satura.

---

## CASO 23

Contexto:
Al inicio de un proyecto de software, el analista de requerimientos necesita graficar y comunicar a los directivos las funciones generales que el sistema ofrecerÃ¡ a los distintos tipos de usuarios (ej. Administrador, Cliente, Cajero), sin detallar cÃ³mo estarÃ¡n programadas por dentro.

Pregunta:
SegÃºn el lenguaje UML, Â¿quÃ© diagrama es el indicado para este propÃ³sito?

Opciones:
A) Diagrama de Clases
B) Diagrama de Secuencia
C) Diagrama de Estado
D) Diagrama de Casos de Uso

Respuesta correcta: D

ExplicaciÃ³n:
El Diagrama de Casos de Uso de UML estÃ¡ diseÃ±ado para mostrar las interacciones funcionales externas. Mapea a los "Actores" frente a las acciones globales que pueden realizar en el sistema, siendo altamente comprensible para personal no tÃ©cnico.

---

## CASO 24

Contexto:
En un corporativo, el departamento de Finanzas y el de Marketing comparten el mismo piso y los mismos switches fÃ­sicos (Conmutadores). Por seguridad, se requiere que ambos departamentos no puedan comunicarse ni ver sus equipos entre sÃ­ a nivel de red.

Pregunta:
Â¿QuÃ© tecnologÃ­a de Capa 2 permite fragmentar lÃ³gicamente los switches para lograr este aislamiento sin comprar hardware nuevo?

Opciones:
A) VPN
B) NAT
C) VLAN
D) Subneteo IP

Respuesta correcta: C

ExplicaciÃ³n:
Las Redes de Ãrea Local Virtuales (VLAN) operan en la Capa 2 del Modelo OSI. Permiten crear dominios de difusiÃ³n lÃ³gicamente aislados dentro de un mismo switch fÃ­sico, segregando el trÃ¡fico como si existieran mÃºltiples switches independientes de hardware.

---

## CASO 25

Contexto:
Un analista debe programar una rutina de ordenamiento que divida constantemente el arreglo original a la mitad en arreglos mÃ¡s pequeÃ±os hasta que tengan un solo elemento, para luego recombinarlos de manera ordenada.

Pregunta:
Â¿QuÃ© algoritmo de ordenamiento y paradigma matemÃ¡tico estÃ¡ aplicando?

Opciones:
A) Bubble Sort - Iterativo
B) Merge Sort - Divide y VencerÃ¡s
C) Selection Sort - BÃºsqueda Exhaustiva
D) Insertion Sort - Backtracking

Respuesta correcta: B

ExplicaciÃ³n:
Merge Sort es el ejemplo clÃ¡sico del paradigma "Divide y VencerÃ¡s". Particiona el arreglo a la mitad recursivamente hasta la mÃ­nima unidad y luego los "mezcla" ordenadamente, garantizando una complejidad altamente eficiente de O(n log n).

---

## CASO 26

Contexto:
Un automÃ³vil estÃ¡ estructurado en el software de tal manera que, si el objeto "AutomÃ³vil" es destruido por el recolector de basura, el objeto "Motor" contenido dentro de Ã©l tambiÃ©n debe ser destruido inevitablemente, ya que no puede existir sin el automÃ³vil.

Pregunta:
En UML y ProgramaciÃ³n Orientada a Objetos, Â¿quÃ© tipo de relaciÃ³n fuerte describe este escenario?

Opciones:
A) AgregaciÃ³n
B) Herencia
C) ComposiciÃ³n
D) AsociaciÃ³n simple

Respuesta correcta: C

ExplicaciÃ³n:
La ComposiciÃ³n es una relaciÃ³n de pertenencia muy fuerte (representada por un rombo negro en UML). Dicta que la vida del objeto "parte" (Motor) depende estrictamente de la vida del objeto "todo" (AutomÃ³vil). Si el todo se destruye, las partes tambiÃ©n mueren.

---

## CASO 27

Contexto:
Un administrador de servidores necesita acceder remotamente a la terminal de comandos de un servidor Linux. Quiere asegurarse de que toda la comunicaciÃ³n de texto enviada por internet viaje encriptada.

Pregunta:
Â¿QuÃ© protocolo y puerto estÃ¡ndar oficial debe utilizar?

Opciones:
A) Telnet - Puerto 23
B) FTP - Puerto 21
C) SSH - Puerto 22
D) HTTP - Puerto 80

Respuesta correcta: C

ExplicaciÃ³n:
Secure Shell (SSH) es el protocolo estÃ¡ndar de red que permite acceder de forma encriptada y segura a la terminal de un equipo remoto, y opera por defecto en el puerto 22. Telnet (puerto 23) envÃ­a los comandos en texto plano, lo que es un riesgo de seguridad.

---

## CASO 28

Contexto:
El administrador de bases de datos decide crear un Ã­ndice especial en la tabla "Empleados" bajo la columna de "Fecha de ContrataciÃ³n". Este Ã­ndice no reordena fÃ­sicamente las filas de la tabla en el disco duro, sino que crea una estructura secundaria con punteros hacia los datos.

Pregunta:
Â¿QuÃ© tipo de Ã­ndice acaba de generar?

Opciones:
A) Ãndice Agrupado (Clustered Index)
B) Ãndice No Agrupado (Non-Clustered Index)
C) Ãndice de Texto Completo
D) Hash Index

Respuesta correcta: B

ExplicaciÃ³n:
Un Ãndice No Agrupado (Non-Clustered) opera de manera anÃ¡loga al Ã­ndice al final de un libro: crea una lista externa ordenada que apunta hacia los registros, permitiendo tener mÃºltiples Ã­ndices en una tabla. El Clustered sÃ­ altera el orden fÃ­sico en disco y solo puede haber uno por tabla (comÃºnmente la llave primaria).

---

## CASO 29

Contexto:
Un equipo de programaciÃ³n adopta una metodologÃ­a rigurosa donde el programador estÃ¡ obligado a escribir las pruebas unitarias que van a fallar antes de escribir siquiera una sola lÃ­nea de cÃ³digo fuente funcional de la aplicaciÃ³n.

Pregunta:
Â¿CÃ³mo se denomina esta prÃ¡ctica de ingenierÃ­a de software?

Opciones:
A) IntegraciÃ³n Continua (CI)
B) Desarrollo Dirigido por Pruebas (TDD)
C) AnÃ¡lisis de CÃ³digo
D) PatrÃ³n Modelo Vista Controlador (MVC)

Respuesta correcta: B

ExplicaciÃ³n:
El Test-Driven Development (TDD) exige un ciclo corto: Escribir primero una prueba que falla (Red), escribir el cÃ³digo mÃ­nimo para hacerla pasar (Green), y luego optimizar el cÃ³digo (Refactor). Garantiza cobertura total de pruebas desde el inicio.

---

## CASO 30

Contexto:
En un sistema operativo moderno, un navegador web abre mÃºltiples pestaÃ±as. Para ahorrar recursos, el navegador decide no crear un clon completo de la aplicaciÃ³n por cada pestaÃ±a en la RAM, sino crear pequeÃ±as unidades ligeras de ejecuciÃ³n dentro del mismo programa base compartiendo su memoria.

Pregunta:
Â¿QuÃ© unidades de procesamiento concurrente estÃ¡ instanciando el navegador?

Opciones:
A) Demonios (Daemons)
B) Procesos Padre
C) Procesos HuÃ©rfanos
D) Hilos (Threads)

Respuesta correcta: D

ExplicaciÃ³n:
Los Hilos (Threads) son la unidad bÃ¡sica de utilizaciÃ³n del CPU y forman parte de un proceso mÃ¡s grande. Mientras que los procesos son pesados y tienen memorias aisladas, los hilos dentro de un mismo proceso comparten la misma memoria, haciÃ©ndolos ligeros y rÃ¡pidos.

---

## CASO 31

Contexto:
El equipo de redes evalÃºa migrar toda la infraestructura corporativa de direcciones IPv4 hacia direcciones IPv6 para soportar la enorme cantidad de dispositivos inteligentes (IoT) previstos en el corporativo.

Pregunta:
Â¿QuÃ© tamaÃ±o en longitud de bits tiene una direcciÃ³n IPv6 estÃ¡ndar, garantizando espacio prÃ¡cticamente inagotable?

Opciones:
A) 32 bits
B) 64 bits
C) 128 bits
D) 256 bits

Respuesta correcta: C

ExplicaciÃ³n:
Mientras que las antiguas direcciones IPv4 miden 32 bits (limitando el mundo a 4.3 mil millones de IPs), el protocolo IPv6 mide 128 bits de longitud, permitiendo $3.4 \times 10^{38}$ direcciones Ãºnicas, resolviendo el problema de agotamiento global.

---

## CASO 32

Contexto:
Un startup estÃ¡ diseÃ±ando el backend para un catÃ¡logo de productos de e-commerce. Los atributos de los productos varÃ­an agresivamente: un celular requiere voltaje y RAM, pero una playera requiere talla y color. El equipo decide usar un motor de base de datos sin esquema rÃ­gido que almacena documentos tipo JSON.

Pregunta:
Â¿A quÃ© categorÃ­a de bases de datos pertenece la soluciÃ³n seleccionada?

Opciones:
A) Bases de Datos Relacionales (RDBMS)
B) Bases de Datos Orientadas a Grafos
C) Bases de Datos NoSQL Documentales
D) Bases de Datos de Series 

Respuesta correcta: C

ExplicaciÃ³n:
Las bases de datos NoSQL tipo Documental (como MongoDB) almacenan la informaciÃ³n en documentos similares a JSON (BSON). Permiten flexibilidad total o "Schemaless", ideal para catÃ¡logos donde cada registro necesita campos y estructuras completamente distintas sin forzar nulos.

---

## CASO 33

Contexto:
En un servidor de impresiÃ³n de oficina, cinco empleados envÃ­an documentos para imprimir casi al mismo tiempo. El servidor debe procesar los documentos en el orden exacto en que llegaron, sacando el primer archivo recibido.

Pregunta:
Â¿QuÃ© estructura de datos es la indicada para administrar esta sala de espera de documentos?

Opciones:
A) Pila (Stack)
B) Cola (Queue)
C) Grafo ponderado
D) Ãrbol AVL

Respuesta correcta: B

ExplicaciÃ³n:
Una Cola opera bajo el principio FIFO (First In, First Out). El primer elemento en ser encolado (el primer empleado que mandÃ³ imprimir) serÃ¡ estrictamente el primero en ser atendido y retirado de la fila de impresiÃ³n.

---

## CASO 34

Contexto:
El arquitecto de software exige separar el cÃ³digo del sistema web: el cÃ³digo HTML/CSS no debe estar mezclado con la de conexiÃ³n a la base de datos, y los cÃ¡lculos de negocio deben estar aislados para que otros departamentos puedan modificarlos independientemente.

Pregunta:
Â¿QuÃ© patrÃ³n arquitectÃ³nico clÃ¡sico exige esta separaciÃ³n en tres componentes principales?

Opciones:
A) PatrÃ³n Observador
B) Modelo-Vista-Controlador (MVC)
C) Microservicios
D) CQRS

Respuesta correcta: B

ExplicaciÃ³n:
El PatrÃ³n MVC divide el software en tres Ã¡reas: El Modelo (Datos y reglas de negocio), la Vista (Interfaz GrÃ¡fica / HTML), y el Controlador (intermediario que recibe peticiones y enlaza a ambos). Facilita el mantenimiento y el cÃ³digo limpio.

---

## CASO 35

Contexto:
Al encender 200 computadoras nuevas en el campus, todas adquieren automÃ¡ticamente una direcciÃ³n IP Ãºnica vÃ¡lida, mÃ¡scara de subred, puerta de enlace y servidores DNS, sin que los tÃ©cnicos tengan que configurar cada mÃ¡quina a mano.

Pregunta:
Â¿QuÃ© protocolo de red se encargÃ³ de asignar esta configuraciÃ³n dinÃ¡micamente en broadcast?

Opciones:
A) DNS
B) ARP
C) ICMP
D) DHCP

Respuesta correcta: D

ExplicaciÃ³n:
El Protocolo de ConfiguraciÃ³n DinÃ¡mica de Host (DHCP) asigna direcciones IP dinÃ¡micas y otros parÃ¡metros de configuraciÃ³n de red a los dispositivos a medida que se conectan a la red, evitando conflictos y gestiÃ³n manual.

---

## CASO 36

Contexto:
En un servidor Linux, el administrador desea que el archivo secreto "claves.txt" solo pueda ser leÃ­do y escrito por el dueÃ±o del archivo (Ã©l mismo), pero nadie mÃ¡s (ni el grupo ni los usuarios externos) debe tener absolutamente ningÃºn acceso.

Pregunta:
Â¿QuÃ© notaciÃ³n de permisos octal ejecuta este comportamiento al usar el comando `chmod`?

Opciones:
A) 777
B) 644
C) 600
D) 755

Respuesta correcta: C

ExplicaciÃ³n:
En permisos Linux (Usuario, Grupo, Otros), el octal 6 equivale a Lectura (4) y Escritura (2). 600 significa que el dueÃ±o tiene Lectura/Escritura, mientras que el Grupo (0) y Otros (0) no tienen ningÃºn derecho. Un 777 darÃ­a control total al mundo entero.

---

## CASO 37

Contexto:
Para generar los reportes de nÃ³mina, el desarrollador decide no enviar las complejas sentencias de `SELECT` masivas desde el cÃ³digo PHP en el servidor web. En su lugar, empaqueta, compila y guarda las consultas SQL directamente dentro del motor de base de datos, llamÃ¡ndolas solo por un nombre corto.

Pregunta:
Â¿QuÃ© elemento de bases de datos ha creado el desarrollador?

Opciones:
A) Vista Materializada
B) Procedimiento Almacenado (Stored Procedure)
C) Disparador (Trigger)
D) Cursor

Respuesta correcta: B

ExplicaciÃ³n:
Un Procedimiento Almacenado es un bloque de cÃ³digo SQL y que se guarda y compila internamente en el servidor de base de datos. Reduce el trÃ¡fico de red, abstrae la de negocio y protege contra inyecciones SQL al separar la capa de datos de la capa de aplicaciÃ³n.

---

## CASO 38

Contexto:
El equipo terminÃ³ de programar dos mÃ³dulos independientes: el "MÃ³dulo del Carrito" y el "MÃ³dulo de FacturaciÃ³n". Las pruebas de ambos pasaron individualmente, pero ahora deben conectarlos y verificar que los datos viajen sin error desde el Carrito hasta el servidor de FacturaciÃ³n.

Pregunta:
Â¿QuÃ© fase del ciclo de calidad del software (QA) se estÃ¡ ejecutando?

Opciones:
A) Pruebas Unitarias
B) Pruebas de IntegraciÃ³n
C) Pruebas de Sistema
D) Pruebas de AceptaciÃ³n (UAT)

Respuesta correcta: B

ExplicaciÃ³n:
Las Pruebas de IntegraciÃ³n se enfocan en verificar la interacciÃ³n e interfaz entre dos o mÃ¡s mÃ³dulos (o servicios) ya probados unitariamente, garantizando que el flujo de datos entre ellos al conectarse funcione correctamente.

---

## CASO 39

Contexto:
En un laboratorio escolar de 30 computadoras, todas estÃ¡n conectadas mediante un cable UTP a un Ãºnico Switch central. Si un cable se rompe, solo esa mÃ¡quina se desconecta. Si el Switch central se apaga, toda la red del salÃ³n colapsa.

Pregunta:
Â¿A quÃ© topologÃ­a fÃ­sica de red pertenece este diseÃ±o?

Opciones:
A) Malla
B) Anillo
C) Bus
D) Estrella

Respuesta correcta: D

ExplicaciÃ³n:
En la topologÃ­a de Estrella, todos los nodos estÃ¡n conectados individualmente a un concentrador central (Switch/Hub). Es fÃ¡cil de diagnosticar y un cable daÃ±ado no afecta al resto, pero el punto central de fallo es crÃ­tico.

---

## CASO 40

Contexto:
Un fotÃ³grafo adquiere un servidor de almacenamiento con dos discos duros idÃ©nticos. Configura el sistema de arreglos para que todo archivo que se guarde en el Disco 1 se escriba al mismo tiempo y de manera exacta como espejo en el Disco 2, sacrificando la mitad del espacio total a cambio de mÃ¡xima seguridad.

Pregunta:
Â¿QuÃ© nivel de arreglo de discos redundantes (RAID) implementÃ³?

Opciones:
A) RAID 0
B) RAID 1
C) RAID 5
D) RAID 10

Respuesta correcta: B

ExplicaciÃ³n:
El RAID 1 es conocido como "Espejo" (Mirroring). Los datos se replican en dos discos idÃ©nticos. Si un disco muere por falla de hardware, la informaciÃ³n sigue viva e intacta en el segundo. (RAID 0 suma los espacios para velocidad, pero no tiene tolerancia a fallos).
\newpage
# BLOQUE 3
## CASO 41

Contexto:
El administrador de red de una pequeÃ±a oficina contrata un servicio de Internet corporativo que le entrega Ãºnicamente 1 DirecciÃ³n IP PÃºblica. En la oficina existen 40 computadoras con IPs privadas. Sorprendentemente, todas logran navegar por Internet al mismo tiempo utilizando la Ãºnica IP pÃºblica disponible.

Pregunta:
Â¿QuÃ© tecnologÃ­a de red alojada en el enrutador perimetral permite esta traducciÃ³n de mÃºltiples IPs privadas a una pÃºblica?

Opciones:
A) DHCP
B) DNS
C) NAT
D) VLAN

Respuesta correcta: C

ExplicaciÃ³n:
El Network Address Translation (NAT) reescribe las cabeceras de los paquetes salientes, traduciendo mÃºltiples direcciones IP privadas de una red local (LAN) para que naveguen a travÃ©s de una sola direcciÃ³n IP pÃºblica hacia el exterior (Internet).

---

## CASO 42

Contexto:
Una compaÃ±Ã­a telefÃ³nica necesita conectar 15 ciudades con cable de fibra Ã³ptica. El objetivo es que exista una ruta que conecte a todas las ciudades sin formar circuitos cerrados y utilizando la menor cantidad total de cable (costo mÃ­nimo de instalaciÃ³n).

Pregunta:
Modelando el problema como un grafo ponderado, Â¿quÃ© algoritmo de optimizaciÃ³n permite descubrir la red Ã³ptima requerida?

Opciones:
A) BÃºsqueda en Profundidad (DFS)
B) BÃºsqueda en Anchura (BFS)
C) Algoritmo de Kruskal (Ãrbol de ExpansiÃ³n MÃ­nima)
D) Algoritmo de Floyd-Warshall

Respuesta correcta: C

ExplicaciÃ³n:
El algoritmo de Kruskal (o el de Prim) se utiliza especÃ­ficamente para hallar el "Ãrbol de ExpansiÃ³n MÃ­nima" (Minimum Spanning Tree) en un grafo ponderado no dirigido. Conecta todos los vÃ©rtices sin crear ciclos usando las aristas de menor costo total.

---

## CASO 43

Contexto:
Una consulta SQL agrupa a los empleados por departamento para calcular el salario promedio de cada Ã¡rea utilizando `GROUP BY`. Sin embargo, el analista financiero quiere filtrar y mostrar exclusivamente aquellos departamentos cuyo salario promedio calculado sea mayor a $20,000.

Pregunta:
Â¿QuÃ© clÃ¡usula SQL se debe usar para aplicar este filtro sobre el resultado de la funciÃ³n de agregaciÃ³n?

Opciones:
A) WHERE
B) HAVING
C) ORDER BY
D) LIMIT

Respuesta correcta: B

ExplicaciÃ³n:
La clÃ¡usula `WHERE` filtra registros individuales antes de que se agrupen. Para filtrar los resultados que provienen de operaciones matemÃ¡ticas de agregaciÃ³n (como SUM o AVG) sobre grupos formados por `GROUP BY`, el estÃ¡ndar SQL exige el uso obligatorio de la clÃ¡usula `HAVING`.

---

## CASO 44

Contexto:
Al final de un ciclo de desarrollo Ã¡gil de dos semanas, el equipo se reÃºne internamente a puertas cerradas. El propÃ³sito no es mostrar el producto al cliente, sino discutir honestamente "quÃ© hicieron bien", "quÃ© hicieron mal" y "cÃ³mo pueden mejorar como equipo para el prÃ³ximo ciclo".

Pregunta:
Â¿QuÃ© ceremonia oficial del framework Scrum estÃ¡n llevando a cabo?

Opciones:
A) Sprint Planning
B) Sprint Review
C) Sprint Retrospective
D) Daily Scrum

Respuesta correcta: C

ExplicaciÃ³n:
La Sprint Retrospective (Retrospectiva del Sprint) es la Ãºltima ceremonia del ciclo y se enfoca en la mejora continua del equipo (procesos y personas). A diferencia de la Sprint Review, donde se presenta el incremento del software terminado al cliente.

---

## CASO 45

Contexto:
Un arquitecto de software define la plantilla `Vehiculo`. Exige que todos los vehÃ­culos que la hereden implementen obligatoriamente el mÃ©todo `encender()`, pero ademÃ¡s incluye cÃ³digo real ya programado en el mÃ©todo `apagar()` que serÃ¡ compartido por todos los herederos sin reescribirse.

Pregunta:
Â¿QuÃ© elemento de la ProgramaciÃ³n Orientada a Objetos debe declarar el arquitecto?

Opciones:
A) Interfaz estricta
B) Clase Abstracta
C) Clase Final
D) Clase AnÃ³nima

Respuesta correcta: B

ExplicaciÃ³n:
Una Clase Abstracta permite mezclar mÃ©todos "abstractos" (que obligan a las clases hijas a programarlos) con mÃ©todos ya implementados lÃ³gicamente con cÃ³digo que pueden ser heredados directamente. Una Interfaz clÃ¡sica, en cambio, solo define contratos sin poder contener programada de estado.

---

## CASO 46

Contexto:
Un usuario graba un archivo de video 4K de alta calidad con un tamaÃ±o de 6 GB en su computadora. Al intentar copiarlo a su nueva memoria USB (Flash Drive) reciÃ©n formateada, el sistema Windows bloquea la transferencia marcando un error de "El archivo es demasiado grande para el sistema de archivos de destino", a pesar de tener 32 GB libres.

Pregunta:
Â¿Con quÃ© antiguo sistema de archivos de Microsoft estÃ¡ formateada la USB, limitando matemÃ¡ticamente el peso del archivo?

Opciones:
A) NTFS
B) ext4
C) FAT32
D) exFAT

Respuesta correcta: C

ExplicaciÃ³n:
El viejo sistema de archivos FAT32 tiene una restricciÃ³n matemÃ¡tica absoluta que impide guardar un archivo individual que pese mÃ¡s de 4 GB, sin importar cuÃ¡nto espacio libre quede en el disco duro. Se debe usar NTFS o exFAT para superarla.

---

## CASO 47

Contexto:
En una red corporativa configurada con la direcciÃ³n 192.168.1.0/24, el administrador necesita enviar un mensaje de alarma de forma simultÃ¡nea a todas y cada una de las 254 computadoras conectadas en el mismo segmento de red usando un Ãºnico paquete enviado.

Pregunta:
Â¿A quÃ© direcciÃ³n IP matemÃ¡tica de destino debe apuntar el paquete?

Opciones:
A) 192.168.1.1
B) 192.168.1.0
C) 192.168.1.254
D) 192.168.1.255

Respuesta correcta: D

ExplicaciÃ³n:
En IPv4, la Ãºltima direcciÃ³n IP de cualquier segmento de subred (donde los bits de host son todos 1) siempre es reservada matemÃ¡ticamente para "Broadcast" (DifusiÃ³n). Un paquete enviado a esa direcciÃ³n es replicado por el switch y entregado a todos los nodos.

---

## CASO 48

Contexto:
Un gerente necesita leer reportes que cruzan datos de 5 tablas distintas mediante JOINs masivos y cÃ¡lculos complejos. Para facilitarle la vida, el desarrollador almacena esa consulta compleja en el motor de base de datos de forma que el gerente solo tenga que ejecutar un `SELECT * FROM ReporteGeneral`, interactuando con ella como si fuera una tabla virtual fÃ­sica.

Pregunta:
Â¿QuÃ© objeto acaba de crear el desarrollador en la base de datos?

Opciones:
A) Tabla 
B) Disparador (Trigger)
C) Vista SQL (View)
D) Ãndice de Ã¡rbol

Respuesta correcta: C

ExplicaciÃ³n:
Una Vista (View) es una tabla virtual cuyo contenido se genera mediante una consulta (Query) predefinida cada vez que se accede a ella. Abstrae la complejidad, protege datos ocultando columnas reales y facilita la creaciÃ³n de reportes.

---

## CASO 49

Contexto:
Un sistema de registros hospitalarios contiene 10 millones de historias clÃ­nicas almacenadas de forma totalmente desordenada y aleatoria (sin indexaciÃ³n por nombre o ID). Un enfermero necesita buscar un registro por nombre.

Pregunta:
Dada la falta de orden, Â¿cuÃ¡l serÃ¡ obligatoriamente la complejidad de tiempo (NotaciÃ³n Big O) en el peor de los casos al buscar el registro?

Opciones:
A) O(1)
B) O(log n)
C) O(n)
D) O(n^2)

Respuesta correcta: C

ExplicaciÃ³n:
Dado que la informaciÃ³n estÃ¡ desordenada, no se puede aplicar algoritmos optimizados como BÃºsqueda Binaria. El procesador estarÃ¡ forzado matemÃ¡ticamente a realizar una BÃºsqueda Lineal, revisando registro por registro hasta encontrarlo o agotar la lista, lo cual representa complejidad O(n).

---

## CASO 50

Contexto:
Un programa genera "Enemigos" en un videojuego. Para no llenar el cÃ³digo principal con mÃºltiples y repetitivos `new Orco()`, `new Goblin()` y de validaciÃ³n, se crea una clase central que recibe el parÃ¡metro del tipo de enemigo deseado y devuelve automÃ¡ticamente la instancia del objeto correcta y lista para usar.

Pregunta:
Â¿QuÃ© patrÃ³n de diseÃ±o de creaciÃ³n de software clÃ¡sico se ha implementado?

Opciones:
A) Singleton
B) Factory (FÃ¡brica)
C) Proxy
D) Adapter

Respuesta correcta: B

ExplicaciÃ³n:
El patrÃ³n de diseÃ±o Factory Method abstrae la fÃ­sica de instanciaciÃ³n de objetos (`new`). Se delega la responsabilidad a una clase "FÃ¡brica" que decide y devuelve la instancia del objeto correcto segÃºn los parÃ¡metros suministrados.

---

## CASO 51

Contexto:
Se diseÃ±a un sistema de venta de boletos de cine. Solo queda el Ãºltimo asiento disponible (E-10). Dos clientes hacen clic en comprar en el mismo milisegundo desde distintas computadoras. El Sistema Operativo del servidor atiende dos hilos concurrentes que acceden a la variable global `asientos_restantes` al mismo tiempo, provocando que ambos lo compren exitosamente.

Pregunta:
Â¿QuÃ© primitiva de sincronizaciÃ³n clÃ¡sica debiÃ³ implementarse a nivel sistema operativo para evitar esta CondiciÃ³n de Carrera?

Opciones:
A) Memoria Compartida
B) TuberÃ­as (Pipes)
C) Mutex (SemÃ¡foro binario)
D) Planificador FCFS

Respuesta correcta: C

ExplicaciÃ³n:
Un Mutex (Mutual Exclusion) es un candado utilizado en sistemas concurrentes. Cuando el hilo A entra a la zona crÃ­tica de la base de datos para vender el boleto, el Mutex cierra la puerta impidiendo que el hilo B entre a revisar hasta que el hilo A termine.

---

## CASO 52

Contexto:
Un tÃ©cnico necesita conectar lÃ³gicamente dos computadoras en el mismo escritorio, conectando directamente la tarjeta de red de la PC-A con la tarjeta de la PC-B usando un cable fÃ­sico UTP RJ45, sin pasar por un router o switch intermedio.

Pregunta:
Â¿QuÃ© tipo de cableado es estrictamente necesario, normativamente hablando, para conectar dos equipos de la misma naturaleza o capa OSI sin autonegociaciÃ³n MDIX?

Opciones:
A) Cable Serial RS-232
B) Cable de Fibra Multimodo
C) Cable Directo (Straight-through)
D) Cable Cruzado (Crossover)

Respuesta correcta: D

ExplicaciÃ³n:
ClÃ¡sicamente, para conectar dos dispositivos del mismo tipo OSI directamente (PC a PC, o Router a Router), los pines de transmisiÃ³n (TX) deben cruzarse fÃ­sicamente con los pines de recepciÃ³n (RX) en el conector opuesto. Esto se logra cableando un extremo con la norma T568A y el otro con la T568B (Cable Cruzado).

---

## CASO 53

Contexto:
Durante un mantenimiento a las 2 a.m., el administrador nota que vaciar la tabla "Auditoria" (5 millones de registros) usando el comando `DELETE FROM Auditoria` tarda horas. Ã0 l recuerda que existe un comando destructor que ignora el paso fila por fila, vaciando todo de un golpe destructivo.

Pregunta:
Â¿QuÃ© comando DDL SQL es el adecuado para vaciar la tabla instantÃ¡neamente y de forma irreversible?

Opciones:
A) DROP TABLE Auditoria
B) FORMAT Auditoria
C) TRUNCATE TABLE Auditoria
D) ERASE Auditoria

Respuesta correcta: C

ExplicaciÃ³n:
El comando DELETE es un proceso DML que borra fila por fila y guarda registros en el log de transacciones por si hay Rollback. TRUNCATE es un DDL estructural; destruye y recrea la estructura de la tabla al instante, eliminando los datos sin generar registro lento, haciÃ©ndolo increÃ­blemente rÃ¡pido.

---

## CASO 54

Contexto:
Un programador junior trabajando con el sistema Git escribe su cÃ³digo, guarda el archivo, e ingresa por terminal `git add.` seguido de un exitoso `git commit -m "Se arreglÃ³ login"`. Sin embargo, el jefe de proyecto revisa el repositorio central corporativo remoto en GitHub y no ve el cÃ³digo del junior.

Pregunta:
Â¿Por quÃ© el cÃ³digo aÃºn no estÃ¡ en el servidor oficial de GitHub?

Opciones:
A) El comando commit sufriÃ³ de conflictos de fusiÃ³n locales (Merge Conflicts).
B) El comando commit Ãºnicamente guarda los cambios localmente en el disco duro del programador.
C) El servidor principal de GitHub estaba en modo solo-lectura temporalmente.
D) OlvidÃ³ ejecutar un git pull antes de hacer el commit.

Respuesta correcta: B

ExplicaciÃ³n:
A diferencia de sistemas antiguos centralizados (SVN), Git es distribuido. Un `commit` sella oficialmente los cambios de versiÃ³n de forma estricta, pero Ãºnicamente dentro de la base de datos local de la computadora del programador. Obligatoriamente falta el comando `git push` para enviarlos por red al servidor central.

---

## CASO 55

Contexto:
Se tiene un Ãrbol Binario de BÃºsqueda (BST) poblado con los nÃºmeros [8, 3, 1, 6, 10, 14]. El profesor exige aplicar un algoritmo de recorrido clÃ¡sico de profundidad que, matemÃ¡ticamente, imprima como resultado la secuencia estrictamente ordenada de menor a mayor (1, 3, 6, 8, 10, 14).

Pregunta:
Â¿QuÃ© mÃ©todo de recorrido de Ã¡rboles produce inevitablemente un arreglo numÃ©ricamente ordenado en un Ãrbol Binario de BÃºsqueda?

Opciones:
A) Preorden (Pre-order)
B) Inorden (In-order)
C) Postorden (Post-order)
D) Nivel por Nivel (Anchura)

Respuesta correcta: B

ExplicaciÃ³n:
El recorrido Inorden transita por el Ã¡rbol procesando primero el subÃ¡rbol izquierdo (nodos mÃ¡s pequeÃ±os), luego la raÃ­z, y finalmente el subÃ¡rbol derecho (nodos mÃ¡s grandes). Si se le aplica este recorrido a cualquier Ãrbol Binario de BÃºsqueda, el resultado siempre serÃ¡ un arreglo ordenado ascendentemente.

---

## CASO 56

Contexto:
En la programaciÃ³n de una calculadora orientada a objetos en Java, el desarrollador crea el mÃ©todo `sumar(int a, int b)`. En la misma clase, para acomodar a los decimales, declara otro mÃ©todo con el nombre idÃ©ntico `sumar(double a, double b)`. El compilador de lenguaje lo acepta sin marcar ningÃºn error o de duplicidad.

Pregunta:
Â¿QuÃ© tÃ©cnica de la POO se ha aplicado en este escenario?

Opciones:
A) Sobreescritura de MÃ©todos (Overriding)
B) Sobrecarga de MÃ©todos (Overloading)
C) AbstracciÃ³n ParamÃ©trica
D) Herencia MÃºltiple 

Respuesta correcta: B

ExplicaciÃ³n:
La Sobrecarga de MÃ©todos (Overloading) permite definir mÃºltiples mÃ©todos con exactamente el mismo nombre dentro de una misma clase, con la estricta condiciÃ³n de que la cantidad o el tipo de sus parÃ¡metros (las firmas del mÃ©todo) sean diferentes para que el compilador sepa a cuÃ¡l invocar.

---

## CASO 57

Contexto:
Un analista de centro de control (NOC) necesita verificar rÃ¡pidamente si el servidor de nÃ³minas de la sucursal de MÃ©rida estÃ¡ encendido y tiene una tarjeta de red local viva. Para ello, ejecuta desde Windows el comando `ping 192.168.10.5` para analizar los paquetes devueltos.

Pregunta:
Â¿QuÃ© protocolo de red en la Capa de Red (OSI 3) es la columna vertebral que hace funcionar la comunicaciÃ³n de diagnÃ³stico del comando "ping"?

Opciones:
A) ARP (Address Resolution Protocol)
B) SNMP (Simple Network Management Protocol)
C) TCP (Transmission Control Protocol)
D) ICMP (Internet Control Message Protocol)

Respuesta correcta: D

ExplicaciÃ³n:
ICMP es el protocolo core utilizado en redes de capa 3 para transmitir mensajes de error, informaciÃ³n de diagnÃ³stico y control (como respuestas de "Host Inalcanzable" o "Tiempo de espera superado"). La herramienta "ping" es simplemente una interfaz visual que envÃ­a mensajes "Echo Request" y "Echo Reply" nativos de ICMP.

---

## CASO 58

Contexto:
Durante una transacciÃ³n SQL compleja, el motor de base de datos activa un mecanismo de seguridad para impedir que otros usuarios alteren temporalmente la fila nÃºmero 800 de la tabla de facturaciÃ³n que estÃ¡ siendo procesada, pero permite que los demÃ¡s usuarios sigan leyendo o escribiendo el resto de las facturas libremente en la tabla.

Pregunta:
Â¿QuÃ© nivel de control de concurrencia y aislamiento relacional ha aplicado el motor de bases de datos para optimizar recursos?

Opciones:
A) Bloqueo de Nivel de Tabla (Table-level Lock)
B) Bloqueo de Nivel de Fila (Row-level Lock)
C) Bloqueo de PÃ¡gina (Page-level Lock)
D) ExclusiÃ³n Mutua Global (Global Mutex)

Respuesta correcta: B

ExplicaciÃ³n:
El "Bloqueo de Nivel de Fila" (Row-level Lock) es el grano mÃ¡s fino de control de concurrencia en bases de datos. Congela estrictamente la celda de memoria de un solo registro individual (fila), permitiendo que la tabla en general siga sirviendo transacciones concurrentes a miles de usuarios sin estancarse.

---

## CASO 59

Contexto:
El "DueÃ±o del Producto" (Product Owner) redacta el siguiente requerimiento en una tarjeta Ã¡gil para entregÃ¡rsela a los programadores del Sprint 1: *"Como cliente registrado de Amazon, quiero poder aÃ±adir productos a una lista de deseos, para asÃ­ guardarlos y comprarlos el dÃ­a de quincena."*

Pregunta:
Â¿CÃ³mo se denomina formalmente este formato estructurado de requerimiento utilizado en la metodologÃ­a Scrum?

Opciones:
A) Diagrama de Secuencia Ãgil
B) Caso de Uso del Negocio
C) Tarea de RefactorizaciÃ³n TÃ©cnica
D) Historia de Usuario (User Story)

Respuesta correcta: D

ExplicaciÃ³n:
La Historia de Usuario es una explicaciÃ³n funcional de una caracterÃ­stica de software escrita desde la perspectiva natural del usuario final. Suele obedecer al modelo estricto de: "Como [rol], quiero [objetivo/deseo], para poder [beneficio/razÃ³n]". Se estima y se evalÃºa en "Puntos de Historia".

---

## CASO 60

Contexto:
Un servidor en Linux estÃ¡ ejecutando una enorme base de datos en memoria (Redis) que de pronto agota por completo los Gigabytes fÃ­sicos de la RAM y el espacio virtual (Swap). Sin previo aviso, el nÃºcleo Linux "asesina" abruptamente uno de los procesos del motor Redis para evitar un pÃ¡nico crÃ­tico total y colapso del hardware.

Pregunta:
Â¿QuÃ© demonio o mecanismo nativo del kernel de Linux interviene como "Ãºltimo recurso" cortando cabezas en situaciones de agotamiento severo de memoria?

Opciones:
A) El Recolector de Basura (Garbage Collector)
B) El demonio Cron
C) El proceso Init/Systemd
D) El OOM Killer (Out Of Memory Killer)

Respuesta correcta: D

ExplicaciÃ³n:
El OOM Killer es una rutina extrema del kernel de Linux. Cuando el sistema agota por completo la RAM fÃ­sica y la virtual, en lugar de permitir que la mÃ¡quina entera se congele o bloquee fatalmente, este mecanismo busca heurÃ­sticamente el proceso mÃ¡s pesado e ineficiente y lo termina forzosamente (Kill -9) para que el sistema respire y sobreviva.
\newpage
# BLOQUE 4
## CASO 61

Contexto:
En una red corporativa muy grande, el administrador descubre que configurar manualmente las rutas en los enrutadores es imposible tras agregar 50 oficinas nuevas. Decide implementar un protocolo que permita a los enrutadores aprender automÃ¡ticamente la topologÃ­a intercambiando sus tablas de mÃ©tricas basÃ¡ndose en el estado de los enlaces y la velocidad fÃ­sica del cable.

Pregunta:
Â¿QuÃ© protocolo de enrutamiento dinÃ¡mico interno, basado en el algoritmo de Dijkstra, es el estÃ¡ndar mÃ¡s robusto para este propÃ³sito?

Opciones:
A) RIP (Routing Information Protocol)
B) BGP (Border Gateway Protocol)
C) OSPF (Open Shortest Path First)
D) STP (Spanning Tree Protocol)

Respuesta correcta: C

ExplicaciÃ³n:
OSPF es el protocolo de enrutamiento interior de estado de enlace dominante a nivel corporativo. Utiliza el algoritmo del "camino mÃ¡s corto" (Dijkstra) considerando el costo y el ancho de banda del enlace para tomar decisiones de ruteo, a diferencia del obsoleto RIP que solo cuenta el nÃºmero de saltos.

---

## CASO 62

Contexto:
En la arquitectura de un sistema mundial de redes sociales masivas alojado en mÃºltiples continentes, el sistema de bases de datos pierde conectividad de red entre Europa y AmÃ©rica. Los arquitectos asumen que pueden permitir que el usuario europeo lea datos un poco atrasados (desactualizados), pero es imperativo que los servidores no se caigan y que toleren la ruptura del cable transatlÃ¡ntico.

Pregunta:
SegÃºn el Teorema CAP, Â¿quÃ© dos aristas matemÃ¡ticas estÃ¡ eligiendo el negocio?

Opciones:
A) Consistencia y Disponibilidad (CA)
B) Disponibilidad y Tolerancia a Particiones (AP)
C) Consistencia y Tolerancia a Particiones (CP)
D) Tolerancia a Particiones y Escalabilidad Vertical

Respuesta correcta: B

ExplicaciÃ³n:
El Teorema CAP para bases de datos distribuidas establece que solo puedes elegir 2 de 3 garantÃ­as (Consistencia, Disponibilidad o ParticiÃ³n). Al asumir que un cable se rompiÃ³ (ParticiÃ³n) y al priorizar que el usuario vea datos aunque no sean los mÃ¡s recientes de Ãºltimo milisegundo (Disponibilidad en vez de Consistencia "Fuerte"), la elecciÃ³n es AP.

---

## CASO 63

Contexto:
Un procesador fÃ­sico de 8 nÃºcleos estÃ¡ colapsado corriendo 5,000 hilos (threads) activos de un servidor web monolÃ­tico en el mismo milisegundo. La CPU dedica mÃ¡s tiempo a guardar el estado de un hilo actual en registros de memoria RAM, sacarlo, cargar el estado del siguiente y repetir, que a procesar los cÃ¡lculos del servidor web.

Pregunta:
Â¿CÃ³mo se denomina este costoso proceso del Sistema Operativo a nivel de arquitectura del procesador?

Opciones:
A) Algoritmo FCFS (First Come First Serve)
B) SobrepaginaciÃ³n de Memoria ROM
C) Cambio de Contexto (Context Switching)
D) EjecuciÃ³n Multihilo SimÃ©trica (SMT)

Respuesta correcta: C

ExplicaciÃ³n:
El Cambio de Contexto (Context Switch) es el proceso mediante el cual el Sistema Operativo suspende un hilo o proceso en CPU, almacena su estado interno, e introduce otro. Cuando el nÃºmero de hilos vivos es ridÃ­culamente grande para los nÃºcleos fÃ­sicos, el costo por cambio de contexto ahoga el rendimiento real.

---

## CASO 64

Contexto:
A punto de lanzar a producciÃ³n, el equipo detecta que el mÃ³dulo de control de usuarios tiene cÃ³digo sucio, duplicado y carece del patrÃ³n MVC que acordaron. El gerente decide lanzarlo "asÃ­ como estÃ¡" para cumplir con la fecha del contrato, prometiendo que el cÃ³digo se repararÃ¡ en la siguiente fase tras recibir los fondos.

Pregunta:
En tÃ©rminos de la IngenierÃ­a de Software Ã¡gil, Â¿quÃ© concepto de riesgo acumulativo ha incurrido el equipo?

Opciones:
A) RefactorizaciÃ³n prematura
B) Defectos de Pruebas Unitarias
C) InyecciÃ³n de Dependencias
D) Deuda TÃ©cnica

Respuesta correcta: D

ExplicaciÃ³n:
La Deuda TÃ©cnica es el "interÃ©s de cÃ³digo" que contrae un proyecto cuando se eligen soluciones fÃ¡ciles, rÃ¡pidas y sucias sobre metodologÃ­as limpias (best practices) por restricciones de tiempo. Si no se "paga" (refactorizando en sprints futuros), asfixiarÃ¡ y ralentizarÃ¡ desarrollos nuevos por la alta fragilidad del cÃ³digo.

---

## CASO 65

Contexto:
El programador de una estructura "Tabla Hash (Hash Map)" descubre que, tras ingresar 1 millÃ³n de registros, su compleja funciÃ³n matemÃ¡tica ha asignado a varios registros completamente distintos (Ej. "Roberto" y "RubÃ©n") el mismo idÃ©ntico Ã­ndice de cajÃ³n de memoria (Bucket 501), causando que el sistema ralentice sus bÃºsquedas al amontonar registros en la misma zona.

Pregunta:
Â¿QuÃ© anomalÃ­a matemÃ¡tica estructural acaba de sufrir su algoritmo de diccionario?

Opciones:
A) Exceso de Recursividad
B) ColisiÃ³n Hash (Hash Collision)
C) Pila Desbordada (Stack Overflow)
D) FragmentaciÃ³n de B-Tree

Respuesta correcta: B

ExplicaciÃ³n:
Una ColisiÃ³n Hash ocurre inevitablemente cuando una funciÃ³n algorÃ­tmica resume valores diferentes (Inputs) proyectÃ¡ndolos hacia el mismo valor de salida o llave matemÃ¡tica (Output/Ãndice). Un buen diseÃ±o de Tabla Hash debe implementar mitigaciones fuertes (como Listas Enlazadas en el cajÃ³n de bucket) para sobrevivir a las colisiones.

---

## CASO 66

Contexto:
Se audita la calidad del diseÃ±o de programaciÃ³n Orientada a Objetos de un banco. Se encuentra que la clase `CajaRegistradora` llama directamente y de forma dura a mÃ©todos internos protegidos de la clase `Inventario`. AdemÃ¡s, si el programador cambia el tipo de variable en `Inventario`, la `CajaRegistradora` explota inmediatamente y ya no compila.

Pregunta:
Â¿QuÃ© principio cualitativo de la POO se ha violado gravemente en este diseÃ±o de arquitectura sucia?

Opciones:
A) Alta CohesiÃ³n
B) Alto Acoplamiento (Alta interdependencia)
C) Baja Herencia
D) Alta EncapsulaciÃ³n

Respuesta correcta: B

ExplicaciÃ³n:
El diseÃ±o de software dicta: "Alta cohesiÃ³n, Bajo acoplamiento". Cuando una clase asume, depende y conoce los entresijos internos, variables rÃ­gidas o mÃ©todos fuertes de otra clase, se dice que existe un *Alto Acoplamiento*. Esto es veneno en arquitecturas porque el cÃ³digo se vuelve como espagueti: mover una pieza rompe todo a su alrededor.

---

## CASO 67

Contexto:
Una empresa compra dos proveedores de Internet diferentes (ISP) en caso de que uno se caiga (redundancia extrema). Para que su centro de datos en la red corporativa negocie inteligentemente las rutas del trÃ¡fico global (Internet exterior mundial) hacia ambos ISPs, debe anunciar sus IPs dinÃ¡micas conectando su router corporativo maestro directamente con los routers de los proveedores de internet.

Pregunta:
Â¿QuÃ© protocolo colosal de enrutamiento externo (Exterior Gateway Protocol) es el Ãºnico capaz de sostener y enrutar las tablas de internet a nivel mundial?

Opciones:
A) OSPF (Open Shortest Path First)
B) BGP (Border Gateway Protocol)
C) EIGRP
D) RIPv2

Respuesta correcta: B

ExplicaciÃ³n:
BGP es conocido como "El Protocolo de Internet" a nivel macro. Mientras OSPF y EIGRP son geniales dentro del edificio corporativo (IGP), BGP se utiliza exclusivamente para intercambiar informaciÃ³n de encaminamiento de frontera entre el corporativo y los verdaderos proveedores o entre paÃ­ses (Sistemas AutÃ³nomos).

---

## CASO 68

Contexto:
En un portal de compras, el backend es escrito en Node.js operando sobre MongoDB (Una base de datos documental). El atacante entra al formulario de acceso de la pÃ¡gina y en la casilla del correo, en lugar de ingresar "texto plano", inyecta maliciosamente un objeto JSON avanzado como `{"$gt": ""}` logrando que el backend procese el objeto y bypassÃ©e el formulario exitosamente como si la contraseÃ±a existiera.

Pregunta:
Â¿QuÃ© tipo de ataque web moderno acaba de ocurrir ante este descuido del servidor?

Opciones:
A) InyecciÃ³n SQL ClÃ¡sica Blind ()
B) Ataque de Fuerza Bruta Local
C) InyecciÃ³n NoSQL
D) Cross-Site Scripting (XSS)

Respuesta correcta: C

ExplicaciÃ³n:
Aunque las bases MongoDB no son relacionales ni usan "SELECT/WHERE" y son inmunes a InyecciÃ³n SQL, sufren la letal "InyecciÃ³n NoSQL". Si el cÃ³digo de la API no valida fuertemente las entradas (sanitizaciÃ³n) y permite que un usuario inserte JSON malicioso que actÃºe como operador (Ej. Operador Mayor Que `$gt`), el sistema NoSQL evaluarÃ¡ la condicional siempre como Verdadera engaÃ±ando la del login.

---

## CASO 69

Contexto:
Un servidor Linux de desarrollo marca el error fatal de "Disco lleno" impidiendo subir fotos. El programador asustado ejecuta el comando `df -h` y la terminal revela algo absurdo: El disco duro principal de 1 Terabyte tiene todavÃ­a 800 Gigabytes completamente libres. El programador intenta crear un archivo vacÃ­o `.txt` y Linux le niega la acciÃ³n.

Pregunta:
Â¿QuÃ© lÃ­mite estructural interno de la tabla de ext4 ha llegado secretamente al 100% de agotamiento asfixiando al servidor aunque tenga mucho espacio en disco duro?

Opciones:
A) Exhaustion de la RAM Swap
B) Agotamiento excesivo de Inodos (Inodes Exhaustion)
C) Desbaste sectorial del RAID
D) LÃ­mite de permisos del usuario Root

Respuesta correcta: B

ExplicaciÃ³n:
En Linux, el espacio de almacenamiento real y la libreta de direcciones fÃ­sica (Inodos) corren por separado. Un inodo es el registro administrativo (tamaÃ±o, tipo, bloque) de 1 archivo. Si el programador web crea millones de archivos minÃºsculos (de 1KB o vacÃ­os), los 800GB sobrarÃ¡n, pero el contador del directorio se saturarÃ¡ impidiendo lÃ³gicamente que Linux liste un archivo nuevo.

---

## CASO 70

Contexto:
En una revisiÃ³n de cÃ³digo en Java, encuentras la clase masiva `FacturaVentas`. Dicha clase calcula el subtotal, suma el IVA, dibuja la interfaz grÃ¡fica de la tabla, conecta con el puerto de la impresora tÃ©rmica e inserta el registro final en PostgreSQL.

Pregunta:
SegÃºn los pilares de diseÃ±o limpio arquitectÃ³nico "SOLID", Â¿quÃ© principio capital se ha roto de forma rotunda en este cÃ³digo?

Opciones:
A) Liskov Substitution Principle (SustituciÃ³n de Liskov)
B) Interface Segregation Principle (SegregaciÃ³n de Interfaces)
C) Dependency Inversion Principle (InversiÃ³n de Dependencias)
D) Single Responsibility Principle (Principio de Responsabilidad Ãanica)

Respuesta correcta: D

ExplicaciÃ³n:
La 'S' de SOLID establece que una clase de software "solo debe tener una Ãºnica, clara y atÃ³mica razÃ³n para cambiar y para existir". Al agrupar finanzas (matemÃ¡ticas), vistas (GUI) y redes (impresiÃ³n/BD) en una clase "Clase Dios (God Object)", el diseÃ±o es caÃ³tico e inmanejable.

---

## CASO 71

Contexto:
Se desarrolla un algoritmo que toma una lista de correos electrÃ³nicos y busca correos duplicados. El programador diseÃ±a la soluciÃ³n creando un bucle `for` que itera todos los registros, y dentro de ese bucle anida ciegamente otro bucle `for` idÃ©ntico que escanea nuevamente toda la lista completa desde cero.

Pregunta:
AnalÃ­ticamente hablando, Â¿a quÃ© nivel de complejidad y degradaciÃ³n de rendimiento matemÃ¡tica pertenece este diseÃ±o algorÃ­tmico?

Opciones:
A) Lineal: O(n)
B) LogarÃ­tmica: O(log n)
C) CuadrÃ¡tica: O(n^2)
D) : O(1)

Respuesta correcta: C

ExplicaciÃ³n:
Un ciclo que itera "n" veces (dependiendo del tamaÃ±o de los datos) equivale a complejidad lineal O(n). Si el desarrollador encierra un bucle dependiente del mismo tamaÃ±o de datos dentro del primer bucle, el algoritmo forzosamente tendrÃ¡ que realizar el cÃ¡lculo cruzado completo ($n \times n$), degradando exponencialmente el rendimiento a O(nÂ²), lo que crashearÃ¡ el CPU si ingresan cientos de miles de registros.

---

## CASO 72

Contexto:
En el desarrollo de un Backend con el framework Spring Boot, un arquitecto decide que ninguna clase debe instanciar y controlar manualmente conexiones de base de datos usando la orden nativa e inflexible `new ConexionBD()`. En su lugar, el Framework inyecta o regala de forma mÃ¡gica la instancia ya pre-configurada directamente en los constructores de las clases a medida que se inicie la aplicaciÃ³n.

Pregunta:
Â¿QuÃ© patrÃ³n avanzado de diseÃ±o es este, vital en frameworks como Angular, Spring o Laravel?

Opciones:
A) PatrÃ³n Observador 
B) InyecciÃ³n de Dependencias (Dependency Injection / Inversion of Control)
C) Decorador DinÃ¡mico Abstracto
D) Adaptador Funcional

Respuesta correcta: B

ExplicaciÃ³n:
La InyecciÃ³n de Dependencias quita la responsabilidad a la clase de tener que construir manualmente sus componentes pesados. Facilita enormemente las pruebas automÃ¡ticas (Mocks), el mantenimiento modular y reduce drÃ¡sticamente el acoplamiento al aplicar la InversiÃ³n de Control.

---

## CASO 73

Contexto:
Al dar la inducciÃ³n de redes al personal nuevo, el arquitecto de redes omite el Modelo OSI de siete capas argumentando que, para fines estandarizados, pragmÃ¡ticos y reales del desarrollo moderno de internet global, solo es necesario basarse en el modelo condensado y consolidado.

Pregunta:
Â¿QuÃ© modelo de estandarizaciÃ³n condensado de cuatro capas en la industria rige realmente la arquitectura que forma el internet?

Opciones:
A) El modelo Token-Ring Macro
B) El modelo ATM (Asynchronous Transfer Mode)
C) El modelo TCP/IP
D) El modelo IPv6 Subnet Layering

Respuesta correcta: C

ExplicaciÃ³n:
El Modelo OSI (con sus 7 teÃ³ricas e inmaculadas capas) es el estÃ¡ndar educativo fundamental. Sin embargo, en implementaciones reales, ingenieriles y prÃ¡cticas del protocolo dominante del mundo de la nube global, el Modelo TCP/IP condensa estas funciones en cuatro robustas capas de trabajo: AplicaciÃ³n, Transporte, Internet y Acceso a Red.

---

## CASO 74

Contexto:
El volumen masivo de datos del corporativo ha saturado al disco fÃ­sico del nodo maestro central MySQL, asfixiando por completo su lectura y escritura vertical. El CTO ordena fragmentar y "Partir o Cuchillear" fÃ­sicamente los datos, de modo que los registros de los clientes de AmÃ©rica se alojen y residan en un servidor A, y los de Europa en un servidor B por separado.

Pregunta:
Â¿QuÃ© tÃ©cnica arquitectÃ³nica de particionamiento distribuido (Escalabilidad Horizontal de datos) estÃ¡n instaurando?

Opciones:
A) ClÃºster HÃ­brido
B) ReplicaciÃ³n Maestro-Esclavo
C) Data Sharding (FragmentaciÃ³n Horizontal de Base de Datos)
D) CachÃ© Distribuido (Redis Layers)

Respuesta correcta: C

ExplicaciÃ³n:
El "Sharding" o "FragmentaciÃ³n Horizontal" consiste en tomar una tabla descomunal con miles de millones de filas, dividirla matemÃ¡ticamente por piezas geogrÃ¡ficas, llaves o alfabÃ©ticamente (Shards/Fragmentos), y alojar cada pedazo fÃ­sico de disco en distintos servidores o clÃºsteres separados. No debe confundirse con ReplicaciÃ³n, donde todos los servidores guardan un clon del 100% de la misma data completa (redundancia ineficiente en disco).

---

## CASO 75

Contexto:
Un servidor que administra las grabaciones bancarias pierde el suministro de energÃ­a abruptamente. Al encender, un mecanismo invisible de tolerancia a fallos a nivel particiÃ³n nativa recupera rÃ¡pidamente los metadatos de los videos que estaban siendo copiados, asegurÃ¡ndose de que los bytes interrumpidos se corrijan y cancelen para no dejar la tabla del archivo "sucia".

Pregunta:
Â¿CÃ³mo se le denomina tÃ©cnicamente a esta funcionalidad vital propia de sistemas de archivo avanzados y sÃ³lidos (como NTFS de Windows o ext4 de Linux)?

Opciones:
A) Sistema de Archivos FAT Nativo Exclusivo
B) Journaling (Sistema de Archivos con Registro / BitÃ¡cora Oculta)
C) IndexaciÃ³n Profunda Externa
D) Particionamiento en espejo Swap (Swap Mirroring)

Respuesta correcta: B

ExplicaciÃ³n:
El "Journaling" es una subrutina oculta que guarda metadatos (un diario atÃ³mico minucioso) de lo que el sistema estÃ¡ a punto de escribir en el disco justo antes de iniciar la escritura pesada. En caso de corte elÃ©ctrico inesperado en milisegundos, el OS lee ese pequeÃ±o diario, determina quÃ© escritura quedÃ³ rota a medias, revierte el caos y devuelve la estabilidad a la base de archivo.

---

## CASO 76

Contexto:
Varios programadores envÃ­an cÃ³digo simultÃ¡neamente al repositorio central todo el dÃ­a. Inmediatamente y de forma automatizada, en la nube arranca un bot que compila todo, descarga dependencias NPM y corre la baterÃ­a de pruebas unitarias sobre el cÃ³digo fusionado por cada envÃ­o, emitiendo una alarma si alguien rompiÃ³ el sistema remotamente.

Pregunta:
Â¿QuÃ© prÃ¡ctica de ciclo de DevOps asegura este ensamblaje Ã¡gil,, automatizado y seguro de calidad?

Opciones:
A) Infraestructura como CÃ³digo (IaC)
B) Entregas Continuas de AceptaciÃ³n (UAT)
C) IntegraciÃ³n Continua (CI / Continuous Integration)
D) RefactorizaciÃ³n en Pipeline FÃ­sico

Respuesta correcta: C

ExplicaciÃ³n:
La IntegraciÃ³n Continua (CI) es la mÃ©dula del DevOps. En lugar de fusionar y ensamblar los cÃ³digos de 20 desarrolladores a final del mes y sufrir choques incomprensibles (Integration Hell), el Pipeline (GitHub Actions, Jenkins) valida automÃ¡ticamente, mediante la compilaciÃ³n y pruebas, cada diminuto cÃ³digo (Commit) que se sube en vivo.

---

## CASO 77

Contexto:
Se desarrolla un sistema de mensajerÃ­a al estilo Instagram. El programador modela la informaciÃ³n usando Grafos MatemÃ¡ticos, argumentando que la base de la plataforma es "Si el Usuario A decide seguir y suscribirse al Usuario B, no implica ni forza para nada que el Usuario B decida seguir al Usuario A de regreso".

Pregunta:
Por su caracterÃ­stica restrictiva relacional, Â¿quÃ© tipo de modelo de Grafo describe la programaciÃ³n de estos seguidores?

Opciones:
A) Grafo Bipartito No Conexo Absoluto
B) Grafo Completo Total (Mesh Fuerte)
C) Grafo No Dirigido con pesos nulos
D) Grafo Dirigido (Digrafo / Flechas apuntadas unidireccionales)

Respuesta correcta: D

ExplicaciÃ³n:
Las relaciones de Facebook ("Amistad bidireccional forzosa") operan bajo un Grafo No Dirigido, donde la arista corre en ambas vÃ­as siempre y une estÃ¡ticamente a A y B. Instagram y Twitter operan como "Grafos Dirigidos", cuyas relaciones son flechas (aristas dirigidas unidireccionales). "A sigue a B" es independiente de que "B siga a A".

---

## CASO 78

Contexto:
El programador Senior de criptografÃ­a crea una clase Java/C# llamada `GeneradorDeLlavesBancarias`. Para evitar brechas futuras de seguridad, sella explÃ­cita y contundentemente la arquitectura prohibiendo estructuralmente que cualquier desarrollador logre crear, compilar o inventar una nueva clase "hija" derivada basÃ¡ndose en esta mediante el uso del principio de herencia.

Pregunta:
Â¿QuÃ© modificador de acceso o declaraciÃ³n protectora implementÃ³?

Opciones:
A) Clase Abstracta (Abstract) 
B) Clase Local Privada (Private Static Local)
C) Clase Final (Final o Sealed)
D) Clase Virtual (Virtual Async Class)

Respuesta correcta: C

ExplicaciÃ³n:
La palabra reservada `final` en Java (o `sealed` en C#) se aplica a una clase superior para "cortar el Ã¡rbol genealÃ³gico" de raÃ­z, impidiendo absolutamente que pueda extenderse y generar herencia, garantizando la inviolabilidad del diseÃ±o central y eliminando anulaciones o falsificaciones polimÃ³rficas de sus mÃ©todos sensitivos de negocio.

---

## CASO 79

Contexto:
El equipo IT reemplaza los equipos de transmisiÃ³n del corporativo. Deciden inhabilitar por completo el viejo estÃ¡ndar Wi-Fi casero corporativo porque utilizaba un apretÃ³n de manos dÃ©bil de 4 vÃ­as (Four-Way Handshake) altamente susceptible a ataques de fuerza bruta en diccionarios si era capturado a distancia por un hacker con una antena externa y tarjeta modo monitor (Aircrack).

Pregunta:
Â¿A quÃ© antiguo estÃ¡ndar y vulnerabilidad de ciberseguridad inalÃ¡mbrica mundial le estÃ¡n diciendo adiÃ³s para dar la bienvenida a infraestructuras seguras Enterprise o de CriptografÃ­a de Intercambio Equivalente a Pares limpios?

Opciones:
A) El estÃ¡ndar de protecciÃ³n WPA3 (SAE) de ruteo
B) La vulnerabilidad estructural del modelo PSK y al estÃ¡ndar WPA2
C) CriptografÃ­a MAC Local Filtering BÃ¡sico
D) Autenticaciones BiomÃ©tricas SSH

Respuesta correcta: B

ExplicaciÃ³n:
El viejo WPA2-PSK estuvo plagado de debilidades de Fuerza Bruta offline al permitir el espionaje y robo a del archivo Handshake inicial. Su sucesor, WPA3, introduce el modelo criptogrÃ¡fico SAE (Simultaneous Authentication of Equals) eliminando el handshake del diccionario, impidiendo los robos fuera de lÃ­nea, obligando a los hackers a intentos manuales que son penalizados con latencia.

---

## CASO 80

Contexto:
El administrador planea los respaldos mundiales de una base de datos pesada. Los domingos hace un respaldo `Full` (Completo) a las 00:00. El lunes hace una copia pequeÃ±a salvando y capturando *exclusivamente y de forma estricta Ãºnica* los cambios ocurridos en las Ãºltimas 24 horas despuÃ©s de la copia del domingo completo. El martes toma una nueva foto guardando *Ãºnicamente* los bytes sucios insertados desde la copia mÃ­nima del lunes inmediato.

Pregunta:
Â¿QuÃ© esquema restrictivo de ciclo de respaldo logarÃ­tmico estÃ¡ aplicando en la industria SysAdmin?

Opciones:
A) Respaldo Diferencial
B) Respaldo Completo Rotativo
C) Respaldo de Imagen DinÃ¡mica 
D) Respaldo Incremental

Respuesta correcta: D

ExplicaciÃ³n:
El Respaldo Incremental ahorra un masivo e inmenso espacio en disco duro, ya que Ãºnicamente toma y clona la "diferencia" matemÃ¡tica respecto al Ãºltimo respaldo de cualquier tipo en la cadena mÃ¡s inmediata. (Ojo: El Respaldo "Diferencial", a diferencia del incremental, es torpe pero seguro y pesado: graba y suma los cambios ocurridos estrictamente siempre comparÃ¡ndolos en peso respecto al gran Full dominical perimetral nativo).
\newpage
# BLOQUE 5
## CASO 81

Contexto:
El equipo modela una base de datos escolar. Se determinan dos entidades: "Estudiantes" y "Clases". Un estudiante puede inscribirse en muchas clases y una clase puede contener muchos estudiantes matriculados. El ingeniero novato une ambas tablas directamente con una sola Llave ForÃ¡nea.

Pregunta:
Â¿Por quÃ© el modelo del ingeniero fallarÃ¡ estructuralmente y quÃ© elemento relacional es obligatorio crear?

Opciones:
A) FallarÃ¡ por redundancia transitiva; requiere desnormalizar en Primera Forma Normal.
B) La relaciÃ³n Muchos a Muchos (M:N) es matemÃ¡ticamente imposible de representar con una simple Llave ForÃ¡nea directa entre dos tablas. Obliga a construir una "Tabla Intermedia" o de intersecciÃ³n (ej. "Inscripciones") que contenga ambas llaves primarias.
C) El motor SQL bloquearÃ¡ la tabla; requiere usar disparadores (Triggers).
D) FallarÃ¡ porque no cumple con la restricciÃ³n de integridad de dominio unÃ­voco de Boyce-Codd.

Respuesta correcta: B

ExplicaciÃ³n:
En bases de datos relacionales, una relaciÃ³n M:N no se puede almacenar con llaves forÃ¡neas entre dos entidades, ya que se necesitarÃ­a un arreglo dinÃ¡mico en cada celda, violando la 1FN. La regla de oro exige "romper" la relaciÃ³n M:N mediante una tercera tabla pivote o asociativa que mapee a ambos elementos en relaciones de 1:N.

---

## CASO 82

Contexto:
El gerente del corporativo exige que todos los empleados puedan navegar por internet, pero desea bloquear el acceso a sitios de redes sociales. AdemÃ¡s, quiere que las pÃ¡ginas de uso diario (como portales de noticias) se almacenen en una memoria central para ahorrar ancho de banda al corporativo.

Pregunta:
Â¿QuÃ© dispositivo de red o componente de infraestructura es el indicado para cumplir ambos objetivos funcionales?

Opciones:
A) Servidor Proxy Perimetral
B) Enrutador de Borde BGP
C) Switch de Capa 2
D) Balanceador de Carga

Respuesta correcta: A

ExplicaciÃ³n:
Un servidor Proxy actÃºa como un intermediario o portero a nivel de la Capa de AplicaciÃ³n. No solo filtra y bloquea dominios especÃ­ficos (control de acceso web), sino que su funciÃ³n mÃ¡s cÃ©lebre es almacenar en cachÃ© las pÃ¡ginas visitadas por los usuarios, acelerando las respuestas de red locales y ahorrando el ancho de banda del ISP externo.

---

## CASO 83

Contexto:
Un centro de datos instala software de virtualizaciÃ³n. En lugar de instalar Windows o Linux como sistema principal y luego cargar mÃ¡quinas virtuales dentro de Ã©l, el administrador formatea los discos duros nativos en blanco e instala VMWare ESXi directamente sobre el procesador y hardware del servidor.

Pregunta:
Â¿QuÃ© tipo de arquitectura de virtualizaciÃ³n robusta estÃ¡ implementando el centro de datos?

Opciones:
A) Hypervisor Tipo 2 (Hosted)
B) Contenedores Dockerizados
C) Hypervisor Tipo 1 (Bare-Metal)
D) VirtualizaciÃ³n de Sistema Operativo Emulado

Respuesta correcta: C

ExplicaciÃ³n:
El Hypervisor Tipo 1, tambiÃ©n llamado "Bare-Metal" (Metal Descubierto), es el rey de la virtualizaciÃ³n corporativa. Se instala directamente sobre el hardware fÃ­sico del servidor sin depender de un sistema operativo subyacente. Esto elimina a los intermediarios pesados, logrando una eficiencia de procesador abrumadora en comparaciÃ³n con el Tipo 2 (VirtualBox/VMWare Workstation) que corre como una aplicaciÃ³n mÃ¡s sobre Windows.

---

## CASO 84

Contexto:
Durante la etapa de diseÃ±o de una aplicaciÃ³n, el programador copia y pega un bloque de cÃ³digo matemÃ¡tico 15 veces a lo largo del sistema porque "era mÃ¡s rÃ¡pido". Aunque el programa funciona, aÃ±os despuÃ©s, al intentar cambiar una variable en la fÃ³rmula, el equipo tarda semanas persiguiendo errores y fallas inexplicables a lo largo del sistema entero.

Pregunta:
Â¿QuÃ© actividad de ingenierÃ­a Ã¡gil no se realizÃ³ para curar este problema cuando el cÃ³digo aÃºn era manejable?

Opciones:
A) Pruebas de EstrÃ©s Continuo (Load Testing)
B) AnÃ¡lisis de Requerimientos de Casos de Uso
C) RefactorizaciÃ³n (Refactoring) para saldar la Deuda TÃ©cnica
D) ProgramaciÃ³n Extrema (Pair Programming)

Respuesta correcta: C

ExplicaciÃ³n:
La Deuda TÃ©cnica se genera cuando el equipo elige atajos rÃ¡pidos (copiar y pegar) en lugar de soluciones arquitectÃ³nicas limpias. La "RefactorizaciÃ³n" es la tarea obligatoria de ingenierÃ­a para pagar esta deuda: consiste en limpiar, reestructurar y optimizar el cÃ³digo fuente interno sin alterar en absoluto su funcionalidad visual externa (ej. extraer esos 15 bloques duplicados en una sola funciÃ³n central).

---

## CASO 85

Contexto:
Un Ã¡rbol binario de bÃºsqueda recibe datos numÃ©ricos ordenados del 1 al 10,000 en secuencia. El desarrollador nota que las consultas son extremadamente lentas, como si no hubiera ningÃºn Ã¡rbol programado, porque todos los nodos se insertaron hacia un solo lado formando una enorme lÃ­nea recta.

Pregunta:
Â¿QuÃ© tipo de estructura de Ã¡rbol especializada debiÃ³ implementar para impedir esta degradaciÃ³n algorÃ­tmica?

Opciones:
A) Ãrbol de Segmentos Unidireccional
B) Ãrbol N-Ario
C) Ãrbol AVL o Ãrbol Rojo-Negro (Ãrboles Auto-balanceables)
D) Grafo CÃ­clico Dirigido

Respuesta correcta: C

ExplicaciÃ³n:
Un Ãrbol Binario tradicional se degrada a una vil lista enlazada (Complejidad O(n)) si se le introducen datos ya ordenados secuencialmente. Los Ãrboles AVL (o Red-Black Trees) detectan este desbalance peligroso durante las inserciones y realizan "Rotaciones" matemÃ¡ticas automÃ¡ticas para mantenerse simÃ©tricos y chaparros, garantizando siempre su extrema velocidad de O(log n).

---

## CASO 86

Contexto:
En un sistema orientado a objetos, el arquitecto define un mÃ©todo `calcularArea()` en la clase `Poligono`. Luego, las clases derivadas `Triangulo` y `Cuadrado` definen su propia implementaciÃ³n matemÃ¡tica y fÃ³rmula de esa misma funciÃ³n, invalidando la del padre pero conservando el mismo nombre del mÃ©todo en todo el sistema.

Pregunta:
Â¿QuÃ© pilar o caracterÃ­stica de la POO ha aplicado el arquitecto?

Opciones:
A) Sobrecarga de MÃ©todos
B) Ocultamiento de Variables
C) Polimorfismo por Sobreescritura (Method Overriding)
D) AbstracciÃ³n de Datos

Respuesta correcta: C

ExplicaciÃ³n:
La Sobreescritura de MÃ©todos (Overriding) es la manifestaciÃ³n del Polimorfismo. Ocurre cuando una clase hija decide ignorar o cambiar el comportamiento dictado por su clase padre, "sobreescribiendo" el mÃ©todo con su propia, permitiendo la adaptaciÃ³n sin cambiar la interfaz global.

---

## CASO 87

Contexto:
El equipo de redes soluciona un problema de latencia cambiando un conector daÃ±ado en un cable de cobre trenzado y reemplazando un repetidor de seÃ±al bÃ¡sico en el cuarto de telecomunicaciones.

Pregunta:
SegÃºn el Modelo de Referencia OSI, Â¿en quÃ© capa ocurrieron las reparaciones estrictamente fÃ­sicas de esta falla?

Opciones:
A) Capa 3 (Red)
B) Capa 2 (Enlace de Datos)
C) Capa 4 (Transporte)
D) Capa 1 (FÃ­sica)

Respuesta correcta: D

ExplicaciÃ³n:
La Capa 1 (FÃ­sica) del Modelo OSI abarca los voltajes, radiofrecuencias, especificaciones de los conectores fÃ­sicos, y componentes electrÃ³nicos que no piensan ni leen datos, sino que simplemente repiten pulsos elÃ©ctricos (como los concentradores/Hubs, cables UTP y repetidores).

---

## CASO 88

Contexto:
En un almacÃ©n de datos (Data Warehouse), se tiene una tabla masiva de mil millones de registros. Se requiere crear un Ã­ndice sobre la columna "GÃ©nero" que contiene exclusivamente los valores "Masculino" o "Femenino". Usar un Ã­ndice B-Tree clÃ¡sico resulta inÃºtil, lento y pesado debido a la nula diversidad de valores.

Pregunta:
Â¿QuÃ© tipo de Ã­ndice especial para bases de datos es el ideal y estÃ¡ optimizado matemÃ¡ticamente para columnas con bajÃ­sima cardinalidad (pocos valores distintos)?

Opciones:
A) Ãndice Hash Compuesto
B) Ãndice Agrupado CÃ­clico
C) Ãndice Bitmap (Mapa de bits)
D) Ãndice de Texto Completo

Respuesta correcta: C

ExplicaciÃ³n:
Los Ãndices Bitmap estÃ¡n diseÃ±ados exactamente para columnas con baja cardinalidad (ej. "Estado_Civil", "Activo_Inactivo"). En lugar de guardar pesados Ã¡rboles, el motor asigna un arreglo masivo de "Ceros" y "Unos" para cada valor posible. Las consultas cruzadas se vuelven hiper-veloces usando simples compuertas (AND/OR) a nivel procesador.

---

## CASO 89

Contexto:
Un equipo diseÃ±a un nuevo sistema operativo seguro para misiones aeroespaciales crÃ­ticas. Deciden reducir el corazÃ³n del sistema operativo al mÃ­nimo tamaÃ±o posible, delegando los drivers, los servidores de grÃ¡ficos y los sistemas de archivos a procesos de nivel de usuario, fuera de la zona protegida del nÃºcleo.

Pregunta:
Â¿QuÃ© arquitectura de diseÃ±o de nÃºcleo de sistema operativo estÃ¡n empleando?

Opciones:
A) Arquitectura MonolÃ­tica ClÃ¡sica
B) Arquitectura de Microkernel
C) Sistema Operativo de Tiempo Compartido
D) Arquitectura Distribuida en Red

Respuesta correcta: B

ExplicaciÃ³n:
En un diseÃ±o Microkernel, el nÃºcleo (Kernel) es diminuto y solo gestiona lo indispensable (comunicaciÃ³n de mensajes y hardware bÃ¡sico). Todo lo demÃ¡s corre en el "Espacio de Usuario". Si el controlador de la impresora colapsa o se congela, el sistema completo sobrevive porque la falla estÃ¡ fuera de la zona nÃºcleo. (Windows o Linux clÃ¡sico son MonolÃ­ticos gigantes donde una falla en el driver tumba a todo el sistema provocando la Pantalla Azul).

---

## CASO 90

Contexto:
Se desarrolla un sistema de reportes en bolsa de valores donde el mÃ³dulo "DashboardVisual" y el mÃ³dulo "AlertaCelular" necesitan ser informados instantÃ¡neamente cada vez que el precio de una acciÃ³n cambia en el objeto "CotizadorCentral", sin necesidad de tener un bucle que consulte repetidamente.

Pregunta:
Â¿QuÃ© PatrÃ³n de DiseÃ±o del software orquesta eficientemente este mecanismo de notificaciones automatizadas estilo "suscripciÃ³n"?

Opciones:
A) PatrÃ³n FÃ¡brica (Factory)
B) PatrÃ³n Observador (Observer)
C) PatrÃ³n Fachada (Facade)
D) PatrÃ³n Adaptador (Adapter)

Respuesta correcta: B

ExplicaciÃ³n:
El PatrÃ³n de DiseÃ±o Observer establece una relaciÃ³n de "Publicador-Suscriptor" uno a muchos. Cuando el sujeto central (el publicador del precio) cambia su estado, notifica silenciosamente e invoca a todos los objetos que estÃ¡n registrados en su lista de suscriptores para que se actualicen inmediatamente sin forzar bÃºsquedas activas y pesadas.

---

## CASO 91

Contexto:
Un programador junior ejecuta un algoritmo de recursividad profundo sin darse cuenta de que su condiciÃ³n base estÃ¡ mal estructurada. Tras mil ciclos, el programa explota y se aborta repentinamente marcando un "Stack Overflow Error".

Pregunta:
TÃ©cnicamente a nivel de arquitectura de la memoria y compilaciÃ³n, Â¿quÃ© estructura interna se sobrecargÃ³ hasta reventar?

Opciones:
A) La Pila de Llamadas del Sistema (Call Stack)
B) El Registro Acumulador del Procesador (ALU)
C) La cola circular de paginaciÃ³n del sistema de archivos
D) El bloque de memoria reservada Heap de objetos dinÃ¡micos

Respuesta correcta: A

ExplicaciÃ³n:
Cada vez que una funciÃ³n invoca a otra (o a sÃ­ misma en la recursividad), el sistema guarda las variables de entorno actuales y la instrucciÃ³n de "retorno" en la "Pila de Llamadas" o Call Stack de memoria. Como la recursividad del junior fue infinita, la memoria fÃ­sica asignada al proceso del Call Stack llegÃ³ a su tope matemÃ¡tico (LÃ­mite de profundidad) y se derramÃ³.

---

## CASO 92

Contexto:
En la librerÃ­a "MatematicasAvanzadas" creada en C#, el equipo nota que cada vez que necesitan sumar dos nÃºmeros consumen recursos instanciando la clase con el operador `new MatematicasAvanzadas()`. Para ahorrar memoria, el arquitecto refactoriza la funciÃ³n para permitir que se ejecute la suma llamando directamente `MatematicasAvanzadas.sumar()`, prescindiendo de instanciar un objeto.

Pregunta:
Â¿Con quÃ© modificador especial de la programaciÃ³n orientada a objetos debiÃ³ declarar el arquitecto la funciÃ³n "sumar"?

Opciones:
A) Abstracto (Abstract)
B) Virtual (Virtual)
C) (Static)
D) Sellado (Sealed)

Respuesta correcta: C

ExplicaciÃ³n:
Los mÃ©todos o atributos declarados como (`static`) pertenecen globalmente a la clase misma y no a sus mÃºltiples objetos derivados. Esto permite acceder a la funcionalidad matemÃ¡tica de la clase instantÃ¡neamente sin obligar al compilador a reservar memoria dinÃ¡mica para crear (instanciar) una variable u objeto nuevo.

---

## CASO 93

Contexto:
La empresa de servicios de contenido en streaming distribuye rÃ©plicas idÃ©nticas de su servidor de videos en 5 paÃ­ses distintos (JapÃ³n, Estados Unidos, Francia, Brasil y SudÃ¡frica), y configura los routers para que todos los cinco servidores utilicen matemÃ¡ticamente la misma y Ãºnica direcciÃ³n IPv6 simultÃ¡neamente. Un usuario desde MÃ©xico solicita un video.

Pregunta:
Â¿QuÃ© mÃ©todo avanzado y poderoso de direccionamiento IP se estÃ¡ empleando para asegurar que el trÃ¡fico desde MÃ©xico sea atendido por el servidor topolÃ³gicamente mÃ¡s cercano (EE.UU.) en la red global?

Opciones:
A) Direccionamiento Multicast ClÃ¡sico
B) Enrutamiento Anycast IPv6
C) Encapsulamiento VPN Directo Unicast
D) Algoritmo de Reparto ARP DinÃ¡mico

Respuesta correcta: B

ExplicaciÃ³n:
A diferencia del Unicast (una IP para un solo equipo en el mundo) o el Broadcast (un mensaje a todos), el direccionamiento "Anycast" permite que mÃºltiples servidores dispersos mundialmente tengan asignada idÃ©nticamente la misma direcciÃ³n IP pÃºblica. El protocolo de red enviarÃ¡ matemÃ¡ticamente la peticiÃ³n del cliente al nodo que estÃ© geogrÃ¡ficamente y lÃ³gicamente "mÃ¡s cerca" de Ã©l, acelerando la red globalmente.

---

## CASO 94

Contexto:
Una tabla relacional normalizada "Empleados" contiene informaciÃ³n sobre quÃ© empleado domina quÃ© idioma y quÃ© herramienta de software usa. Como Juan domina InglÃ©s y FrancÃ©s, y utiliza Excel y Word, la base de datos comienza a generar decenas de registros combinando y cruzando todas las tuplas de Juan solo para alojar estos arreglos mÃºltiples.

Pregunta:
Â¿QuÃ© forma de diseÃ±o de NormalizaciÃ³n exige la eliminaciÃ³n estricta y rotunda de estas dependencias multivaluadas para no crear cruces cartesianos absurdos de mÃºltiples temas independientes en una sola tabla?

Opciones:
A) Primera Forma Normal (1FN)
B) Tercera Forma Normal (3FN)
C) Cuarta Forma Normal (4FN)
D) Quinta Forma Normal (5FN)

Respuesta correcta: C

ExplicaciÃ³n:
La 4FN interviene cuando el diseÃ±o ya es 3FN, pero se identifican dos o mÃ¡s hechos independientes multivaluados sobre la misma entidad principal en una tabla simple. Por ejemplo, mezclar "Las tres habilidades de Juan" con "Los tres telÃ©fonos de Juan" provoca $3 \times 3 = 9$ repeticiones ridÃ­culas de informaciÃ³n. La 4FN ordena romper estas dos temÃ¡ticas multivaluadas en dos tablas limpias independientes.

---

## CASO 95

Contexto:
Un ingeniero se conecta al servidor corporativo basado en el sistema operativo Linux. Necesita modificar los archivos de configuraciÃ³n, globales y maestros que rigen el arranque de todos los programas instalados en la mÃ¡quina, pero no encuentra el directorio raÃ­z adecuado.

Pregunta:
SegÃºn el EstÃ¡ndar de JerarquÃ­a del Sistema de Archivos (FHS) de Linux, Â¿en quÃ© directorio del sistema debe entrar para hallar obligatoriamente estas configuraciones centrales?

Opciones:
A) El directorio `/var`
B) El directorio `/etc`
C) El directorio `/bin`
D) El directorio `/home`

Respuesta correcta: B

ExplicaciÃ³n:
En todo sistema Linux y Unix, el corazÃ³n de la configuraciÃ³n del host y de los servicios a nivel mÃ¡quina reside dentro del directorio `/etc`. El directorio `/var` es para archivos variables como bitÃ¡coras (logs), y el directorio `/bin` o `/usr/bin` almacena los comandos binarios ejecutables compilados del sistema.

---

## CASO 96

Contexto:
Para calcular la nÃ³mina de desarrollo de un sistema de informaciÃ³n inmenso antes de que exista una sola lÃ­nea de cÃ³digo escrita, la empresa financiera se apoya en medir las "Entradas Externas", "Salidas Externas", "Archivos Internos" e "Interfaces" que componen la complejidad y el alcance real de las transacciones funcionales que el cliente verÃ¡ al usar el software final.

Pregunta:
Â¿QuÃ© metodologÃ­a internacional de estimaciÃ³n de esfuerzo en la IngenierÃ­a de Software estÃ¡n empleando?

Opciones:
A) Puntos de Historia Scrum Relativa (Story Points)
B) AnÃ¡lisis de Puntos de FunciÃ³n (Function Point Analysis - FPA)
C) EvaluaciÃ³n del Modelo de Madurez CMMI
D) MÃ©trica COCOMO Recursivo

Respuesta correcta: B

ExplicaciÃ³n:
El "AnÃ¡lisis de Puntos de FunciÃ³n" evalÃºa un proyecto no por sus lÃ­neas de cÃ³digo o su tecnologÃ­a, sino por la "funcionalidad" matemÃ¡tica Ãºtil entregada y procesada a favor del usuario (cuÃ¡ntos reportes arroja el sistema, cuÃ¡ntas pantallas de entrada hay, y cuÃ¡ntos archivos modifica). Es vital para costear proyectos inmensos antes del desarrollo en entornos gubernamentales y corporativos de clase mundial.

---

## CASO 97

Contexto:
Un algoritmo de ajedrez tradicional de "Fuerza Bruta" explora millones de movimientos futuros utilizando un Ã¡rbol de decisiones simple de manera estricta y recursiva. El ingeniero nota que la mÃ¡quina desperdicia aÃ±os de cÃ¡lculo re-evaluando y procesando tableros que ya habÃ­a visitado y analizado previamente.

Pregunta:
Â¿QuÃ© paradigma algorÃ­tmico y matemÃ¡tico avanzado debe incorporar para guardar o cachear (memorizar) los sub-problemas previamente superpuestos solucionados y asÃ­ evitar el recÃ¡lculo masivo?

Opciones:
A) Paradigma Voraz (Greedy Algorithm)
B) Paradigma Backtracking simple recursivo
C) ProgramaciÃ³n DinÃ¡mica (Dynamic Programming)
D) Paradigma Lineal Distribuido

Respuesta correcta: C

ExplicaciÃ³n:
La ProgramaciÃ³n DinÃ¡mica aborda problemas complejos optimizÃ¡ndolos profundamente mediante una tÃ©cnica central: "La MemorizaciÃ³n (Memoization)". Cuando el algoritmo resuelve un sub-problema complejo superpuesto, anota la respuesta en una tabla de memoria. Si la rutina de evaluaciÃ³n vuelve a enfrentarse a la misma encrucijada matemÃ¡tica exacta, simplemente lee la respuesta instantÃ¡nea en lugar de recalcular todas las rutas de nuevo.

---

## CASO 98

Contexto:
En un lenguaje estricto como Java o C#, estÃ¡ terminantemente prohibido que una clase hija adquiera las implementaciones derivadas directamente de dos o mÃ¡s clases padre (Herencia MÃºltiple bloqueada a nivel mÃ¡quina). Sin embargo, un objeto necesita firmar contratos y promesas de comportamiento de tres mundos de la empresarial distintos al mismo tiempo.

Pregunta:
En el diseÃ±o de la POO, Â¿quÃ© elemento estructural debe utilizarse para simular el comportamiento de la herencia mÃºltiple sin caer en ambigÃ¼edades arquitectÃ³nicas como el "Problema del Diamante"?

Opciones:
A) Variables polimÃ³rficas 
B) Interfaces (MÃºltiples interfaces)
C) Super-clases inyectables modulares
D) Clases nativas en cadena

Respuesta correcta: B

ExplicaciÃ³n:
Lenguajes fuertemente tipados deshabilitaron la herencia mÃºltiple para evitar choques de mÃ©todos con igual nombre. Las *Interfaces* (contratos sin ni cuerpo que solo definen cascarones funcionales y encabezados de mÃ©todo obligatorios) son el remedio de la POO; una clase hija puede heredar e implementar mÃºltiples interfaces diferentes sin sufrir colisiones matemÃ¡ticas de arquitectura de datos o "Diamantes" de conflictos.

---

## CASO 99

Contexto:
El programador de una nueva aplicaciÃ³n de mensajerÃ­a termina su cÃ³digo de red TCP y quiere probar que la del servidor de puertos en su cÃ³digo funcione correctamente. En lugar de instalar la aplicaciÃ³n en dos computadoras reales conectadas, ejecuta el servidor y el cliente en su misma laptop desconectada por completo de cualquier red o cable de internet.

Pregunta:
Â¿A quÃ© direcciÃ³n IP estandarizada de uso obligatorio le configurÃ³ la conexiÃ³n a su cÃ³digo cliente para forzar el retorno de la red sobre su misma interfaz fÃ­sica interna?

Opciones:
A) 192.168.0.1
B) 255.255.255.255
C) 0.0.0.0
D) 127.0.0.1 (Loopback)

Respuesta correcta: D

ExplicaciÃ³n:
La direcciÃ³n reservada IPv4 `127.0.0.1` (o su red 127.x.x.x en general, conocida comÃºnmente en la industria por la interfaz `localhost`) es la direcciÃ³n universal interna o de Loopback de toda mÃ¡quina con pila de red. El trÃ¡fico enviado a esta direcciÃ³n enrutarÃ¡ matemÃ¡ticamente las capas y comandos TCP/IP enviando el pulso a sÃ­ mismo sin requerir ningÃºn router real, permitiendo probar software de red aisladamente con total fiabilidad funcional.

---

## CASO 100

Contexto:
Un atacante encuentra una aplicaciÃ³n web antigua que exhibe un error SQL de inyecciÃ³n clÃ¡sico con la sentencia `SELECT nombre, correo FROM Usuarios WHERE id = $id`. En lugar de insertar solo un `' OR '1'='1` simple, inyecta un comando complejo logrando que la tabla retorne la informaciÃ³n normal del usuario junto con las contraseÃ±as secretas de todos los administradores pegadas visualmente debajo.

Pregunta:
Â¿QuÃ© comando relacional especÃ­fico usÃ³ el cibercriminal para acoplar la consulta maliciosa a la consulta original forzando al motor a escupir ambas informaciones fundidas en el mismo formato en pantalla?

Opciones:
A) INSERT EXPLOIT
B) DELETE JOIN CLUSTER
C) UNION SELECT
D) RENAME TABLE HACK

Respuesta correcta: C

ExplicaciÃ³n:
La inyecciÃ³n de base de datos basada en UniÃ³n (UNION-Based SQL Injection) es la herramienta mÃ¡s invasiva en vulnerabilidades tempranas de programaciÃ³n no sanitizada. El operador `UNION` de SQL requiere combinar dos resultados del mismo formato en una sola hoja visible final. El hacker aprovecha el hueco cerrando la consulta 1 vÃ¡lida e inyectando `UNION SELECT pass, admin FROM Privado` extrayendo ambos mundos combinados limpiamente a los ojos de la consola o la web sin romper la visualizaciÃ³n relacional ni arrojar alertas.
\newpage
# BLOQUE 6
## CASO 101

Contexto:
El administrador de dominios necesita configurar la zona DNS de la empresa. Tiene el servidor web principal apuntando a una IP pÃºblica especÃ­fica. Adicionalmente, requiere crear el subdominio `ventas.empresa.com` y quiere asegurarse de que, si la IP del servidor principal cambia en el futuro, no tenga que editar el registro del subdominio manualmente, sino que siga heredando la direcciÃ³n de `www.empresa.com`.

Pregunta:
Â¿QuÃ© tipo de registro DNS debe utilizar para el subdominio con el fin de vincularlo dinÃ¡micamente como un alias al nombre de dominio principal?

Opciones:
A) Registro A
B) Registro MX
C) Registro CNAME
D) Registro PTR

Respuesta correcta: C

ExplicaciÃ³n:
Un registro A enlaza estrictamente un nombre a una direcciÃ³n IPv4. El registro CNAME (Canonical Name) funciona como un alias que apunta el subdominio de red hacia otro nombre de dominio. Si la IP del dominio maestro cambia en el Registro A central, el CNAME hereda la conectividad inmediatamente sin requerir actualizaciones paralelas.

---

## CASO 102

Contexto:
En el desarrollo de un algoritmo de bÃºsqueda de rutas para un videojuego de navegaciÃ³n, el enemigo debe sortear obstÃ¡culos en el menor tiempo computacional posible buscando al jugador. El clÃ¡sico Algoritmo de Dijkstra evalÃºa ciegamente todos los caminos radiando en cÃ­rculo, lo cual resulta ineficiente para el motor del juego.

Pregunta:
Â¿QuÃ© algoritmo heurÃ­stico avanzado y eficiente de grafos estÃ¡ diseÃ±ado especÃ­ficamente para trazar rutas Ã³ptimas directas combinando el costo exacto del recorrido con una estimaciÃ³n inteligente hacia la meta final?

Opciones:
A) Algoritmo de Floyd-Warshall
B) Algoritmo A* (A-Estrella)
C) Algoritmo de Prim
D) BÃºsqueda Lineal Bidireccional

Respuesta correcta: B

ExplicaciÃ³n:
A* (A-Star) es el algoritmo soberano en ruteo y navegaciÃ³n computacional. A diferencia de Dijkstra, que busca a expandiÃ©ndose simÃ©tricamente hacia todas direcciones, A* utiliza una funciÃ³n heurÃ­stica (una "pista" o estimaciÃ³n matemÃ¡tica) para preferir evaluar Ãºnicamente aquellos caminos que visiblemente apuntan hacia el objetivo en el plano de red, ahorrando tiempo de procesamiento inmenso.

---

## CASO 103

Contexto:
En un sistema bancario crÃ­tico global, se ha determinado que las lecturas y escrituras contables cruzadas no pueden tolerar las llamadas "Lecturas Fantasmas" ni las inconsistencias de transacciones ejecutadas en paralelo, obligando a los usuarios a esperar matemÃ¡ticamente a que otros terminen.

Pregunta:
SegÃºn las regulaciones de Aislamiento de Bases de Datos en SQL, Â¿cuÃ¡l es el nivel de bloqueo mÃ¡s estricto, paranoico y seguro aplicable por el motor, a cambio de sacrificar la mayor cantidad de rendimiento en concurrencia masiva?

Opciones:
A) READ COMMITTED
B) REPEATABLE READ
C) READ UNCOMMITTED
D) SERIALIZABLE

Respuesta correcta: D

ExplicaciÃ³n:
El nivel de aislamiento SERIALIZABLE obliga lÃ³gicamente al motor de la base de datos a ordenar las operaciones masivas de miles de usuarios como si todos estuvieran en una fila india perfecta procesando uno por vez, deteniendo en seco el multihilo. Garantiza 100% la pureza sin colisiones matemÃ¡ticas ni fenÃ³menos fantasmas, pero es el mÃ¡s lento a nivel arquitectÃ³nico.

---

## CASO 104

Contexto:
En una startup que utiliza el framework Ã¡gil "Extreme Programming" (XP), dos ingenieros se sientan juntos compartiendo el mismo teclado y monitor todo el dÃ­a. Uno teclea el cÃ³digo operativo observando la estructura tÃ¡ctica (el Piloto), mientras que el otro piensa en la estrategia algorÃ­tmica, vigila la estructura arquitectÃ³nica global y revisa errores en tiempo real (el Navegante).

Pregunta:
Â¿QuÃ© prÃ¡ctica obligatoria del marco XP de la ingenierÃ­a de software se describe en esta situaciÃ³n?

Opciones:
A) Testing Continuo
B) RefactorizaciÃ³n 
C) ProgramaciÃ³n en Parejas (Pair Programming)
D) Dual Git Commiting

Respuesta correcta: C

ExplicaciÃ³n:
La ProgramaciÃ³n en Parejas (Pair Programming) es una regla central de la ProgramaciÃ³n Extrema. Disminuye radicalmente los errores tempranos, transfiere conocimiento silencioso entre miembros senior y junior de la red laboral de inmediato, y eleva la calidad del cÃ³digo, compensando el costo aparente de tener a dos programadores escribiendo en un mismo teclado con software de alto impacto y cero defectos.

---

## CASO 105

Contexto:
Una aplicaciÃ³n dibuja un objeto base `Ventana`. El requerimiento exige aÃ±adirle funcionalidad visual a los objetos sobre la marcha durante la ejecuciÃ³n (aÃ±adirle un `Borde`, una `BarraDeDesplazamiento`, o `Sombras`). Usar clases extendidas (`VentanaConBordeYSombra`) generarÃ­a cientos de combinaciones rÃ­gidas de herencia insostenibles.

Pregunta:
Â¿QuÃ© PatrÃ³n de DiseÃ±o estructural permite acoplar capas de funcionalidades y responsabilidades a un objeto base de manera dinÃ¡mica en tiempo de ejecuciÃ³n, envolviÃ©ndolo iterativamente?

Opciones:
A) PatrÃ³n Observador (Observer)
B) PatrÃ³n Singleton
C) PatrÃ³n Fachada (Facade)
D) PatrÃ³n Decorador (Decorator)

Respuesta correcta: D

ExplicaciÃ³n:
El patrÃ³n de diseÃ±o Estructural Decorador evita la "ExplosiÃ³n de Clases" generada por la herencia mÃºltiple combinatoria rÃ­gida. Modela envoltorios que le agregan habilidades a un objeto ya creado, comportÃ¡ndose funcionalmente de forma dinÃ¡mica (ej. Tienes un cafÃ©; le aÃ±ades decorador "Leche", luego decorador "AzÃºcar") sin tener que crear una clase estricta `CafeConLecheYAzucar`.

---

## CASO 106

Contexto:
Un disco duro mecÃ¡nico clÃ¡sico (HDD) de un servidor masivo recibe peticiones de acceso a los cilindros nÃºmero 10, 80, 20 y 90. Si procesa las llamadas en ese orden (First Come First Serve), el brazo lector magnÃ©tico viajarÃ¡ de extremo a extremo frenÃ©ticamente perdiendo tiempos valiosos de hardware. Para arreglarlo, el sistema ordena las peticiones basÃ¡ndose en la posiciÃ³n actual del brazo y lo hace viajar barriendo uniformemente hacia arriba y luego hacia abajo procesando las peticiones en el camino.

Pregunta:
Â¿A quÃ© algoritmo clÃ¡sico de planificaciÃ³n de unidades de almacenamiento fÃ­sico pertenece esta optimizaciÃ³n?

Opciones:
A) C-SCAN (Circular SCAN)
B) SCAN (Algoritmo del Ascensor / Elevator Algorithm)
C) Algoritmo de Prioridad Exclusiva
D) Shortest Seek Time First (SSTF)

Respuesta correcta: B

ExplicaciÃ³n:
El algoritmo de planificaciÃ³n de disco SCAN, apodado histÃ³ricamente "Del Ascensor", procesa y ordena lÃ³gicamente las peticiones en un movimiento de barrido fÃ­sico Ãºnico. AsÃ­ como un elevador real sube al piso 10 y recoge a la gente en el 3 y el 8 de pasada en vez de bajar al 3 y volver al 8; el disco duro minimiza el desgaste del brazo magnÃ©tico recogiendo datos cercanos a su trayectoria.

---

## CASO 107

Contexto:
Un equipo requiere identificar a simple vista el comportamiento de diseÃ±o de varias direcciones IPv4 clÃ¡sicas. Se le presenta la direcciÃ³n IP `172.16.50.5` que el arquitecto antiguo usÃ³ por default sin manipulaciÃ³n de subred compleja, declarando que usa una mÃ¡scara tradicional `255.255.0.0` para separar la mitad del ruteo del dominio local.

Pregunta:
Bajo la arcaica y obsoleta, pero fundamental clasificaciÃ³n estricta de redes de internet, Â¿a quÃ© Clase Direccional (IP Class) pertenece nativamente esa direcciÃ³n segÃºn el primer octeto matemÃ¡tico?

Opciones:
A) Clase A
B) Clase B
C) Clase C
D) Clase D

Respuesta correcta: B

ExplicaciÃ³n:
La clasificaciÃ³n histÃ³rica IPv4 define redes estÃ¡ndar con rangos fijos matemÃ¡ticos. La Clase A abarca de 1.0.0.0 a 126.255.255.255 (MÃ¡scara /8). La Clase B abarca de 128.0.0.0 a 191.255.255.255 (MÃ¡scara /16), y aquÃ­ cae la IP "172.16.x.x". La Clase C abarca desde 192.0.0.0 hasta 223.255.255.255 (MÃ¡scara /24). Este formato se enseÃ±a como el fundamento del ruteo global CIDR moderno de internet.

---

## CASO 108

Contexto:
En un sistema escolar, una tabla de calificaciones llamada "Kardex" usa una "Llave Primaria Compuesta" con dos columnas: `ID_Estudiante` y `ID_Materia`. Para ahorrar tablas, el desarrollador tambiÃ©n inserta la columna `Nombre_Materia` dentro del mismo registro de Kardex.

Pregunta:
La columna `Nombre_Materia` depende Ãºnicamente del `ID_Materia`, ignorando e independizÃ¡ndose del `ID_Estudiante`. Â¿QuÃ© pilar base de normalizaciÃ³n y quÃ© tipo de dependencia relacional quebranta brutalmente este diseÃ±o redundante?

Opciones:
A) Rompe la 1FN por Grupos Repetidos AtÃ³micos
B) Rompe la 3FN por Dependencia Transitiva Cruzada
C) Rompe la 2FN por Dependencia Funcional Parcial
D) Rompe la Forma Normal de Dominio Fijo Boyce-Codd

Respuesta correcta: C

ExplicaciÃ³n:
La Segunda Forma Normal (2FN) solo interviene y aplica en tablas con Llaves Primarias COMPUESTAS. Exige estrictamente que todo campo normal descriptivo dependa y requiera matemÃ¡ticamente a *todas y cada una de las partes de la llave compuesta en su totalidad*. Si "Nombre de la Materia" solo necesita a la mitad de la llave ("ID_Materia") para existir, entonces sufre una Dependencia Parcial y se exige romper la tabla para normalizar.

---

## CASO 109

Contexto:
El procesador de tareas del servidor necesita procesar peticiones urgentes. A diferencia de una cola normal donde "el primero que llega sale primero (FIFO)", aquÃ­ las peticiones tienen calificaciones matemÃ¡ticas dinÃ¡micas (Prioridades del 1 al 100). El algoritmo requiere asegurar de forma extremadamente veloz e inmediata la extracciÃ³n del "Elemento de mayor prioridad numÃ©rica" de la colecciÃ³n total de objetos vivos sin importar en quÃ© orden de tiempo entrÃ³.

Pregunta:
Â¿QuÃ© estructura matemÃ¡tica de datos de la algoritmia clÃ¡sica es la implementaciÃ³n ideal para alojar internamente esta base de "Cola de Prioridad MÃ­nima o MÃ¡xima"?

Opciones:
A) Un Ãrbol Binario de BÃºsqueda Secuencial Lento (Unbalanced BST)
B) Una Tabla de Hash o Diccionario
C) Una Pila LIFO recursiva 
D) Una estructura de MontÃ­culo (Max-Heap o Min-Heap)

Respuesta correcta: D

ExplicaciÃ³n:
Un MontÃ­culo (Heap) es un Ã¡rbol binario especial de naturaleza algorÃ­tmica donde el elemento de valor mÃ¡ximo (o mÃ­nimo, segÃºn se diseÃ±e) se ve lÃ³gicamente obligado y acomodado a "flotar" y vivir en la raÃ­z suprema en tiempo O(log n). Almacenar datos en un MontÃ­culo es la forma universal de construir Colas de Prioridad en todos los lenguajes porque extraer el mayor o mejor elemento toma de inmediato O(1) pasos algorÃ­tmicos.

---

## CASO 110

Contexto:
Una empresa despliega 50 servicios pequeÃ±os (Microservicios). Tradicionalmente instalarÃ­a 50 MÃ¡quinas Virtuales completas (VMWare/VirtualBox). Al darse cuenta de que las VM arrancan 50 sistemas operativos pesados completos (con 50 kernels Linux) para ejecutar programas triviales, adoptan tecnologÃ­as como Docker, donde los 50 servicios comparten transparentemente un solo Kernel base Linux maestro y arrancan en microsegundos pesando megabytes.

Pregunta:
En tÃ©rminos estructurales y de virtualizaciÃ³n, Â¿cÃ³mo se denomina formalmente esta capa de infraestructura Docker moderna dentro del DevOps que abstrae todo a un nivel superior?

Opciones:
A) VirtualizaciÃ³n Paravirtual Completa (Full OS Paravirtualization)
B) VirtualizaciÃ³n a Nivel de Sistema Operativo (ContenerizaciÃ³n / Containerization)
C) Aislamiento Sandbox en MÃ¡quina Virtual Nativa
D) Hipervisor Universal Barem-Metal Pila 1

Respuesta correcta: B

ExplicaciÃ³n:
Los Contenedores de software (Docker) realizan "VirtualizaciÃ³n a nivel de Sistema Operativo". A diferencia de una MÃ¡quina Virtual que simula e instala un hardware completo falso (discos duros virtuales, procesadores virtuales) e instala otro Sistema Operativo completo pesadÃ­simo encima de Ã©l; los contenedores simplemente aÃ­slan el proceso funcional mediante "Namespaces", usando todos el mismo y Ãºnico nÃºcleo real del servidor anfitriÃ³n original acelerando el rendimiento computacional de la nube corporativa.

---

## CASO 111

Contexto:
En un sistema de Big Data corporativo como Apache Hadoop, las peticiones almacenan archivos gigantescos de Terabytes. Como no caben en un solo disco fÃ­sico, el software divide transparentemente el archivo monumental en trozos de 128 MB (Chunks) y los esparce por las redes a lo largo de 500 computadoras simples diferentes en el corporativo. Al solicitar abrirlo, el sistema lo rearma al vuelo uniendo los trozos como si fuera un solo disco gigante a ojos del usuario local.

Pregunta:
Â¿A quÃ© familia de tecnologÃ­a de sistemas de almacenamiento a nivel sistema operativo obedece y pertenece este ecosistema Hadoop fundamental?

Opciones:
A) Sistema de Archivos FAT16 de Almacenamiento Local
B) Sistemas de Archivos Distribuidos en Red (Distributed File Systems)
C) Sistemas de PaginaciÃ³n Fragmentada por Sector Ext4
D) Bases de Datos Relacionales ClÃ¡sicas con Fragmentos Binarios

Respuesta correcta: B

ExplicaciÃ³n:
Los Sistemas de Archivos Distribuidos (como HDFS de Hadoop, NFS clÃ¡sico o Google File System) permiten la manipulaciÃ³n, lectura y almacenamiento gigantesco de informaciÃ³n digital abarcando y aglutinando los espacios de disco de mÃºltiples mÃ¡quinas independientes. La complejidad de red, particiÃ³n, y sincronizaciÃ³n masiva se esconde al usuario, presentÃ¡ndole visualmente los archivos como si estuvieran ubicados pacÃ­ficamente en una carpeta comÃºn de su laptop central.

---

## CASO 112

Contexto:
El analista de ciberseguridad monitorea una subred e identifica una direcciÃ³n fÃ­sica asignada al hardware de red de la laptop atacante mediante la cadena de notaciÃ³n exÃ³tica: `3A:4F:9C:22:BB:05`. Ã0 l sabe que los tres primeros octetos numÃ©ricos designan al fabricante de la tarjeta a nivel global y los tres Ãºltimos al dispositivo, sin cambiar nunca a menos que se suplante.

Pregunta:
Considerando la longitud y estructura de los datos, Â¿quÃ© es exactamente esta cadena analizada y en quÃ© capa del Modelo OSI opera permanentemente en hardware en un Switch local?

Opciones:
A) DirecciÃ³n IPv6 - Capa 3 de Red
B) DirecciÃ³n MAC (Media Access Control) de 48 bits - Capa 2 de Enlace de Datos
C) DirecciÃ³n IPv4 Privada en Hexadecimal - Capa 4 de Transporte 
D) Clave de Cifrado de Capa FÃ­sica - Capa 1 de Fibra Local

Respuesta correcta: B

ExplicaciÃ³n:
Una DirecciÃ³n MAC es la huella digital "fÃ­sica e inmutable" quemada de fÃ¡brica en la tarjeta de red (NIC) del host. EstÃ¡ compuesta universalmente por 48 bits, agrupados lÃ³gicamente de dos en dos, escritos en formato numÃ©rico hexadecimal (base 16). Representan la moneda de cambio fundamental e insustituible para el encaminamiento fÃ­sico de tramas en los concentradores (Switches) dentro del protocolo vital de Capa 2 (Enlace de datos).

---

## CASO 113

Contexto:
El motor SQL requiere garantizar seguridad al banco. El ingeniero DBA estipula reglas estrictas forzosas en el esquema: "El valor final en la columna de dinero nunca y bajo ninguna circunstancia natural puede descender del valor numÃ©rico cero (RestricciÃ³n CHECK de Base de Datos)". Si un programa intenta procesar un bloque de transacciones matemÃ¡ticas que termine quebrando y violando esta condiciÃ³n relacional central en la cuenta, la transacciÃ³n fracasa y se descarta totalmente al milisegundo devolviendo el estado anterior intacto.

Pregunta:
SegÃºn las siglas inquebrantables de los modelos de las bases de datos relacionales "ACID", Â¿quÃ© propiedad se encarga formalmente de evitar que las reglas de integridad de la base queden daÃ±adas tras una operaciÃ³n?

Opciones:
A) Aislamiento (Isolation)
B) Atomicidad (Atomicity)
C) Durabilidad (Durability)
D) Consistencia (Consistency)

Respuesta correcta: D

ExplicaciÃ³n:
La "C" de Consistencia en ACID (Consistencia de Base de Datos, distinta al Teorema CAP de redes) dictamina y garantiza que ninguna transacciÃ³n logre completarse de manera exitosa si eso significa abandonar la base de datos en un estado matemÃ¡ticamente o estructuralmente invÃ¡lido o corrupto (ej. violando reglas, checks o llaves forÃ¡neas inyectadas). La base de datos asume el control saltando de un estado lÃ³gicamente vÃ¡lido directamente a otro estado lÃ³gicamente vÃ¡lido por la fuerza.

---

## CASO 114

Contexto:
En la programaciÃ³n modular de un sistema ERP logÃ­stico se tiene la clase central "CalculoDeDescuentos". Al principio solo calculaba el descuento estÃ¡ndar. Luego, en la Ã©poca navideÃ±a, en lugar de crear una clase independiente adaptadora, el programador junior entra directamente a la matriz del archivo de cÃ³digo base original de la clase y le inserta tres nuevos bloques `if-else` condicionales para manejar los descuentos, abriendo la puerta a que otro desarrollador quiebre o contamine todo lo que antes funcionaba bien.

Pregunta:
Dentro de los cinco pilares innegociables de arquitectura limpia de "SOLID", Â¿quÃ© principio capital violÃ³ directamente el programador al realizar esta intervenciÃ³n intrusiva al cÃ³digo central?

Opciones:
A) Principio Abierto/Cerrado (Open-Closed Principle - OCP)
B) Principio de InversiÃ³n de Dependencia (Dependency Inversion)
C) Principio de SustituciÃ³n de Liskov MatemÃ¡tica (LSP)
D) Principio de SegregaciÃ³n Simple de Interface (ISP)

Respuesta correcta: A

ExplicaciÃ³n:
El Principio de Abierto/Cerrado (La O de SOLID) es el Santo Grial del desarrollo seguro y modular: Las clases deben ser siempre "Abiertas para la extensiÃ³n" (capaces de adoptar nuevas funciones o variantes a futuro inyectÃ¡ndolas por interfaces y polimorfismo) pero estrictamente "Cerradas para la modificaciÃ³n matemÃ¡tica del cÃ³digo fuente nativo antiguo". Alterar el cÃ³digo original ya probado para inyectar "ifs" es romper el software al exponerlo a nuevos y desconocidos regresiones tÃ©cnicas futuras.

---

## CASO 115

Contexto:
Un ingeniero de diseÃ±o de software describe y bosqueja en UML cÃ³mo debe funcionar exactamente la orden funcional de compra "Carrito": Primero nace como "Generado", al presionar pagar transita a "Autorizado". Si hay fondos, brinca a "Empacando". Finalmente viaja a la condiciÃ³n Ãºltima de "Despachado". Si falla el cobro, es regresado a un formato alternativo "Rechazado", del cual ya no puede volver.

Pregunta:
Â¿QuÃ© tipo de diagrama de comportamiento tÃ©cnico UML permite cartografiar formalmente los diferentes periodos de vida que asume y adquiere un Ãºnico objeto respondiendo a estÃ­mulos directos y eventos del tiempo?

Opciones:
A) Diagrama de Clases en Sistema
B) Diagrama Funcional General de Casos de Uso
C) Diagrama FÃ­sico de Despliegue y Redes de Host
D) Diagrama DinÃ¡mico de MÃ¡quina de Estado (State Machine Diagram)

Respuesta correcta: D

ExplicaciÃ³n:
Los Diagramas de MÃ¡quina de Estados se especializan funcionalmente en ilustrar todos los comportamientos secuenciales en forma de vida por los que un solo y Ãºnico objeto dinÃ¡mico puede llegar a transitar ("Estados"), junto con los "Eventos" disparadores concretos o transiciones que causan y fuerzan ese cambio secuencial de fase en el sistema complejo (ej. SemÃ¡foro de Rojo a Verde). Es vital para modelar procesamientos de pagos complejos en backend global.

---

## CASO 116

Contexto:
En un sistema de telecomunicaciones local cerrado que lee audios en bucle repetitivo de alta latencia, el arreglo fÃ­sico de almacenamiento debe ser veloz y continuo. Para ello, un puntero que lee el final matemÃ¡tico de la cola no choca contra un vacÃ­o, sino que al llegar a la Ãºltima posiciÃ³n de la memoria del arreglo se salta y se reconecta instantÃ¡neamente hacia la posiciÃ³n cero original, leyendo datos nuevos en ciclos continuos indefinidamente sin expandir el tamaÃ±o lÃ­mite original de la memoria RAM global predefinida localmente.

Pregunta:
Â¿QuÃ© estructura matemÃ¡tica de datos de arreglo posicional especial estÃ¡ empleando activamente para optimizar recursos el administrador en programaciÃ³n concurrente local?

Opciones:
A) Pila de RecursiÃ³n Circular Abstracta 
B) Cola Circular DinÃ¡mica Limitada / Ring Buffer Fijo
C) Ãrbol de Prioridad Estricto SimÃ©trico DinÃ¡mico 
D) Vector Bidireccional Infinito de Nodos Distribuidos Locales Simples

Respuesta correcta: B

ExplicaciÃ³n:
Un Buffer Circular (Ring Buffer o Cola Circular) optimiza elegantemente el almacenamiento con tamaÃ±o limitado. Resuelve el problema clÃ¡sico de desperdicio de memoria y reubicaciÃ³n en arreglos planos bÃ¡sicos en los que "al retirar la cabeza de los datos y encolar al final, se requiere recorrer numÃ©ricamente todo", ya que la estructura "enlaza o hace un mÃ³dulo matemÃ¡tico de longitud" para conectar el final con el inicio en su matriz, volviÃ©ndose una rueda perfecta de datos.

---

## CASO 117

Contexto:
El equipo informÃ¡tico levanta en la red local un servidor local de Exchange seguro corporativo y configura un software y cliente en escritorio. Necesitan habilitar rigurosamente dos protocolos clave separados y funcionales en los clientes de mensajerÃ­a: el primero debe tomar la responsabilidad estricta de enviar las tramas textuales del mensaje de ida, mientras que el segundo protocolo se debe encargar Ãºnicamente de recibir y gestionar los buzones, descargando sincronizadamente los archivos finales de forma eficiente a los hosts locales del usuario final de red.

Pregunta:
Â¿QuÃ© dupla estÃ¡ndar clÃ¡sica de protocolos de la Capa de AplicaciÃ³n de red resuelve exactamente esta divisiÃ³n administrativa de transmisiÃ³n saliente y recepciÃ³n entrante?

Opciones:
A) Telnet para salida TCP, SSH para entrada TCP 
B) SMTP para salida de EnvÃ­os de Correo, e IMAP o POP3 para lectura entrante de buzones locales
C) FTP masivo para salida entrante local y SFTP entrante saliente para lecturas locales 
D) BGP Central local bidireccional localmente y RIP entrante interno 

Respuesta correcta: B

ExplicaciÃ³n:
La dupla histÃ³rica del e-mail en redes de la Capa 7 del Modelo OSI de transporte informÃ¡tico. SMTP (Simple Mail Transfer Protocol) se ocupa exclusivamente de "Empujar / Push" de manera saliente el mensaje original al servidor remoto. Posteriormente, POP3 o el avanzado y distribuido IMAP entran en acciÃ³n exclusivamente de manera activa por el cliente local de correo logrando el proceso "Arrastrar / Pull" solicitando la recepciÃ³n global, leyendo y visualizando localmente de bajada lo que llegÃ³ del SMTP entrante local sin conflicto.

---

## CASO 118

Contexto:
En un ambiente Linux altamente de alta concurrencia intensiva y de procesador paralelo de multinÃºcleo pesado, existen mÃºltiples procesos matemÃ¡ticos (Process A y Process B independientes). Necesitan intercambiar entre ellos de manera crÃ­tica grandes cantidades masivas de datos a una velocidad de microsegundos matemÃ¡ticos locales, sin la latencia de sobrecargas ni la intervenciÃ³n forzosa de tuberÃ­as directas, compartiendo simultÃ¡neamente el poder e interacciÃ³n por el sistema operativo global central local.

Pregunta:
Â¿QuÃ© tÃ©cnica nativa en el Sistema Operativo para la ComunicaciÃ³n Inter-Procesos local (IPC) logra y ofrece la mÃ¡xima velocidad existente tÃ©cnica eliminando latencias del kernel?

Opciones:
A) TuberÃ­as clÃ¡sicas de red locales
B) Mensajes de Paso Fijos Interconectables y Sockets IP simples
C) Bloques de Memoria Compartida Directa y Transparente (Shared Memory Segment IPC)
D) Conexiones UDP en paralelo 

Respuesta correcta: C

ExplicaciÃ³n:
En los entornos clÃ¡sicos IPC (Inter-Process Communication), la transferencia paralela por Paso de Mensajes (Pipes o Sockets locales) requiere y exige mÃºltiples copias sistÃ©micas a los buzones del nÃºcleo de Linux (Kernel). En absoluto contraste fÃ­sico local, la Memoria Compartida (Shared Memory) reserva velozmente y en directo una zona especÃ­fica de la RAM universal; todos los programas autorizados operan velozmente sobre esta misma variable local sin intermediarios logrando velocidades atÃ³micas computacionales colosales en local, pero requiriendo candados o SemÃ¡foros forzosos para esquivar los choques cruzados locales.

---

## CASO 119

Contexto:
En una startup, el servidor central almacena datos de Big Data para un modelo simple local. Se manejan billones de datos por minuto, lo que asfixia un servidor estÃ¡ndar relacional. El CTO exige migrar de inmediato y reemplazarlo por un modelo avanzado de bases de datos que no almacena ni lee las cosas tradicionalmente "fila por fila relacionalmente " sino que estructura fÃ­sica e internamente todo leyendo los datos de manera transversal masiva (Por ejemplo, guardando todas las "fechas " juntas fÃ­sicamente en el disco local y no en el registro lateral plano).

Pregunta:
Â¿A quÃ© esquema de Base de Datos NoSQL avanzada debe recurrir forzosamente y tÃ©cnicamente para cubrir su requerimiento vertical masivo veloz?

Opciones:
A) BD en Grafo de Nodos Bidireccionales Locales 
B) BD Documental Base Libre NoSQL ClÃ¡sica en JSON
C) Base de Datos NoSQL Orientada a Columnas y Familias (Column-Family Store / Columnar como Cassandra)
D) Modelo de Llave-Valor simple de Cache Global Inversa Local

Respuesta correcta: C

ExplicaciÃ³n:
Las Bases de Datos NoSQL Columnares (ej. Apache Cassandra o HBase) brillan y dominan los reportes de masivos OLAP y de inteligencia. A diferencia de MySQL o SQL Server clÃ¡sico que leen y guardan las "filas o bloques enteros " para extraer el nombre y estatus de los usuarios (matando discos si solo querÃ­as sumar las facturas de todos en un instante), la Base Columnar guarda un archivo especial con los campos de toda una columna juntos en el disco, permitiendo bÃºsquedas instantÃ¡neas promediables transversales simples sin tocar la lectura del resto de basura innecesaria colateral de los objetos.

---

## CASO 120

Contexto:
En una empresa con desarrollo colaborativo, tÃº trabajas localmente elaborando 5 commits en tu rama paralela secundaria "Feature" al mismo tiempo que el resto del corporativo envÃ­a otros 10 commits masivos e integran funciones principales en la rama original central "Main". Tu jefe local pide que integres y sincronices tu trabajo para publicarlo, logrando mantener limpio y linealmente plano todo el Ã¡rbol local de tiempo de trabajo oficial central, sin generar jamÃ¡s la contaminaciÃ³n histÃ³rica paralela del tÃ­pico "Commit Especial Adicional Enredado" ni la creaciÃ³n y visiÃ³n bifurcada compleja de burbujas en el Ã¡rbol de colaboraciÃ³n de GitHub histÃ³rico.

Pregunta:
Â¿QuÃ© acciÃ³n y comando de ingenierÃ­a central de la plataforma de versionamiento de control Git lograrÃ¡ estricta y funcionalmente esta integraciÃ³n armÃ³nica logrando el acomodo ideal de inserciÃ³n exigida?

Opciones:
A) Comando base Git Reset Hard global forzado
B) AcciÃ³n y operaciÃ³n simple paralela Git Merge Fast-Forward local 
C) Herramienta colaborativa Git Rebase interactiva dinÃ¡mica lineal local de trabajo directo
D) Estructura Git Squash forzoso directo de tiempo

Respuesta correcta: C

ExplicaciÃ³n:
A diferencia del tradicional `git merge` clÃ¡sico (que aglutina y entrelaza asimÃ©tricamente el trabajo lateral creando bifurcaciones con un nuevo archivo o rombo de commit intermedio caÃ³tico e inevitable), la funcionalidad poderosa de `git rebase` desengancha y corta tus trabajos propios paralelos y los reubica transaccionalmente como una lÃ­nea limpia y perfecta al frente o final exacto de la Ãºltima lÃ­nea base y fresca de "main", dejando un Ã¡rbol limpio y un historial perfecto y plano cronolÃ³gicamente como si tÃº nunca te hubieras atrasado ni trabajado en paralelo nunca.
\newpage
# BLOQUE 7
## CASO 121

Contexto:
Un corporativo sufre ataques. El arquitecto de red decide reemplazar el viejo filtro de paquetes del enrutador, el cual bloqueaba puertos de manera individual sin recordar las conexiones anteriores. El nuevo dispositivo analiza toda la sesiÃ³n desde que inicia el saludo de tres vÃ­as (Three-way Handshake), recuerda el flujo de datos y bloquea automÃ¡ticamente cualquier paquete entrante que no pertenezca a una conexiÃ³n legÃ­timamente iniciada desde el interior de la empresa.

Pregunta:
Â¿QuÃ© tecnologÃ­a de inspecciÃ³n avanzada de seguridad en redes acaba de implementarse?

Opciones:
A) Firewall de Filtrado Simple (Stateless)
B) Firewall de InspecciÃ³n de Estado (Stateful Firewall)
C) Sistema de DetecciÃ³n de Intrusos (IDS)
D) Proxy Reverso en la Capa 7

Respuesta correcta: B

ExplicaciÃ³n:
Un firewall "Stateless" examina cada paquete de red de forma individual e independiente, lo cual es ineficiente y fÃ¡cil de evadir. Un "Stateful Firewall" mantiene una tabla de estado en memoria; rastrea el contexto y la sesiÃ³n completa. Si un servidor externo intenta enviar datos hacia la red interna, el firewall solo lo permitirÃ¡ si comprueba que una computadora interna solicitÃ³ previamente esa informaciÃ³n.

---

## CASO 122

Contexto:
Una red social almacena millones de contraseÃ±as de usuarios. Para proteger los datos en caso de una filtraciÃ³n de la base de datos, el ingeniero utiliza un algoritmo que convierte la contraseÃ±a en una cadena alfanumÃ©rica matemÃ¡tica fija de 256 bits, garantizando que sea extremadamente resistente a colisiones y sin posibilidad de aplicar ingenierÃ­a inversa.

Pregunta:
Â¿QuÃ© algoritmo criptogrÃ¡fico moderno de la industria debe utilizar por defecto para cumplir con estas especificaciones de seguridad?

Opciones:
A) Algoritmo de Cifrado SimÃ©trico AES-256
B) Algoritmo RSA
C) FunciÃ³n de Hash MD5
D) FunciÃ³n de Hash SHA-256

Respuesta correcta: D

ExplicaciÃ³n:
Para almacenar contraseÃ±as, nunca se utiliza un cifrado reversible (como AES o RSA) porque alguien con la llave podrÃ­a leerlas. Se utilizan funciones de Hash unidireccionales. MD5 es un algoritmo obsoleto, roto y vulnerable a ataques de colisiÃ³n masiva. SHA-256 es el estÃ¡ndar actual en la industria, ofreciendo alta seguridad al procesar los textos sin generar vulnerabilidades matemÃ¡ticas previsibles.

---

## CASO 123

Contexto:
Para buscar velozmente registros en una tabla de cinco millones de clientes, el motor de base de datos no escanea fila por fila, sino que consulta una estructura anexa optimizada y jerÃ¡rquica en el disco. Esta estructura agrupa llaves de forma ordenada con mÃºltiples ramificaciones por nodo, permitiendo encontrar cualquier ID leyendo un mÃ¡ximo de 3 a 4 bloques en el disco duro.

Pregunta:
Â¿CuÃ¡l es la estructura de datos interna predominante y universal que usan los motores de bases de datos relacionales para construir sus Ã­ndices principales?

Opciones:
A) Ãrbol B (B-Tree / Ãrbol Balanceado)
B) Lista Doblemente Enlazada
C) Pila Estructurada
D) Algoritmo de BÃºsqueda Lineal

Respuesta correcta: A

ExplicaciÃ³n:
Los Ã­ndices en bases de datos relacionales (como MySQL o SQL Server) estÃ¡n construidos sobre la base de un "Ãrbol B" (B-Tree o Ãrboles B+). Esta estructura matemÃ¡tica auto-balanceada es ideal para sistemas de almacenamiento en disco, ya que mantiene los datos ordenados y permite bÃºsquedas, accesos secuenciales, inserciones y eliminaciones en tiempo logarÃ­tmico amortizado O(log n).

---

## CASO 124

Contexto:
Un equipo maduro en DevOps configura un servidor de automatizaciÃ³n Jenkins. Cada vez que un desarrollador hace un envÃ­o de cÃ³digo, Jenkins lo compila, ejecuta 500 pruebas unitarias de calidad, y construye el paquete final listo para usar en un contenedor Docker. Sin embargo, el equipo de QA exige que ese contenedor final sea retenido en un entorno de pruebas, y prohÃ­be rotundamente que el cÃ³digo se mande al servidor de los clientes sin que un humano presione primero un botÃ³n de "Aprobar".

Pregunta:
Â¿QuÃ© ciclo y etapa especÃ­fica de despliegue de infraestructura Ã¡gil estÃ¡n implementando?

Opciones:
A) IntegraciÃ³n Continua Total (CI)
B) Despliegue Continuo (Continuous Deployment)
C) Entrega Continua (Continuous Delivery)
D) IntegraciÃ³n de Monitoreo DinÃ¡mico

Respuesta correcta: C

ExplicaciÃ³n:
En DevOps, la "Entrega Continua" (Continuous Delivery) automatiza toda la cadena hasta dejar el paquete listo para producciÃ³n, pero exige obligatoriamente una aprobaciÃ³n humana manual final antes de liberar el software a los usuarios. Por el contrario, el "Despliegue Continuo" (Continuous Deployment) es mÃ¡s agresivo: automatiza todo el proceso y, si las pruebas pasan, lanza el cÃ³digo a producciÃ³n directamente y de manera totalmente invisible sin intervenciÃ³n humana.

---

## CASO 125

Contexto:
Un desarrollador en Java diseÃ±a una clase constructora para enviar correos. En lugar de forzar al usuario a llamar mÃ©todos en lÃ­neas separadas, diseÃ±a los mÃ©todos devolviendo la instancia de la misma clase al terminar, permitiendo encadenar funciones de forma natural: `Correo.crear().para("jefe@empresa.com").conAsunto("Aviso").enviar();`.

Pregunta:
Â¿QuÃ© concepto y patrÃ³n de diseÃ±o de ProgramaciÃ³n Orientada a Objetos representa esta estructura concatenada?

Opciones:
A) InyecciÃ³n de Dependencias
B) Interface Segregation (SegregaciÃ³n de Interfaz)
C) Interfaces Fluidas (Fluent Interface / Method Chaining)
D) Objeto Abstracto

Respuesta correcta: C

ExplicaciÃ³n:
El patrÃ³n "Fluent Interface", comÃºnmente implementado mediante el "Encadenamiento de MÃ©todos" (Method Chaining), es una tÃ©cnica de POO donde cada mÃ©todo interno retorna obligatoriamente el propio objeto `(return this;)`. Esto permite concatenar mÃºltiples llamadas a mÃ©todos en una sola lÃ­nea elegante, logrando que el cÃ³digo fuente se lea fluidamente casi como una oraciÃ³n natural en idioma inglÃ©s.

---

## CASO 126

Contexto:
Un sistema escrito en el lenguaje C++ opera el radar de un aeropuerto. Tras varias semanas de uso sin apagarse, el servidor reporta un error fatal y se congela porque ha agotado toda la memoria RAM, a pesar de estar procesando pocos vuelos. Un anÃ¡lisis revela que los programadores olvidaron escribir el comando `delete` u `ocultar` en el cÃ³digo tras destruir los aviones que salÃ­an de la pantalla.

Pregunta:
Â¿QuÃ© nombre tÃ©cnico recibe esta peligrosa vulnerabilidad de arquitectura de software y gestiÃ³n de memoria?

Opciones:
A) InaniciÃ³n (Starvation)
B) Fuga de Memoria (Memory Leak)
C) CondiciÃ³n de Carrera (Race Condition)
D) Desbordamiento de BÃºfer (Buffer Overflow)

Respuesta correcta: B

ExplicaciÃ³n:
En lenguajes no gestionados como C o C++ que carecen de "Recolector de Basura" automÃ¡tico (Garbage Collector), el programador es responsable de liberar manualmente en el cÃ³digo la memoria reservada de los objetos cuando ya no se usan. Si olvida hacerlo, el objeto pierde su referencia pero sigue ocupando espacio eternamente en la RAM, generando una "Fuga de Memoria" gradual que termina asfixiando por completo al Sistema Operativo.

---

## CASO 127

Contexto:
En un corporativo, el servidor de red DHCP se daÃ±a. Un empleado enciende su computadora con Windows para trabajar. Al revisar la configuraciÃ³n de red, nota que su mÃ¡quina tiene una direcciÃ³n IP asignada mÃ¡gicamente con el valor `169.254.45.10`, aunque no hay ningÃºn servidor en la oficina que le haya otorgado esa configuraciÃ³n.

Pregunta:
Â¿QuÃ© protocolo nativo del sistema operativo generÃ³ y configurÃ³ esta direcciÃ³n para intentar mantener viva la red local?

Opciones:
A) NAT (Network Address Translation)
B) APIPA (Automatic Private IP Addressing)
C) IPv6 Anycast Routing
D) DNS DinÃ¡mico de Emergencia

Respuesta correcta: B

ExplicaciÃ³n:
Cuando una computadora (especialmente en entornos Windows) estÃ¡ configurada para obtener una IP automÃ¡ticamente pero no logra comunicarse con un servidor DHCP, el sistema utiliza APIPA para auto-asignarse matemÃ¡ticamente una direcciÃ³n en el rango reservado "169.254.x.x". Esto le permite al menos comunicarse e interactuar con otras computadoras en la misma situaciÃ³n dentro del segmento fÃ­sico local.

---

## CASO 128

Contexto:
Una empresa pierde datos valiosos de transacciones bancarias a las 3:15 p.m. debido a un error humano masivo en un query SQL. El administrador debe restaurar la base de datos no al cierre del dÃ­a de ayer, sino exactamente al estado milimÃ©trico de las 3:14 p.m. de hoy, justo un minuto antes del desastre.

Pregunta:
Para lograr esta recuperaciÃ³n quirÃºrgica en bases de datos relacionales, Â¿quÃ© mecanismo interno y archivo de control del motor de base de datos se debe utilizar y reproducir secuencialmente?

Opciones:
A) La Pila de Vistas Materializadas (Materialized Views)
B) El Registro o BitÃ¡cora de Transacciones (Transaction Log / Redo Log)
C) Un Respaldo Incremental de Bloques de Sistema (File System Snapshot)
D) El ClÃºster de Ãndices B-Tree

Respuesta correcta: B

ExplicaciÃ³n:
El Registro de Transacciones (Transaction Log) es un archivo protegido y vital donde el motor de base de datos anota paso a paso cada `INSERT`, `UPDATE` o `DELETE` mucho antes de aplicarlo en el disco duro. En recuperaciÃ³n ante desastres (Point-In-Time Recovery), el administrador monta el respaldo completo de ayer, y luego le indica al motor que "reproduzca" hacia adelante como una cinta de video todas las operaciones del log secuencialmente, pausando exactamente a las 3:14 p.m.

---

## CASO 129

Contexto:
Un estudiante de Ciencias de la ComputaciÃ³n diseÃ±a una inteligencia artificial bÃ¡sica para resolver un laberinto en pantalla. La programada avanza casilla por casilla eligiendo rutas; cuando se topa con un muro y descubre que estÃ¡ en un callejÃ³n sin salida, su cÃ³digo retrocede exactamente a la Ãºltima intersecciÃ³n segura que visitÃ³ para descartar esa ruta y elegir la otra opciÃ³n inexplorada.

Pregunta:
Â¿QuÃ© estrategia clÃ¡sica de algoritmos y diseÃ±o matemÃ¡tico de bÃºsqueda estÃ¡ utilizando el programa para resolver el laberinto?

Opciones:
A) ProgramaciÃ³n DinÃ¡mica (Dynamic Programming)
B) Divide y VencerÃ¡s (Divide and Conquer)
C) Algoritmo Voraz Directo (Greedy Method)
D) Vuelta AtrÃ¡s (Backtracking)

Respuesta correcta: D

ExplicaciÃ³n:
El Backtracking o "Vuelta AtrÃ¡s" es un paradigma algorÃ­tmico de bÃºsqueda sistemÃ¡tica y exhaustiva. Opera mediante una estructura de Ã¡rbol recursiva: avanza por una ruta posible intentando resolver el problema; si la ruta resulta matemÃ¡ticamente invÃ¡lida o choca con una regla restrictiva, el algoritmo "retrocede" (cancela o poda la rama) e intenta el siguiente camino viable hasta hallar la meta (ej. Sudokus y Laberintos).

---

## CASO 130

Contexto:
Para impedir sobrecargas en el software, implementas el PatrÃ³n de DiseÃ±o "Singleton" para garantizar un solo objeto gestor de correos globales. En un servidor concurrente multihilos, los hilos chocan creando la clase varias veces. Decides usar `synchronized` para bloquear la funciÃ³n entera, pero esto paraliza la velocidad del sistema. Decides bloquear el hilo solo dentro del constructor inicial, evaluando un `if (instancia == null)` de manera meticulosa y optimizada.

Pregunta:
Â¿QuÃ© patrÃ³n avanzado de validaciÃ³n en concurrencia es el recomendado en Java o C# para aplicar el Singleton de forma veloz y segura usando una doble comprobaciÃ³n de los hilos?

Opciones:
A) PatrÃ³n Observador de SemÃ¡foros 
B) Bloqueo de doble comprobaciÃ³n (Double-Checked Locking)
C) Algoritmo de Hilos Mutex Independientes
D) Singleton de InyecciÃ³n Fluida

Respuesta correcta: B

ExplicaciÃ³n:
El Bloqueo de Doble ComprobaciÃ³n (Double-Checked Locking) es el diseÃ±o definitivo para el patrÃ³n Singleton seguro en hilos (Thread-Safe). Consiste en comprobar primero si el objeto es nulo sin ningÃºn bloqueo pesado. Si es nulo, se coloca el candado (`synchronized`), y una vez dentro de la zona de bloqueo crÃ­tico, se vuelve a comprobar con un segundo `if` si el objeto sigue nulo (en caso de que otro hilo haya entrado antes) para luego crearlo, logrando mÃ¡xima eficiencia de ejecuciÃ³n.

---

## CASO 131

Contexto:
En un sistema Linux, el programador ejecuta comandos de consola. Crea un archivo original llamado `config.conf`. Luego, mediante el comando `ln -s`, crea un "Enlace SimbÃ³lico" (Symlink) llamado `atajo.conf` apuntando al archivo original. Un minuto despuÃ©s, mueve y cambia de carpeta fÃ­sica el archivo original `config.conf` llevÃ¡ndoselo al directorio `/etc`.

Pregunta:
Â¿QuÃ© ocurrirÃ¡ al intentar abrir y leer los datos usando el acceso directo `atajo.conf`?

Opciones:
A) Se abrirÃ¡ correctamente rastreando al sistema de Inodos.
B) MarcarÃ¡ error indicando que el archivo no existe o el enlace estÃ¡ roto.
C) EliminarÃ¡ el archivo automÃ¡ticamente por regla de seguridad estricta.
D) DuplicarÃ¡ el archivo creando una copia rÃ­gida real localmente.

Respuesta correcta: B

ExplicaciÃ³n:
Un Enlace SimbÃ³lico (Symlink) funciona exactamente como los "Accesos directos" tradicionales de Windows. Es simplemente un pequeÃ±o archivo que contiene una cadena de texto (la ruta original). Si el archivo original es borrado, modificado en su nombre, o movido fÃ­sicamente a otra carpeta de red, el enlace simbÃ³lico se "rompe" instantÃ¡neamente al apuntar a un lugar que ya no existe y mostrarÃ¡ error.

---

## CASO 132

Contexto:
Al auditar los servicios de red abiertos hacia internet en el firewall de la empresa, el especialista en ciberseguridad bloquea todos los puertos numÃ©ricos por seguridad extrema y exige habilitar y abrir estrictamente solo el puerto estÃ¡ndar del trÃ¡fico seguro de pÃ¡ginas web y el puerto para la resoluciÃ³n de nombres de dominio en los navegadores.

Pregunta:
Considerando el modelo oficial, Â¿quÃ© nÃºmeros de puertos de la capa de transporte deben abrirse estrictamente para cubrir esa solicitud?

Opciones:
A) Puerto 80 para la navegaciÃ³n HTTP y Puerto 21 para DNS Seguro
B) Puerto 443 TCP para navegaciÃ³n web segura (HTTPS) y Puerto 53 UDP/TCP para servicio DNS
C) Puerto 22 para NavegaciÃ³n Global y Puerto 25 para las peticiones DNS UDP
D) Puerto 8080 TCP para SSL Global y Puerto 53 para DNS Interno

Respuesta correcta: B

ExplicaciÃ³n:
Para la navegaciÃ³n cifrada estÃ¡ndar de hoy en dÃ­a (HTTPS), el protocolo de internet demanda la apertura del puerto 443 vÃ­a TCP. Paralelamente, el sistema de resoluciÃ³n de nombres de dominio (DNS), el cual traduce las direcciones web humanas en direcciones IP de mÃ¡quina, opera globalmente y universalmente sobre el puerto 53 (usando UDP para velocidad de consulta, y TCP para transferencias de zonas completas).

---

## CASO 133

Contexto:
Una aplicaciÃ³n web de compras en Node.js recibe miles de visitas. Si se instruye al sistema para usar la instrucciÃ³n `nueva_conexion()` abriendo y cerrando la red TCP hacia la base de datos por cada usuario que entra, el sistema colapsarÃ¡, ya que crear conexiones de red desde cero toma cientos de milisegundos y consume excesiva RAM en el motor de base de datos.

Pregunta:
Â¿QuÃ© arquitectura o patrÃ³n de software para backend resuelve este problema de conectividad de red asfixiante?

Opciones:
A) Implementar FragmentaciÃ³n Horizontal de Nodos (Sharding)
B) El uso de un Grupo de Conexiones de Base de Datos (Connection Pooling)
C) Aplicar InyecciÃ³n de Dependencias a las tablas relacionales
D) Desplegar rÃ©plicas con Memoria Virtual y PaginaciÃ³n

Respuesta correcta: B

ExplicaciÃ³n:
El Connection Pooling (Pool de Conexiones) es vital para el rendimiento web avanzado. Consiste en crear y mantener siempre vivas en segundo plano un pequeÃ±o paquete estricto (ej. 50 conexiones simultÃ¡neas) hacia la base de datos. Cuando un cliente web necesita acceder a los datos, pide prestada una conexiÃ³n del Pool en lugar de forzar a crear una nueva; al terminar su transacciÃ³n, la devuelve sana a la alberca para que el siguiente usuario la reutilice al instante.

---

## CASO 134

Contexto:
Un arquitecto de programaciÃ³n modela aves. Define la clase superior `Ave` con el mÃ©todo fundamental `volar()`. Luego, la clase `Avestruz` hereda nativamente de `Ave`. Como los avestruces no vuelan, el desarrollador sobreescribe el mÃ©todo para que al invocar `volar()`, el objeto arroje directamente una excepciÃ³n fatal y un quiebre en la aplicaciÃ³n (`Throw Exception`).

Pregunta:
SegÃºn las normativas de arquitectura y diseÃ±o limpio SOLID, Â¿quÃ© principio de estructuraciÃ³n de clases rompiÃ³ por completo el desarrollador?

Opciones:
A) Principio de InversiÃ³n de Dependencia (DIP)
B) Principio de SegregaciÃ³n de Interfaz (ISP)
C) Principio de SustituciÃ³n de Liskov (LSP)
D) Principio Abierto/Cerrado (OCP)

Respuesta correcta: C

ExplicaciÃ³n:
La "L" de SOLID (Principio de SustituciÃ³n de Liskov). Dictamina que cualquier objeto hijo de una clase superior debe ser perfectamente capaz de reemplazar a su padre en el cÃ³digo sin romper en absoluto la y la arquitectura funcional del programa general. Al obligar a heredar a un `Avestruz` forzÃ¡ndolo a tener un mÃ©todo `volar()` que destruye y estrella el programa global, se demuestra que `Avestruz` no debiÃ³ heredar de una clase con atributos voladores.

---

## CASO 135

Contexto:
El equipo comercial en un proyecto Ã¡gil redacta una Historia de Usuario para la funciÃ³n "Carrito de Compras". El ingeniero lÃ­der la revisa y se la devuelve, argumentando que la historia carece de un elemento clave necesario para que el Ã¡rea de Control de Calidad (QA) y el programador sepan matemÃ¡ticamente quÃ© condiciones funcionales mÃ­nimas deben existir para poder dar por finalizada la tarea exitosamente.

Pregunta:
Â¿QuÃ© elemento oficial y medible falta por redactar obligatoriamente dentro de la Historia de Usuario de Scrum?

Opciones:
A) Los Diagramas UML del Back-end Estructural
B) Criterios de AceptaciÃ³n (Acceptance Criteria)
C) Casos de Uso Extendidos TÃ©cnicos
D) Puntos Estimados de Esfuerzo (Story Points)

Respuesta correcta: B

ExplicaciÃ³n:
Los Criterios de AceptaciÃ³n son una lista y binaria de reglas adjunta a cada Historia de Usuario. Mientras que la Historia de Usuario redacta el deseo del usuario en forma de conversaciÃ³n funcional general, los Criterios de AceptaciÃ³n limitan el campo y definen tÃ©cnicamente la prueba final para el Ã©xito del desarrollo (Ej. "El botÃ³n debe calcular el 16% de IVA", "El pago no debe exceder los 10 segundos"). Sin estos criterios, nadie sabe en quÃ© momento exacto el trabajo ha concluido.

---

## CASO 136

Contexto:
Un ingeniero debe programar una librerÃ­a de procesamiento de listas de datos muy desordenadas de hasta 100,000 elementos. Decide usar un algoritmo fundamental de las ciencias computacionales: elige un nÃºmero de la lista para usarlo como "Pivote", organiza los datos menores a la izquierda del pivote y los mayores a la derecha, para luego repetir esta estrategia matemÃ¡ticamente sobre ambas mitades resultantes por separado.

Pregunta:
Â¿QuÃ© potente algoritmo de ordenamiento y arquitectura Big O estÃ¡ diseÃ±ando el ingeniero?

Opciones:
A) Algoritmo Merge Sort de desempeÃ±o O(n)
B) Algoritmo Quick Sort de desempeÃ±o Ã³ptimo O(n log n)
C) Algoritmo Selection Sort de O(n^2)
D) Algoritmo Bubble Sort de alta fragmentaciÃ³n O(1)

Respuesta correcta: B

ExplicaciÃ³n:
El ordenamiento Quick Sort (OrdenaciÃ³n RÃ¡pida) es el algoritmo mÃ¡s usado en bibliotecas nativas de todos los lenguajes de programaciÃ³n modernos. Aprovecha de manera brillante la estrategia "Divide y VencerÃ¡s" definiendo Pivotes y particionando el arreglo de datos en su lugar fÃ­sico original, brindando en la mayorÃ­a aplastante de los casos cotidianos un tiempo de ejecuciÃ³n eficiente de O(n log n) superior a iteraciones lineales de O(nÂ²).

---

## CASO 137

Contexto:
El director del campus universitario decide modernizar las antenas y ruteadores inalÃ¡mbricos en los salones de clases argumentando que el viejo protocolo `802.11ac` ya no soporta la alta densidad de decenas de alumnos usando mÃºltiples dispositivos de manera simultÃ¡nea sin degradar enormemente la velocidad y provocar choques masivos de red.

Pregunta:
Â¿A quÃ© protocolo inalÃ¡mbrico moderno y de sexta generaciÃ³n (Wi-Fi 6) debe migrar para garantizar multiplexaciÃ³n masiva en entornos saturados de aparatos y conectividad de antenas de alta demanda computacional?

Opciones:
A) 802.11n (Wi-Fi 4 ClÃ¡sico)
B) 802.11ax (Wi-Fi 6 Moderno)
C) 802.11b (Wi-Fi Legacy de Alta Distancia)
D) 802.1X (Protocolo Seguro Autenticado)

Respuesta correcta: B

ExplicaciÃ³n:
El protocolo 802.11ax (comercialmente conocido como Wi-Fi 6) incorpora la tecnologÃ­a crÃ­tica OFDMA (MÃºltiple Acceso por DivisiÃ³n de Frecuencias Ortogonales). Esto permite al punto de acceso subdividir un canal inmenso inalÃ¡mbrico en pequeÃ±os conductos, lo que logra transmitir datos a mÃºltiples aparatos de manera matemÃ¡ticamente simultÃ¡nea y organizada, acabando con el cuello de botella tradicional en auditorios densamente saturados.

---

## CASO 138

Contexto:
El encargado del centro de datos crea en Linux un archivo de automatizaciÃ³n usando comandos de bash y lo guarda como `respaldo.sh`. En la primera lÃ­nea del archivo de texto ha escrito rigurosamente el cÃ³digo `#!/bin/bash`. Sin embargo, al teclear `./respaldo.sh` en la consola, el sistema operativo le arroja un error absoluto de "Permiso Denegado".

Pregunta:
Â¿QuÃ© comando administrativo faltÃ³ ejecutar previamente sobre el archivo en el nivel de permisos para permitir que el nÃºcleo del sistema procediera con la lectura y ejecuciÃ³n del script algorÃ­tmico?

Opciones:
A) Asignarle permisos Root globales usando `sudo file./respaldo.sh`
B) Cambiar la bandera de permisos agregando ejecuciÃ³n matemÃ¡tica usando `chmod +x respaldo.sh`
C) Elevar el archivo sobre la capa estricta del kernel usando `chown root:root respaldo.sh`
D) Forzar el inicio manual del demonio shell `sh./respaldo.sh --execute`

Respuesta correcta: B

ExplicaciÃ³n:
En los entornos de la rama Unix y Linux, crear un documento de texto y aÃ±adirle la extensiÃ³n `.sh` no es suficiente para convertirlo en un programa interactivo. Linux ignora las extensiones visuales y se guÃ­a netamente por su matriz interna de permisos (Lectura, Escritura y EjecuciÃ³n). Se requiere forzosamente usar `chmod +x` (Cambiar modo sumando el bit "eXecutable") para que el motor interno acepte procesarlo como un software funcional.

---

## CASO 139

Contexto:
En una transacciÃ³n financiera SQL, la TransacciÃ³n A bloquea el "Registro de Cuenta Fija" del cliente y luego solicita el "Registro de Cuenta de Ahorros" del mismo cliente. Al mismo tiempo y en milisegundos, la TransacciÃ³n B bloquea primero el "Registro de Cuenta de Ahorros" y despuÃ©s intenta acceder al "Registro de Cuenta Fija". El sistema entra en una pausa perpetua colapsada donde ambos mÃ³dulos informÃ¡ticos estÃ¡n esperando indefinidamente a que el otro suelte su objeto matemÃ¡tico.

Pregunta:
Â¿QuÃ© soluciÃ³n tÃ©cnica automatizada en las bases de datos modernas interviene y quiebra radicalmente el famoso "Abrazo Mortal" y la parÃ¡lisis arquitectÃ³nica generada por la colisiÃ³n?

Opciones:
A) Un algoritmo de semÃ¡foro local binario y paginaciÃ³n en memoria swap dinÃ¡mica
B) La Base de Datos reinicia en cascada apagando los servicios secundarios forzosos
C) El Motor de Bases de Datos usa un Monitor AlgorÃ­tmico de Grafo de Esperas; detecta el ciclo infinito y aplica un proceso forzado (Kill) cancelando (Rollback) a la transacciÃ³n que Ã©l considera menos costosa o como la "vÃ­ctima".
D) La base de datos ignora las llaves abriendo la lectura sucia en el entorno de ambas cuentas.

Respuesta correcta: C

ExplicaciÃ³n:
El abrazo mortal (Deadlock / Interbloqueo) es el peor terror de un programador concurrente. Los motores SQL modernos corren un vigilante interno invisible. Cuando dibuja un mapa de grafos de hilos y ve que dos procesos se bloquearon en un bucle cerrado matemÃ¡tico infinito, el motor asume el mando total y "mata" automÃ¡ticamente a una de las dos consultas (la vÃ­ctima) deshaciendo todo su trabajo, devolviendo la vida y funcionalidad del sistema central.

---

## CASO 140

Contexto:
El lÃ­der del equipo tÃ©cnico decide elevar la rigidez de calidad del software y exige la implementaciÃ³n de una herramienta avanzada automatizada como SonarQube u otros analizadores en el entorno. Se decreta que el cÃ³digo nuevo enviado por cualquier desarrollador no podrÃ¡ pasar a producciÃ³n a menos que logre certificar matemÃ¡ticamente la "MÃ©trica Funcional del 80%".

Pregunta:
Â¿A quÃ© mÃ©trica clave se refiere el estÃ¡ndar de la ingenierÃ­a de software moderna cuando exige alcanzar el "80% de calidad en pruebas y flujos tÃ©cnicos"?

Opciones:
A) A la Cobertura de CÃ³digo (Code Coverage), exigiendo que el 80% de las lÃ­neas y condicionales del cÃ³digo fuente escrito hayan sido ejecutadas e inspeccionadas exitosamente durante la corrida tÃ©cnica de las Pruebas Unitarias de software antes de enviar a producciÃ³n.
B) Al rendimiento mÃ©trico de la latencia en milisegundos de la red en cada iteraciÃ³n del cÃ³digo.
C) Al 80% de Ã©xito matemÃ¡tico analizado en la velocidad de la base relacional del backend global.
D) Al acoplamiento arquitectÃ³nico de interfaces grÃ¡ficas.

Respuesta correcta: A

ExplicaciÃ³n:
La Cobertura de CÃ³digo (Code Coverage) es una mÃ©trica incuestionable de aseguramiento de calidad (QA). Si un programador elabora un sistema inmenso con 1,000 lÃ­neas repletas de condiciones "If/Else" funcionales, pero al momento de correr las pruebas (Testing Unitario) sus simuladores solo acceden y cruzan el 20% de esas ramas condicionales dejÃ¡ndolo inexplorado, el sistema rechaza el cÃ³digo por fragilidad al poseer un altÃ­simo nivel de riesgo oculto para el futuro del cliente final.
\newpage
# BLOQUE 8
## CASO 141

Contexto:
El hospital general necesita un rediseÃ±o de red corporativa. Implementan un servidor web externo para que los pacientes de todo el mundo consulten horarios de mÃ©dicos. Sin embargo, tambiÃ©n cuentan con un servidor interno que aloja el expediente clÃ­nico crÃ­tico. Por regla mÃ¡xima de seguridad gubernamental, ambos servidores deben tener restricciones de red separadas fÃ­sicamente.

Pregunta:
Â¿En quÃ© sector perimetral especÃ­fico del Firewall corporativo debe instalarse estratÃ©gicamente el servidor web pÃºblico para aislarlo correctamente del servidor interno crÃ­tico?

Opciones:
A) En el clÃºster enrutador interno VLAN
B) En una Zona Desmilitarizada (DMZ)
C) En un segmento Switch Capa 2 local
D) En la misma subred usando mÃ¡scara restrictiva 

Respuesta correcta: B

ExplicaciÃ³n:
La Zona Desmilitarizada (DMZ) es un segmento de red aislado y ubicado entre Internet pÃºblico y la red interna de la empresa (LAN). Los servidores que forzosamente deben recibir visitas de extraÃ±os (como pÃ¡ginas web o correos) se ponen ahÃ­. AsÃ­, si un atacante compromete el servidor web, seguirÃ¡ bloqueado por la segunda capa del firewall corporativo y no podrÃ¡ acceder al Ã¡rea profunda donde residen las bases de datos de los pacientes.

---

## CASO 142

Contexto:
Un ingeniero compite diseÃ±ando un algoritmo para un robot de logÃ­stica en un almacÃ©n inteligente. El robot tiene una caja con una capacidad mÃ¡xima de 15 kilogramos. Existen diferentes artÃ­culos de distintos pesos y valores monetarios Ãºnicos. El robot debe calcular y llevarse la combinaciÃ³n matemÃ¡tica exacta de artÃ­culos que sume el mÃ¡ximo valor monetario posible, sin superar bajo ninguna circunstancia el peso permitido de la caja.

Pregunta:
Â¿A quÃ© problema matemÃ¡tico y algorÃ­tmico clÃ¡sico de la programaciÃ³n computacional Ã³ptima se estÃ¡n enfrentando?

Opciones:
A) Problema de los FilÃ³sofos Comensales (Dining Philosophers)
B) Problema del Viajante de Comercio (Traveling Salesman)
C) El Problema de la Mochila (Knapsack Problem)
D) Las Torres de HanÃ³i Computacional

Respuesta correcta: C

ExplicaciÃ³n:
El Problema de la Mochila (Knapsack Problem 0/1) es uno de los mÃ¡ximos exponentes de los retos matemÃ¡ticos de optimizaciÃ³n combinatoria. No se puede resolver a la ligera siendo avaro y escogiendo "el mÃ¡s caro primero", porque podrÃ­a ser muy pesado y arruinar el espacio del resto. Su soluciÃ³n perfecta exige el despliegue del paradigma algorÃ­tmico computacional avanzado de ProgramaciÃ³n DinÃ¡mica evaluando un mapa de memoria y sub-problemas.

---

## CASO 143

Contexto:
El equipo de ventas de la matriz requiere ejecutar el reporte mundial financiero de los Ãºltimos diez aÃ±os, un anÃ¡lisis exhaustivo que aglutina cincuenta tablas y suma miles de millones de filas en cruce. Al correrlo, el motor SQL sufre calculando todas las matemÃ¡ticas al vuelo durante horas y colapsando el servidor completo. El DBA decide congelar los resultados y grabarlos fÃ­sicamente en un espacio separado en el disco, permitiendo que las lecturas y consultas subsiguientes sean casi instantÃ¡neas.

Pregunta:
Â¿QuÃ© tecnologÃ­a relacional avanzada aplicÃ³ el Administrador de la Base de Datos para sanar y esquivar los cuellos de botella de esta demanda?

Opciones:
A) Vista Materializada (Materialized View)
B) Vista EstÃ¡ndar ComÃºn 
C) Disparador de PaginaciÃ³n Recursiva 
D) FragmentaciÃ³n B-Tree de Indices Forzados

Respuesta correcta: A

ExplicaciÃ³n:
A diferencia de una Vista ComÃºn (View normal de SQL, que solo actÃºa como un alias y obliga a correr la consulta de nuevo matemÃ¡ticamente), una Vista Materializada ejecuta la consulta infernal una sola vez y graba los resultados fÃ­sicos definitivos en una nueva tabla oculta del disco duro. Es el estÃ¡ndar nÃºmero uno en "Almacenes de Datos / Data Warehouses" donde las consultas son inmensamente largas pero se pueden programar para refrescar y regenerarse matemÃ¡ticamente por la noche de manera invisible.

---

## CASO 144

Contexto:
Una plataforma gigantesca como Netflix o Spotify sufre problemas en el departamento de desarrollo. El equipo que gestiona y programa "La barra lateral del menÃº web" retrasa constantemente la publicaciÃ³n de actualizaciones por esperar a que el equipo que programa "El reproductor de video" termine, ya que ambos comparten y editan en el mismo archivo gigante monolÃ­tico de React/Angular.

Pregunta:
Para resolver y fragmentar la aplicaciÃ³n del cliente final permitiendo que ambos equipos publiquen actualizaciones web y utilicen tecnologÃ­as independientes en la misma pantalla web al mismo tiempo sin colisionar lÃ³gicamente, Â¿quÃ© modelo de arquitectura y diseÃ±o debe emplearse?

Opciones:
A) PatrÃ³n MVC Estricto 
B) Despliegue de AplicaciÃ³n Web de PÃ¡gina Ãanica (SPA) nativa
C) Arquitectura de Microfrontends
D) RefactorizaciÃ³n a Microservicios de Back-End Rest API

Respuesta correcta: C

ExplicaciÃ³n:
La Arquitectura de Microfrontends toma el mismo concepto salvador de los "Microservicios", pero lo aplica al lado del navegador e interfaz grÃ¡fica del cliente (Front-End). Consiste en dividir la pÃ¡gina web visual inmensa en pequeÃ±as piezas estructurales separadas lÃ³gicamente; cada equipo puede desarrollar, probar y publicar su "pedazo" de la pantalla de forma totalmente independiente de la de sus compaÃ±eros de trabajo sin obligar a compilar un programa global inmanejable y pesado.

---

## CASO 145

Contexto:
En la programaciÃ³n modular estricta de una tienda web, el arquitecto nota que las clases del "CÃ¡lculo de Descuentos" llaman e importan rÃ­gidamente dentro de su interior a clases externas de bases de datos de bajo nivel para buscar los catÃ¡logos. El arquitecto rechaza el cÃ³digo y exige inyectar una regla: Las reglas superiores de negocio jamÃ¡s deben depender e importar archivos fÃ­sicos bÃ¡sicos de la tecnologÃ­a del software, y ambos mÃ³dulos deben conectarse usando una abstracciÃ³n en su lugar funcional.

Pregunta:
SegÃºn las normativas de SOLID y diseÃ±o modular, Â¿quÃ© principio fue violado de manera contundente y corregido estructuralmente?

Opciones:
A) Principio de Responsabilidad Ãanica (SRP)
B) Principio de SustituciÃ³n de Liskov (LSP)
C) Principio de InversiÃ³n de Dependencias (Dependency Inversion Principle - DIP)
D) Principio de Abierto y Cerrado (OCP)

Respuesta correcta: C

ExplicaciÃ³n:
La "D" de SOLID es el muro final arquitectÃ³nico. Dictamina formalmente que "Los mÃ³dulos de alto nivel (como la inteligencia o reglas de tu banco) nunca deben saber de la existencia ni estar encadenados a los mÃ³dulos bÃ¡sicos de bajo nivel tecnolÃ³gico (cÃ³mo enviar un email o la marca de tu base de datos)". Ambos dominios deben depender e interactuar a travÃ©s de Interfaces (Contratos vacÃ­os abstractos), haciendo al software sumamente testeable, reemplazable e inyectable dinÃ¡micamente sin sufrimiento arquitectÃ³nico.

---

## CASO 146

Contexto:
El Sistema Operativo Linux moderno de un desarrollador cuenta con escasa memoria RAM. Cuando el usuario hace doble clic para abrir la suite completa pesada del paquete Office o LibreOffice, el sistema operativo no carga los 2 Gigabytes del programa de golpe en la memoria RAM, sino que engaÃ±a matemÃ¡ticamente al programa dejÃ¡ndolo en el disco duro, y va trayendo fragmentos de 4 Kilobytes a la memoria en el procesador estrictamente a medida que el programa avanza y los va requiriendo para funcionar lÃ³gicamente.

Pregunta:
Â¿CÃ³mo se le denomina tÃ©cnicamente a esta funcionalidad vital propia de los sistemas de administraciÃ³n de memoria y arquitectura contemporÃ¡nea?

Opciones:
A) Carga Segmentada Lineal de Variables Directas
B) Memoria de PaginaciÃ³n Estricta Asignada en ROM
C) PaginaciÃ³n a Demanda (Demand Paging / Fallo de PÃ¡gina)
D) Re-localizaciÃ³n DinÃ¡mica Secuencial Absoluta

Respuesta correcta: C

ExplicaciÃ³n:
La PaginaciÃ³n a Demanda (Demand Paging) es la magia de los Sistemas Operativos modernos. El nÃºcleo de Linux y Windows asume de manera perezosa (Lazy) que un usuario nunca usarÃ¡ todas las funciones matemÃ¡ticas de un gran software; por lo tanto, solo transfiere al procesador las "PÃ¡ginas de memoria" especÃ­ficas al momento exacto en el que el programa incurre en un "Page Fault" (Fallo de pÃ¡gina: buscar un dato necesario que aÃºn no estaba cargado).

---

## CASO 147

Contexto:
El conmutador fÃ­sico principal (Switch) de un centro comercial administra las cÃ¡maras de seguridad y paralelamente las computadoras pÃºblicas de atenciÃ³n al cliente. El administrador ordena la creaciÃ³n de Redes Virtuales (VLANs) para que se mantengan incomunicadas lÃ³gicamente, pero ambos trÃ¡ficos deben fluir en el edificio a travÃ©s del mismo Ãºnico y grueso cable principal (Troncal / Trunk Link) sin revolver ni contaminar a quÃ© grupo de red pertenecen los datos originados.

Pregunta:
Â¿QuÃ© estÃ¡ndar o protocolo de etiquetado a nivel Capa 2 manipula y estampa los paquetes introduciendo la firma de red al atravesar esta manguera troncal de hardware y switches?

Opciones:
A) Protocolo IPv6 IPsec DinÃ¡mico Local
B) EstÃ¡ndar IEEE 802.1Q (VLAN Tagging / Etiquetado)
C) MultiplexaciÃ³n de DivisiÃ³n CSMA/CD
D) Spanning Tree Protocol BÃ¡sico Local

Respuesta correcta: B

ExplicaciÃ³n:
El IEEE 802.1Q (coloquialmente conocido en el gremio de redes como "dot1q") es la llave arquitectÃ³nica de las redes virtuales empresariales. Cuando la informaciÃ³n de muchas redes debe viajar compartiendo un solo cable matriz (Puerto Trunk), el protocolo abre el paquete e inyecta una etiqueta (VLAN ID). El Switch receptor del otro lado lee el ID, reubica el paquete a su entorno y le retira la etiqueta sin que las computadoras finales perciban los cambios.

---

## CASO 148

Contexto:
Al ejecutar un SELECT SQL complicado, un proceso interno e invisible del servidor lee tus instrucciones relacionales e intenta inventar mÃºltiples rutas y maneras matemÃ¡ticas de buscar la informaciÃ³n, calculando y evaluando cuÃ¡l es la mÃ¡s rÃ¡pida o la que gastarÃ¡ menos memoria RAM, para finalmente ejecutar la ganadora.

Pregunta:
Â¿QuÃ© componente o sistema central algorÃ­tmico interno reside en el corazÃ³n de todas las bases de datos funcionales contemporÃ¡neas realizando esta ingenierÃ­a previa a favor del rendimiento relacional?

Opciones:
A) El Optimizador de Consultas (Query Optimizer) y el Plan de EjecuciÃ³n interno (Execution Plan)
B) El Demonio Compilador SintÃ¡ctico Secuencial de Variables de Entorno 
C) El Motor de Almacenamiento InnoDB Local
D) El Ãrbol B BÃ¡sico Paginado y Controlado en Memoria Heap Indexada

Respuesta correcta: A

ExplicaciÃ³n:
El Optimizador de Consultas de un Motor (Query Optimizer) asume que la instrucciÃ³n SQL pudo haber sido estructurada ineficientemente por el usuario. Funciona analizando y ponderando los Ã­ndices con algoritmos estadÃ­sticos avanzados. El comando EXPLAIN expone a la vista del ingeniero la ruta final (Execution Plan) que la mÃ¡quina inventÃ³. Un programador avanzado siempre usa este plano para descubrir los cuellos de botella exactos.

---

## CASO 149

Contexto:
Un ingeniero requiere programar un software detector de plagio textual como los de la Universidad, capaz de buscar y analizar cadenas de frases especÃ­ficas dentro de enciclopedias gigantescas de libros sin ralentizarse. Descarta la bÃºsqueda ordinaria secuencial, y aplica un algoritmo inteligente avanzado y comprobado que lee y compara el texto creando una pequeÃ±a tabla matriz de coincidencias parciales, permitiÃ©ndole dar saltos largos y evitar releer segmentos para alcanzar una eficiencia inponente.

Pregunta:
Â¿QuÃ© complejo e infalible algoritmo matemÃ¡tico computacional implementÃ³ en su bÃºsqueda paralela?

Opciones:
A) El Algoritmo Backtracking Exhaustivo Universal
B) Algoritmo de Flujo MatemÃ¡tico de Ford-Fulkerson en Grafos y Rutas
C) Algoritmo de BÃºsqueda de Cadenas Texto Knuth-Morris-Pratt (KMP String Matching Algorithm)
D) La BÃºsqueda Binaria de Matrices Dobles Complejas

Respuesta correcta: C

ExplicaciÃ³n:
El Algoritmo avanzado KMP (Knuth-Morris-Pratt) es el remedio frente a algoritmos de comparaciÃ³n clÃ¡sicos ineficientes y lineales de "Fuerza Bruta" en textos (que retroceden desde cero ante cada error). El algoritmo KMP pre-procesa el texto clave creando y evaluando de antemano un sub-arreglo matriz de bordes y fallos, lo que le permite deslizarse a gran velocidad sobre miles de textos gigantes sin volver hacia atrÃ¡s nunca.

---

## CASO 150

Contexto:
Un portal gubernamental serÃ¡ lanzado el prÃ³ximo mes. El equipo de ingenieros en pruebas (QA) simula con software especializado inyectar el sistema web con 2,000 conexiones simuladas simultÃ¡neas y regulares para verificar si el servidor y la arquitectura web pueden tolerar el nivel bÃ¡sico promedio diario de usuarios con el que esperan trabajar cÃ³modamente los primeros 3 aÃ±os funcionales tras publicarlo.

Pregunta:
Â¿QuÃ© tipo de ciclo y pruebas de calidad de rendimiento sistemÃ¡tico (Performance Testing) acaba de estructurar y realizar el equipo operativo?

Opciones:
A) Pruebas de Escalabilidad Local BÃ¡sicas (Scalability Local Testing)
B) Pruebas de TensiÃ³n Estructural y Desbordamiento (Spike Testing Avanzado)
C) Pruebas CrÃ­ticas de Carga (Load Testing)
D) Pruebas Formidables de EstrÃ©s Total (Stress Testing)

Respuesta correcta: C

ExplicaciÃ³n:
En los entornos arquitectÃ³nicos de Software Quality Assurance y Testing, se debe separar el anÃ¡lisis en subcategorÃ­as. La "Prueba de Carga" (Load Test) mide si el software cumple establemente frente a los miles de usuarios que el servidor presupuestÃ³ albergar cÃ³modamente. Es vital diferenciarla de la famosa "Prueba de EstrÃ©s" (Stress Test), cuyo fin tÃ©cnico radica en ahogar al procesador arrojando millones de trÃ¡ficos exagerados sin sentido hasta ver a la infraestructura desvanecerse para entender sus lÃ­mites crÃ­ticos finales.

---

## CASO 151

Contexto:
En la programaciÃ³n modular de arquitecturas de componentes limpios y mantenibles, el LÃ­der de Proyecto inspecciona el cÃ³digo y decreta: "Las funciones de nuestras Clases Orientadas a Objetos deben siempre dedicarse estrictamente a una sola meta conjunta; pero tambiÃ©n deben mantenerse estructuralmente separadas de otras clases para que, si un departamento actualiza su clase central general, a ningÃºn otro desarrollador se le rompa su trabajo".

Pregunta:
Â¿Con quÃ© dupla de tÃ©rminos inquebrantables de ingenierÃ­a y estructura del diseÃ±o modular arquitectÃ³nico se estÃ¡ guiando el requerimiento del director del proyecto?

Opciones:
A) Alto Acoplamiento SistÃ©mico y Baja CohesiÃ³n Operativa
B) Alta CohesiÃ³n (High Cohesion) y Bajo Acoplamiento Modular (Low Coupling)
C) Alta PolimorfizaciÃ³n Modular Local y AbstracciÃ³n Total Funcional Abstracta
D) InversiÃ³n DinÃ¡mica Global y Herencia Profunda Extensa Simple

Respuesta correcta: B

ExplicaciÃ³n:
"Alta CohesiÃ³n y Bajo Acoplamiento" es el lema mundial de los ingenieros arquitectÃ³nicos del software global. La CohesiÃ³n mide que las partes dentro del mÃ©todo sean afines entre sÃ­ (no puedes agrupar funciones de "imprimir nÃ³mina" junto a mÃ©todos para "renderizar grÃ¡ficos 3D" en un mismo componente). Un Bajo Acoplamiento persigue que una clase o servicio no quede encadenada a las particularidades internas secretas de otra, sino que ambas deben colaborar ciegamente mediante contratos (Interfaces).

---

## CASO 152

Contexto:
Se estÃ¡ diseÃ±ando el marcapasos mÃ©dico computarizado interno del corazÃ³n y la red computacional del freno (ABS) de la planta automotriz. Los arquitectos descartan instalarles el sistema operativo Windows o Linux comÃºn, indicando categÃ³ricamente que "si el sistema operativo llega a distraerse priorizando procesos internos sin valor, o si su kernel sufre un retraso en contestar e interrumpir el procesador, una vida estarÃ­a en riesgo".

Pregunta:
Bajo requerimientos de velocidad determinista inalterable, Â¿quÃ© arquitectura base e instalaciÃ³n de Sistema Operativo estructural global de la industria y bajo nivel deben utilizar para esta computadora?

Opciones:
A) Un Sistema Operativo Distribuido Basado en Mensajes y Microservicios Centralizados
B) Un Sistema Operativo Multiusuario Multitarea Segmentado en PaginaciÃ³n Local (Timesharing OS Global)
C) Un Sistema Operativo ClÃ¡sico de Tiempo Real Estricto (Hard Real-Time Operating System / RTOS)
D) Un Sistema Operativo Simple y Monotarea Basado en Lotes Estructurales Secuenciales DinÃ¡micos BÃ¡sicos de Hardware

Respuesta correcta: C

ExplicaciÃ³n:
Un RTOS "Duro" (Real Time Operating System o SOTR) garantiza de forma extrema que las instrucciones enviadas a sus componentes vitales van a procesarse y dar la contestaciÃ³n en un plazo estricto de tiempo prefijado y determinÃ­stico, en vez de un "plazo aproximado y variable sin urgencia como hace Windows al mover y cargar tu archivo pesado". Para la medicina y el sector aeroespacial, fallar la mÃ©trica exacta de velocidad lÃ­mite equivale a fallar totalmente.

---

## CASO 153

Contexto:
El administrador nota que cuando cien computadoras del departamento logran acceder al mismo servidor externo de puerto web seguro cifrado (Puerto TCP 443 HTTPS corporativo seguro en la Nube), las cien computadoras reciben la respuesta simultÃ¡nea correctamente cruzada sin enredar las ventanas del navegador con lo que otro usuario local pidiÃ³ al mismo servidor global.

Pregunta:
Bajo las reglas de los modelos enrutados del sistema, Â¿quÃ© caracterÃ­stica esencial de la Capa de Transporte (TCP) es implementada por cada mÃ¡quina cliente local para identificar de retorno individualmente a su pestaÃ±a especÃ­fica a pesar de dirigirse todas al mismo servidor y puerto universal mundial Ãºnico 443 HTTP central del destino final?

Opciones:
A) El Encapsulamiento Virtual CÃ­clico Simple NAT y el Modelo IP dinÃ¡mico
B) La AsignaciÃ³n de Puertos Origen (Ephemeral Source Ports locales)
C) El Control Paralelo FÃ­sico MatemÃ¡tico del Sumatorio Checksum Fijo Local DinÃ¡mico Paralelo CÃ­clico Global 
D) La DirecciÃ³n Aleatoria MAC del Puerto General en Capa DinÃ¡mica Central

Respuesta correcta: B

ExplicaciÃ³n:
El servidor externo seguro corporativo espera la peticiÃ³n sentado pacÃ­ficamente en su puerto "443 EstÃ¡ndar Universal (Destination Port)". Pero la computadora cliente para diferenciarse, crea un "Socket de Red" combinando su IP con un puerto nÃºmero Ãºnico asignado de manera aleatoria llamado "Puerto de Origen EfÃ­mero" o Ephemeral Source Port (ej. 50,422 o 56,128). Cuando el servidor de Amazon le contesta, envÃ­a la respuesta adjuntando y atando exactamente el resultado a ese Puerto individual exclusivo, asegurando que a tu pestaÃ±a le llegue tu video y no el de tu compaÃ±ero.

---

## CASO 154

Contexto:
El volumen del juego de un celular colapsa tu servidor central relacional MySQL. Necesitan mÃ¡s poder para aguantar las millones de partidas. El jefe ordena agregarle RAM, procesador, y cambiar el disco duro por un inmenso almacenamiento de estado sÃ³lido NVMe Ãºltimo modelo. Con este incremento Ãºnico a la mÃ¡quina central actual local en la torre de seguridad, creen que aguantarÃ¡n 3 aÃ±os antes de requerir un servidor superior.

Pregunta:
Â¿QuÃ© mÃ©todo e iniciativa tÃ©cnica estructural directa de arquitectura e ingenierÃ­a del Cloud Computing para crecimiento estÃ¡ ejerciendo tu jefe con sus acciones corporativas internas ?

Opciones:
A) Escalabilidad Distribuida DinÃ¡mica
B) Escalabilidad Horizontal Global (Scale-Out o Nodos Independientes Masivos)
C) Crecimiento por Microservicios Vertical DinÃ¡mico Local PÃ­ldora
D) Escalabilidad Vertical Estructural (Scale-Up / Agrandamiento MonolÃ­tico de un Ãºnico Equipo)

Respuesta correcta: D

ExplicaciÃ³n:
La Escalabilidad Vertical (Scale-Up) de la nube moderna se fundamenta estrictamente en la antigua usanza directa: tomar al servidor central y hacerlo grande y gigante hasta exprimir el tope de la placa base incrementando RAM y CPU. Su limitante es que tiene un tope tecnolÃ³gico y requiere apagar el servidor. Su rival arquitectÃ³nico poderoso invencible es el Horizontal (Scale-Out): En vez de un sÃºper servidor monstruo gigantesco, utilizas cientos de computadoras simples, baratas e independientes conectadas en paralelo formando un clÃºster de alta disponibilidad.

---

## CASO 155

Contexto:
El ingeniero implementa una Tabla Hash para asignar correos. Como el espacio reservado es limitado, ocurre que la funciÃ³n matemÃ¡tica designa que los datos de los usuarios "Ana" y "Carlos" irÃ¡n destinados al mismo Ã­ndice de casillero (Bucket). El programador salva esto permitiendo que el objeto final no se re-escriba mutuamente por colisiÃ³n; en su lugar enlaza la variable mediante punteros formando en esa casilla interna una pequeÃ±a lista entrelazada.

Pregunta:
Â¿CÃ³mo se denomina formalmente a esta brillante e infalible soluciÃ³n de arquitectura de colecciones implementada para sortear la anomalÃ­a estructural de diccionario algorÃ­tmico global?

Opciones:
A) ResoluciÃ³n DinÃ¡mica Aleatoria Lineal Central Fija
B) ResoluciÃ³n Absoluta de Colisiones Por Encadenamiento Separado (Separate Chaining)
C) ResoluciÃ³n Abierta y ExploraciÃ³n por Sondeo Lineal de Capacidad Limitada
D) Hashing y Re-Hash Fractal CÃ­clico MatemÃ¡tico DinÃ¡mico Absoluto Central 

Respuesta correcta: B

ExplicaciÃ³n:
El Encadenamiento (Chaining de diccionarios) en la algoritmia, absorbe tranquilamente la inevitable "ColisiÃ³n" matemÃ¡tica asignando la responsabilidad del orden matemÃ¡tico estricto a una sub-lista secundaria (Linked List estricta). Su rival alternativo es el "Sondeo Lineal de DirecciÃ³n Abierta (Probing)": Si un casillero fijo local estÃ¡ lleno por colisiÃ³n, salta algorÃ­tmica y desesperadamente a los casilleros paralelos vecinos del arreglo matriz buscando un hueco libre para estacionar el valor.

---

## CASO 156

Contexto:
El equipo interviene la base de datos MySQL el fin de semana. No hay ningÃºn ticket, error, fallo o queja levantada por los usuarios, pero ellos purgan la base, actualizan el motor y corren reconstrucciÃ³n de Ã­ndices fragmentados para impedir que el sistema falle por ralentizaciÃ³n en los prÃ³ximos cuatro meses y asegurar el rendimiento.

Pregunta:
Â¿QuÃ© categorÃ­a del estÃ¡ndar y modelo clÃ¡sico universal de mantenimiento de IngenierÃ­a y ciclo de software estÃ¡n efectuando anticipadamente?

Opciones:
A) Mantenimiento Evolutivo Local DinÃ¡mico Paralelo General Directo Central
B) Mantenimiento Adaptativo CÃ­clico Simple Lineal Abstracto 
C) Mantenimiento Preventivo y 
D) Mantenimiento Correctivo Directo Fijo Simple Paralelo Central

Respuesta correcta: C

ExplicaciÃ³n:
El Mantenimiento Preventivo ocurre proactivamente antes de un fallo. El "Correctivo" repara bugs que ya rompieron el sistema y generaron tickets. El "Adaptativo" modifica al sistema si el banco cambiÃ³ sus normativas fiscales obligatorias, y el "Evolutivo o Perfectivo" agrega caracterÃ­sticas nuevas, funciones extra y mejoras que el cliente pagÃ³ por tener transaccionalmente en el cÃ³digo futuro.

---

## CASO 157

Contexto:
Un cientÃ­fico codifica analÃ­ticamente un cÃ¡lculo en un script. Empieza declarando la variable en su cÃ³digo fuente como: `edad = 5;`. El compilador del lenguaje no arroja ningÃºn mensaje y arranca; pero treinta lÃ­neas mÃ¡s abajo en pleno tiempo de procesamiento del programa, le asigna y modifica el valor escribiendo `edad = "Joven"`. El sistema procesa la orden, destruye el formato numÃ©rico interno y ajusta la variable cambiÃ¡ndola dinÃ¡micamente como objeto de texto de manera natural en memoria.

Pregunta:
Â¿Bajo quÃ© categorÃ­a de paradigma de lenguaje arquitectÃ³nico estructurado en tipado operÃ³ el sistema sin abortar la ejecuciÃ³n?

Opciones:
A) Lenguaje Estrictamente Tipado y Compilado (Statically Typed Language)
B) Lenguaje Universal ParadÃ³jico Multi CÃ­clico Lineal Fijo Abierto 
C) Lenguaje de Tipado DÃ©bil y DinÃ¡mico Simple (Dynamically Typed Language)
D) Lenguaje Interpretado Por Bloques Fijos y Centrales Paralelos Simples

Respuesta correcta: C

ExplicaciÃ³n:
En Lenguajes formalmente de tipado estricto "" (como Java, C#), la declaraciÃ³n obliga a firmar con sangre el molde: `int edad = 5;` es una muralla matemÃ¡tica; si luego le metes un `edad = "Joven"`, explota en tiempo de compilaciÃ³n y no corre. Lenguajes de tipado "DinÃ¡mico" (Python, JavaScript clÃ¡sico) determinan el peso, forma y tipo del objeto sobre el camino al vuelo "en tiempo de ejecuciÃ³n (runtime)", permitiendo a la variable mutar a voluntad.

---

## CASO 158

Contexto:
Un servicio clave que gestiona las peticiones del sistema de impresiÃ³n Linux central no tiene ninguna ventana ni interfaz grÃ¡fica. Corre por meses enteros invisible bajo el agua y memoria RAM en segundo plano, esperando pacÃ­ficamente a que un cliente envÃ­e un documento para ser procesado en la cola y puramente central de red dinÃ¡mica.

Pregunta:
Â¿QuÃ© categorÃ­a computacional estructural y tÃ©rmino central Unix/Linux clÃ¡sico define globalmente a este programa que opera ininterrumpidamente en fondo?

Opciones:
A) Un Macro-Script AutomÃ¡tico 
B) Una MÃ¡quina Virtual 
C) Un Servicio Windows ClÃ¡sico Abstracto
D) Un Demonio de Segundo Plano (Background Daemon)

Respuesta correcta: D

ExplicaciÃ³n:
Los "Daemon" (Demonios) son las piezas vitales en arquitectura Linux. Son procesos y programas silenciosos que cobran vida al arrancar la computadora, desatÃ¡ndose de cualquier consola (terminal), viviendo sin interfaz grÃ¡fica alguna, haciendo todo el trabajo pesado de fondo de manera y paralela (Ej. El Demonio cron de reloj, el servidor web Apache httpd, o el controlador dockerd).

---

## CASO 159

Contexto:
El proveedor ISP usa un canal de fibra Ã³ptica Ãºnica para la red metropolitana cruzada. Es fÃ­sicamente inviable lanzar y colocar un hilo separado para cada cliente. Los arquitectos toman los canales independientes de diez edificios diferentes y los mezclan y envÃ­an simultÃ¡neamente empujÃ¡ndolos dentro del mismo hilo Ã³ptico al mismo tiempo separando las transmisiones con distintos colores de luz y frecuencias sin que interfieran entre ellas.

Pregunta:
Â¿QuÃ© concepto pilar en la telecomunicaciÃ³n y teorÃ­a general de Capa 1 de redes computacionales permite interconectar y paralelizar mÃºltiples canales de transmisiÃ³n sobre y a lo largo de un mismo conducto fÃ­sico de hardware?

Opciones:
A) La PaginaciÃ³n y Filtrado CÃ­clico de Antenas y Canales DinÃ¡micos
B) El Subneteo 
C) La ModulaciÃ³n Unicast 
D) La MultiplexaciÃ³n General (Multiplexing)

Respuesta correcta: D

ExplicaciÃ³n:
La MultiplexaciÃ³n (Multiplexing) aglutina docenas de llamadas o flujos de datos independientes, codificÃ¡ndolos y enviÃ¡ndolos asÃ­ncronamente mezclados sobre el mismo canal compartido fÃ­sico (cable o espectro de radio), para luego volverlos a desarmar o demultiplexar en el router de llegada sin que las conversaciones y tramas se crucen o interfieran lÃ³gicamente, multiplicando la capacidad del hardware.

---

## CASO 160

Contexto:
El administrador purista del sistema de ventas SQL no confÃ­a pasivamente en los programadores front-end web para cuidar que el negocio no asigne precios de cero pesos o precios matemÃ¡ticamente negativos a una factura desde la interfaz visual. Para asegurarse a toda costa de que ningÃºn registro falso corrompa las reglas, incrusta a nivel de la estructura de la base central una barrera de cÃ³digo SQL relacional que rechazarÃ¡ cualquier "INSERT" donde la columna del "Monto" sea menor numÃ©ricamente a un peso.

Pregunta:
Â¿QuÃ© mecanismo clÃ¡sico forzoso de modelado de integridad y arquitectura relacional SQL ha forjado directamente en la capa de la base de datos de manera definitiva?

Opciones:
A) Trigger DDL 
B) Secuencia de GeneraciÃ³n CÃ­clica de Disparo
C) Llave ForÃ¡nea y Integradora Mutante CÃ­clica
D) RestricciÃ³n de Integridad de Dominio o VerificaciÃ³n de Limites (CHECK Constraint Estricto)

Respuesta correcta: D

ExplicaciÃ³n:
Las Restricciones "CHECK" (RestricciÃ³n de Dominio) te blindan a nivel de nÃºcleo de base de datos. Al obligar a la columna a seguir una regla condicional (ej. `Monto > 0` o `Estado IN ('Activo', 'Pausado')`), ni siquiera el desarrollador o administrador del sistema con mÃ¡ximos privilegios puede obligar y forzar a la tabla a guardar un estado o valor invÃ¡lido o numÃ©ricamente inaceptable bajo las polÃ­ticas matemÃ¡ticas.
\newpage
# BLOQUE 9
## CASO 161

Contexto:
El administrador de redes requiere elegir un protocolo de enrutamiento interno. Desea que el algoritmo no solo cuente la cantidad de enrutadores, sino que considere estrictamente el ancho de banda del enlace y la velocidad fÃ­sica del cable para formar la ruta Ã³ptima basada en el costo.

Pregunta:
Â¿QuÃ© protocolo dinÃ¡mico de estado de enlace (Link-State) utiliza esta mÃ©trica en la industria?

Opciones:
A) RIP (Routing Information Protocol)
B) BGP (Border Gateway Protocol)
C) OSPF (Open Shortest Path First)
D) EIGRP (Enhanced Interior Gateway Routing Protocol)

Respuesta correcta: C

ExplicaciÃ³n:
El protocolo OSPF es el estÃ¡ndar de redes corporativas. A diferencia de protocolos de Vector Distancia como RIP, OSPF mide el costo matemÃ¡tico del enlace, prefiriendo dar saltos rÃ¡pidos por fibra Ã³ptica en lugar de usar rutas cortas por cables de cobre lentos.

---

## CASO 162

Contexto:
En la arquitectura de un motor de bases de datos, los Ã­ndices se construyen frecuentemente bajo la estructura de un Ãrbol B+. El DBA nota que en consultas de rangos (BETWEEN), el sistema no baja y sube repetidamente por las ramas, sino que localiza el primer valor y navega fluidamente en lÃ­nea recta por el fondo leyendo filas velozmente.

Pregunta:
Â¿QuÃ© diferencia estructural clave del Ãrbol B+ sobre el Ãrbol B clÃ¡sico permite este rendimiento horizontal?

Opciones:
A) Los Nodos raÃ­z almacenan todas las ramas cruzadas.
B) En el Ãrbol B+ los nodos hoja finales (donde residen todos los datos) estÃ¡n vinculados mediante una Lista Enlazada secuencial.
C) El Ãrbol B+ carece de raÃ­ces superiores.
D) Carga en memoria RAM todos los datos en estructuras Heap.

Respuesta correcta: B

ExplicaciÃ³n:
En el Ãrbol B+, todos los datos residen exclusivamente en las hojas finales en el piso inferior del Ã¡rbol, y dichas hojas se conectan entre sÃ­ con punteros formando un carril horizontal. Si buscas un rango, localiza el inicio y se desliza linealmente hacia la derecha leyendo sin volver a subir.

---

## CASO 163

Contexto:
Un programador necesita actualizar el salario del 10% de los empleados en una tabla masiva. En lugar de ejecutar una sola instrucciÃ³n UPDATE, implementa un Cursor en SQL, recorriendo y procesando la tabla manualmente "fila por fila". El servidor sufre una caÃ­da de rendimiento.

Pregunta:
Â¿CuÃ¡l es el gran problema estructural con el uso de Cursores en motores relacionales pesados?

Opciones:
A) Generan Bloqueos de Tabla destruyendo el ACID.
B) Rompen el motor al no estar paginados.
C) Operan mediante un modelo Iterativo rompiendo la filosofÃ­a "Orientada a Conjuntos" (Set-Based) de la base de datos.
D) Generan vistas materializadas ocultas.

Respuesta correcta: C

ExplicaciÃ³n:
SQL es un lenguaje declarativo que opera nativamente sobre Conjuntos (Set-Based). Si usas un Cursor, lo degradas obligÃ¡ndolo a operar como un primitivo bucle secuencial (fila por fila), incurriendo en altos costos por Cambio de Contexto en el procesador y arruinando la velocidad.

---

## CASO 164

Contexto:
El equipo diseÃ±Ã³ la arquitectura front-end donde el CÃ³digo Visual (Interfaz) envÃ­a directamente sus peticiones al CÃ³digo Controlador. Este Controlador contacta al Modelo para obtener datos. Posteriormente, el propio Controlador retorna para indicarle imperativamente a la Interfaz Visual quÃ© grÃ¡ficos debe redibujar, sin que el Modelo participe.

Pregunta:
Â¿Bajo quÃ© patrÃ³n de y capas arquitectÃ³nicas de front-end estÃ¡n laborando?

Opciones:
A) Arquitectura RESTful DinÃ¡mica Central
B) PatrÃ³n MVC ClÃ¡sico (Model-View-Controller)
C) Arquitectura SOA (Service Oriented Architecture)
D) PatrÃ³n Modelo-Vista-Presentador (Model-View-Presenter - MVP)

Respuesta correcta: D

ExplicaciÃ³n:
El patrÃ³n MVP se diferencia del clÃ¡sico MVC en que la Vista y el Modelo estÃ¡n rÃ­gidamente incomunicados. Todo el poder fluye por el Presentador; si el usuario da clic en la Vista, el Presentador atiende, pide al Modelo el dato y es el propio Presentador quien inyecta visualmente la grÃ¡fica a la Vista.

---

## CASO 165

Contexto:
Un ingeniero desarrolla en C#. A una variable se le ingresa el texto literal `"100"` desde un formulario, pero al intentar ejecutar en el cÃ³digo un `if (variable == 100)` para cÃ¡lculos, el compilador arroja un error estructural marcando incompatibilidad.

Pregunta:
Â¿CÃ³mo clasifica la ingenierÃ­a de lenguajes al modelo estructural C# que impide este cruce en el uso de memoria comparativa?

Opciones:
A) Lenguaje DinÃ¡mico Orientado a Objetos 
B) Lenguaje de Tipado Fuerte y Estricto (Strongly Typed Language)
C) Lenguaje Adaptativo de CompilaciÃ³n Temprana
D) Sistema de IntÃ©rprete Lineal

Respuesta correcta: B

ExplicaciÃ³n:
En los lenguajes de Tipado Fuerte (como C# o Java), el compilador es inflexible. Una variable que nace como cadena (String), es puramente de texto para siempre en su contexto, y no permitirÃ¡ ser cruzada frente a un nÃºmero entero sin que medie explÃ­citamente un mÃ©todo conversor previo (Parse o Cast).

---

## CASO 166

Contexto:
En un sistema hospitalario, existe una impresora global centralizada. Si cien computadoras mandan documentos al mismo tiempo, el sistema guarda los trabajos completos en el disco de manera inmediata simulando una impresiÃ³n instantÃ¡nea para liberar las pantallas, para luego pasarlos uno a uno a la impresora electromecÃ¡nica en el orden correcto.

Pregunta:
Â¿CÃ³mo se denomina histÃ³ricamente a esta tÃ©cnica de simulaciÃ³n con memoria intermedia en disco para desahogar la concurrencia rÃ¡pida?

Opciones:
A) PaginaciÃ³n Lineal en ClÃºster (Paging Spool)
B) Interbloqueo de Procesador (Deadlock Spooling)
C) TÃ©cnica de SPOOLING (Simultaneous Peripheral Operations On-Line)
D) MultiplexaciÃ³n en Archivos FAT CÃ­clicos

Respuesta correcta: C

ExplicaciÃ³n:
SPOOL (Operaciones en lÃ­nea de perifÃ©ricos simultÃ¡neos) intercepta y guarda el documento digital velozmente en una zona del disco (Cola de ImpresiÃ³n), devolviendo de inmediato el control y poder del cursor a la computadora, y dejando que un proceso daemon secundario lidie con el hardware real.

---

## CASO 167

Contexto:
El gerente corporativo busca deshacerse de docenas de enrutadores de marcas diferentes que requieren programarse en la consola uno por uno. Implementa un esquema donde todos los enrutadores fÃ­sicos actÃºan como interruptores de cables, recibiendo estrictamente sus rutas y polÃ­ticas de red a larga distancia desde una aplicaciÃ³n de inteligencia y cerebro de software en un panel controlador maestro.

Pregunta:
Bajo este concepto arquitectÃ³nico en donde el plano de control se separa por completo del hardware fÃ­sico local, Â¿quÃ© tecnologÃ­a de redes estÃ¡n inyectando en la empresa?

Opciones:
A) Redes Privadas Virtuales VPN DinÃ¡micas
B) VLANs Segmentadas HÃ­bridas FÃ­sicamente
C) Redes Definidas por Software (Software Defined Networking - SDN)
D) BGP OSPF DinÃ¡mico AutÃ³nomo

Respuesta correcta: C

ExplicaciÃ³n:
Las Redes Definidas por Software (SDN) revolucionaron el mundo corporativo separando al "Plano de Control" (El Cerebro) del "Plano de Datos" (Los cables y Switches locales fÃ­sicos). Permite orquestar remota y mÃ¡gicamente toda la topologÃ­a del edificio usando reglas, software avanzado virtual y APIs.

---

## CASO 168

Contexto:
Un arquitecto de plataformas bancarias debe asegurar la coherencia completa mundial al actualizar fondos. Exige que un servidor principal en MÃ©xico contacte a un servidor secundario en EspaÃ±a antes del cargo, ambos bloqueen y confirmen las disponibilidades, y Ãºnicamente si ambas partes asienten su voto por red confirmando estar listos, procedan al unÃ­sono a ejecutar de verdad la alteraciÃ³n de los datos.

Pregunta:
Â¿QuÃ© protocolo clÃ¡sico computacional y mecanismo distribuido para confirmaciÃ³n en clÃºster mundial estÃ¡ instaurando para garantizar transaccionalidad de bases mÃºltiples?

Opciones:
A) Escalabilidad Fragmentaria Vertical
B) Algoritmo de AprobaciÃ³n Token-Ring
C) Consenso MÃºltiple 
D) Protocolo de ConfirmaciÃ³n de Dos Fases (Two-Phase Commit Protocol / 2PC)

Respuesta correcta: D

ExplicaciÃ³n:
El Commit en Dos Fases (2PC) es la garantÃ­a extrema en bases de datos distribuidas. Como no puedes asegurar que el servidor remoto no se apague, la Fase 1 obliga y pregunta: "Â¿EstÃ¡n listos?". Si todos envÃ­an un "SÃ­", se procede a la Fase 2 del "Commit General". Si uno solo falla, se aborta protegiendo la base.

---

## CASO 169

Contexto:
En la optimizaciÃ³n de cÃ³digo, un desarrollador detecta que su software cuenta el nÃºmero de elementos de un arreglo de 1 millÃ³n de clientes iterando linealmente registro por registro. Decide refactorizar usando la funciÃ³n `.length` de Java. El compilador entrega la longitud total requerida matemÃ¡ticamente saltÃ¡ndose la iteraciÃ³n al leer instantÃ¡neamente un metadato preestablecido internamente.

Pregunta:
TÃ©cnicamente usando el formalismo y NotaciÃ³n de Ciencias de la ComputaciÃ³n, Â¿a quÃ© nivel de complejidad superior y matemÃ¡tica se elevÃ³ esta simple consulta?

Opciones:
A) Complejidad Optimizada Lineal: O(n)
B) Complejidad LogarÃ­tmica: O(log n)
C) Complejidad CuadrÃ¡tica: O(n^2)
D) Complejidad Inmediata: O(1)

Respuesta correcta: D

ExplicaciÃ³n:
La notaciÃ³n O(1) ("O ") significa que la acciÃ³n del procesador tomarÃ¡ matemÃ¡ticamente siempre exactamente el mismo tiempo de procesamiento inamovible e inmediato, sin importar si la lista tiene un elemento o un millÃ³n. Consultar un metadato como `.length` toma tiempo inmediato.

---

## CASO 170

Contexto:
Durante un proyecto Ã¡gil, siete desarrolladores asisten por la maÃ±ana a una reuniÃ³n de quince minutos parados en cÃ­rculo. Al iniciar el evento, un ingeniero despliega un archivo Excel y empieza a dar quejas, explicaciones, y reportes tÃ©cnicos visuales de un problema profundo que requiere resolver.

Pregunta:
Bajo la filosofÃ­a y el marco inquebrantable internacional de Scrum, Â¿quÃ© pilar clave procedimental rompiÃ³ el programador durante su junta matutina?

Opciones:
A) RompiÃ³ el Sprint Backlog de refinamiento.
B) RompiÃ³ formalmente la regla del "Daily Stand-up" o "Daily Scrum", cuyo objetivo es sincronizaciÃ³n relÃ¡mpago de quince minutos (Timebox) para reportar "QuÃ© hice, QuÃ© harÃ© y QuÃ© me detiene", no para debatir ni resolver problemas profundos.
C) AlterÃ³ el cÃ³digo de IntegraciÃ³n Ãgil.
D) ViolÃ³ pasivamente el "Sprint Review" general de cierre.

Respuesta correcta: B

ExplicaciÃ³n:
El Daily Stand-up o Daily Scrum es para sincronizaciÃ³n de equipo y alerta de estatus. Todo problema tÃ©cnico profundo que asome debe registrarse y solucionarse estrictamente terminando los quince minutos en una junta privada ("Offline / Estacionamiento"), garantizando no secuestrar el valioso tiempo de todos los programadores.

---

## CASO 171

Contexto:
Un Arquitecto de Software programa y diseÃ±a el Sistema de Impresoras. Crea la clase `Impresora` con el mÃ©todo operativo `imprimirDatos()`. Posteriormente, crea la clase `Escaner` con otro mÃ©todo diferente pero llamado con el mismo tÃ­tulo exacto `imprimirDatos()`. Luego el becario programa la clase `ImpresoraMultifuncional` intentando hacerla heredar simultÃ¡neamente de ambas clases madre, causando que el compilador enloquezca.

Pregunta:
Â¿CÃ³mo se conoce a la anomalÃ­a y conflicto arquitectÃ³nico general matemÃ¡tico que causÃ³ el bloqueo mundial nativo que prohibiÃ³ la Herencia MÃºltiple estricta de clases en Java y en C# moderno?

Opciones:
A) El Problema del Doble Bucle 
B) El Colapso de Encapsulamiento de Red
C) El Problema del Diamante (Diamond Problem)
D) La AnomalÃ­a de ReubicaciÃ³n de Metadatos

Respuesta correcta: C

ExplicaciÃ³n:
El Problema del Diamante es la gran tragedia teÃ³rica que nace de la Herencia MÃºltiple directa. Si una clase hÃ­brida hereda de dos padres y ambos padres programaron y comparten el mismo nombre de funciÃ³n, cuando ejecutes el comando final sobre la clase hÃ­brida ni el procesador ni la mÃ¡quina virtual tendrÃ¡n manera de saber cuÃ¡l de los dos cÃ³digos paternos tiene prioridad local, generando un error insalvable.

---

## CASO 172

Contexto:
En un sistema central computacional, la memoria RAM estÃ¡ prÃ¡cticamente ahogada de carga. Para mantener abiertos y vivos cuarenta programas, el Sistema Operativo usa todo el tiempo real computacional dedicÃ¡ndose Ãºnicamente a mover las "PÃ¡ginas de memoria virtual" desde la RAM hacia el Disco Duro (archivo Swap), y viceversa retornando otras, colapsando y deteniendo el avance real del procesamiento Ãºtil.

Pregunta:
Â¿QuÃ© nombre tÃ©cnico recibe esta crisis de sobre-paginaciÃ³n extrema de saturaciÃ³n y cÃ­rculo trÃ¡gico inÃºtil de procesamiento?

Opciones:
A) PaginaciÃ³n Secuencial CÃ­clica
B) CondiciÃ³n Paralela de Carrera
C) Thrashing (HiperpaginaciÃ³n o sobrecarga cÃ­clica del Swap de memoria)
D) InaniciÃ³n y SegmentaciÃ³n Fija

Respuesta correcta: C

ExplicaciÃ³n:
El Thrashing (HiperpaginaciÃ³n) sucede inevitablemente en entornos informÃ¡ticos asfixiados cuando la CPU estÃ¡ cien por ciento ocupada, pero no hace nada de trabajo Ãºtil, porque el Kernel del Sistema Operativo invierte todos sus ciclos valiosos en "salvar y mover" datos temporalmente de la memoria fÃ­sica agotada al disco mecÃ¡nico (Swap).

---

## CASO 173

Contexto:
Dentro del campus universitario con tres mil computadoras, el director desea conectar inteligentemente el trÃ¡fico de routers internos para que negocien tablas cruzadas y decidan velozmente enrutar el trÃ¡fico por caminos seguros internamente. Para esto instaura protocolos para organizar la red de forma interior, sin notificar ni enrutar tablas hacia los proveedores de internet mundiales externos.

Pregunta:
Bajo la normativa de divisiÃ³n purista de enrutamiento TCP/IP, Â¿quÃ© categorÃ­a general y denominaciÃ³n estructural tÃ©cnica reciben estos protocolos de comunicaciÃ³n topolÃ³gica intra-red?

Opciones:
A) Protocolos de Enrutamiento MAC Fijo
B) Protocolos BGP Excluyentes Mundiales
C) Exterior Gateway Protocols (EGP)
D) Interior Gateway Protocols de Ruteo (IGP - Protocolos de Puerta de Enlace Interior)

Respuesta correcta: D

ExplicaciÃ³n:
Las Redes y Ciencias de las Telecomunicaciones se segmentan en dos dominios centrales. Los Protocolos Interiores de Puerta de Enlace (IGP - como RIP, OSPF, EIGRP) rigen y viven Ãºnicamente para orquestar el trÃ¡fico contenido estrictamente dentro del mismo Sistema AutÃ³nomo corporativo y de la red local base. Lo opuesto son los EGP (Exterior Gateway como BGP), que orquestan las rutas que conectan continentes y proveedores ISPs a nivel de Internet global.

---

## CASO 174

Contexto:
Al crear la tabla de asignaciÃ³n de "Guardias Especiales", el desarrollador usa la llave principal compuesta: `ID_Empleado` y `Fecha_Turno`. El diseÃ±o obedece las reglas de la 3FN. Aun asÃ­, la tabla muestra redundancia cruzada anÃ³mala porque existe una superposiciÃ³n entre "Rol_Hospital" y "Area_Trabajo". Se exige aplicar una etapa extra avanzada especial para sanar estas llaves superpuestas en la tabla.

Pregunta:
Â¿CuÃ¡l forma rigurosa de normalizaciÃ³n superior en matemÃ¡ticas relacionales es la que rige formalmente la resoluciÃ³n central y erradicaciÃ³n de superposiciÃ³n cruzada entre mÃºltiples "Llaves Candidatas" de control?

Opciones:
A) La Primera Forma Normal ClÃ¡sica Multivaluada
B) La Cuarta Forma Normal Cruzada 
C) La Forma Normal de Boyce-Codd (BCNF)
D) La Quinta Forma Normal Simple

Respuesta correcta: C

ExplicaciÃ³n:
La Forma Normal de Boyce-Codd (BCNF) es una versiÃ³n mÃ¡s poderosa, paranoica y estricta de la tradicional Tercera Forma Normal. Interviene en la alta arquitectura cuando la tabla matemÃ¡tica posee dos o mÃ¡s columnas que estÃ¡n superpuestas y ambas tienen capacidad estricta e independiente de funcionar como "Llaves Candidatas o Determinantes ".

---

## CASO 175

Contexto:
En la programaciÃ³n de optimizaciÃ³n de rutas, un ingeniero utiliza un algoritmo matemÃ¡tico para detectar rutas de costo en grafos cruzados. Necesita una alternativa robusta para evitar que las variables con costo o de peso de distancia "negativa" rompan el cÃ¡lculo de manera perjudicial como sucede nativamente si usa tradicionalmente el algoritmo de Dijkstra.

Pregunta:
Bajo este escenario de peso numÃ©rico matemÃ¡tico destructivo de mÃ©tricas negativas de aristas, Â¿quÃ© algoritmo es la soluciÃ³n inquebrantable de grafos de ruteo para encontrar distancias mÃ­nimas sin fallar?

Opciones:
A) Algoritmo de Flujo DinÃ¡mico MatemÃ¡tico DFS
B) El Algoritmo A* Estrella
C) El Algoritmo DinÃ¡mico de Kruskal
D) El Algoritmo MatemÃ¡tico de Ruteo de Bellman-Ford

Respuesta correcta: D

ExplicaciÃ³n:
El algoritmo clÃ¡sico del holandÃ©s Dijkstra estÃ¡ ante las distancias con peso negativo, provocando y generando bucles o mal-informaciÃ³n y subestimando costos de manera letal. El algoritmo matemÃ¡tico de Bellman-Ford no solo soporta a los grafos repletos de "Aristas de Costo Negativo", sino que ademÃ¡s detecta como alerta de radar si existe oculto un ciclo negativo y bucle atascado infinito en la red relacional.

---

## CASO 176

Contexto:
El equipo comercial decide migrar de la metodologÃ­a estructural de Cascada (Waterfall), donde el proyecto tardaba lÃ³gicamente doce meses en analizarse, probarse e implementarse ciegamente hasta la entrega final, hacia un marco de Desarrollo Ãgil (Scrum).

Pregunta:
En tÃ©rminos empresariales, de control y de ingenierÃ­a moderna, Â¿quÃ© beneficio absoluto e insuperable aporta al cliente pasarse a una metodologÃ­a "Ãgil" por encima del dinosaurio secuencial clÃ¡sico "Waterfall"?

Opciones:
A) Que Ãgil carece ciegamente de arquitectura y documentaciÃ³n tÃ©cnica, abaratando el software.
B) Garantiza el Ã©xito estructural de cÃ³digo y sin bugs ni colisiones.
C) El beneficio supremo de las "Entregas Iterativas e Incrementales", las cuales aportan valor de producto utilizable por el cliente en ciclos cortos (Sprints), permitiÃ©ndole cambiar de opiniÃ³n o moldear su direcciÃ³n rÃ¡pidamente.
D) El ahorro total de programadores al no necesitar servidores paralelos de Testing.

Respuesta correcta: C

ExplicaciÃ³n:
La Cascada es infalible si construyes un edificio donde cambiar planos al mes 9 significa un suicidio financiero. Pero para el entorno corporativo de software, el ciclo "Ãgil" es superior al dividir al proyecto masivo en "Incrementos Iterativos Semanales". Esto le da vida al software desde el mes nÃºmero uno permitiendo corregir el rumbo o abortar temprano asegurando el Retorno de InversiÃ³n.

---

## CASO 177

Contexto:
El lenguaje Java no tolera la "MÃºltiple Herencia de Clases", imposibilitando crear estructuras hÃ­bridas derivadas de dos Ã¡rboles diferentes. En lugar de esto, si la clase debe amoldarse implÃ­citamente a un conjunto de promesas de comportamiento de distintos departamentos, implementa cascarones de acciÃ³n sin mÃ©todos construidos internos, firmando contratos arquitectÃ³nicos.

Pregunta:
Bajo la POO y programaciÃ³n de diseÃ±o limpio, Â¿cÃ³mo se les llama universalmente a estos "contratos de comportamiento" que exigen al programador implementar ciertos mÃ©todos pero carecen de cÃ³digo funcional interior?

Opciones:
A) Clases Abstractas de Alto Acoplamiento
B) Instancias DinÃ¡micas Generales
C) MÃ©todos Sellados de ClÃºster
D) Interfaces (Interfaces de POO / Interfaces de comportamiento)

Respuesta correcta: D

ExplicaciÃ³n:
Las *Interfaces* no tienen cÃ³digo ni vida propia abstracta; son una especie de tratado obligatorio. Si tÃº y tu clase firma la interfaz de contrato "ICalculable", automÃ¡ticamente el compilador te obligarÃ¡ forzosamente a programar lÃ³gicamente y dotar de vida a un mÃ©todo interno llamado "Calcular()", promoviendo flexibilidad sin padecer el problema de la herencia mÃºltiple en cÃ³digo.

---

## CASO 178

Contexto:
Una unidad USB ha sido formateada con ClÃºsteres o Sectores en el disco duro del tamaÃ±o colosal de 64 Kilobytes. Un desarrollador almacena un texto diminuto de solo 2 Kilobytes en un archivo. El Sistema Operativo lo asienta en un sector de 64KB, pero sella y prohÃ­be formalmente que se pueda encadenar o guardar cualquier otra cosa distinta en el espacio fÃ­sico libre de ese mismo sector que sobrÃ³.

Pregunta:
Â¿QuÃ© anomalÃ­a matemÃ¡tica de fragmentaciÃ³n y desperdicio espacial de arquitectura computacional estÃ¡ ocurriendo masivamente bajo esta ciencia de discos?

Opciones:
A) FragmentaciÃ³n Externa Central
B) Desperdicio Abstracto de Pila Secuencial
C) FragmentaciÃ³n Externa
D) FragmentaciÃ³n Interna (Internal Fragmentation de Memoria y Sectores)

Respuesta correcta: D

ExplicaciÃ³n:
La FragmentaciÃ³n Interna de Sectores es una calamidad en unidades de almacenamiento. Si el sistema divide la cuadrÃ­cula en cajas fijas inalterables (ej. de 64 KB), y tÃº guardas una carta de texto que solo pesa 2 KB, al meterlo al cajÃ³n, el cajÃ³n completo se "cierra"; desperdiciando inÃºtilmente y bloqueando brutalmente en vacÃ­o computacional los 62 KB de espacio sobrante del clÃºster fÃ­sico.

---

## CASO 179

Contexto:
Un empleado del Ã¡rea legal necesita trabajar remotamente usando internet en una cafeterÃ­a insegura conectÃ¡ndose lÃ³gicamente a la red de su corporativo. Su objetivo es operar como si estuviera sentado fÃ­sicamente dentro de las oficinas y acceder a la intranet interna de forma cifrada, sin que los hackers logren interceptar las contraseÃ±as que teclea.

Pregunta:
Â¿QuÃ© tecnologÃ­a de seguridad criptogrÃ¡fica de red y encapsulamiento deben proporcionarle para blindar sus comunicaciones?

Opciones:
A) TraducciÃ³n de Direcciones (NAT) CÃ­clica
B) La Apertura Asignada de Puertos TCP/IP 
C) Protocolos de Red Privada Virtual y Tunelado Encapsulado (VPN y Protocolo IPsec en tÃºnel matemÃ¡tico)
D) DirecciÃ³n Aleatoria MAC en Capa 2

Respuesta correcta: C

ExplicaciÃ³n:
Las Redes VPN corporativas (Virtual Private Networks) son el cimiento de seguridad de tÃºnel seguro "extremo a extremo". Toman la informaciÃ³n del empleado remoto, la envuelven lÃ³gicamente y de forma cifrada como una caja fuerte, y la empujan por el internet hostil usando protocolos como IPSec hasta ser recibida segura formalmente dentro del fuerte del enrutador de la empresa.

---

## CASO 180

Contexto:
El servidor central relacional MySQL de ventas colapsa los fines de semana. En lugar de aumentar su RAM ciegamente, los arquitectos separan fÃ­sicamente la base: designan una base paralela de hardware para realizar las rÃ¡pidas inserciones de los clientes simultÃ¡neas (ESCRITURA / Writes) y crean otra base espejo separada dedicada y afinada para entregar los pesados reportes estadÃ­sticos del gerente (LECTURA / Reads).

Pregunta:
Â¿QuÃ© Arquitectura y Estrategia Central de segregaciÃ³n de desarrollo se aplicÃ³?

Opciones:
A) FragmentaciÃ³n Horizontal (Sharding)
B) Arquitectura Distribuida de Microservicios Base
C) SegregaciÃ³n de ClÃºster Paralelo Multi-Master
D) Arquitectura y PatrÃ³n CQRS (Command Query Responsibility Segregation)

Respuesta correcta: D

ExplicaciÃ³n:
CQRS (SegregaciÃ³n de Responsabilidad de Comandos y Consultas) separa el cerebro lÃ³gicamente de un motor de bases de datos central. Es ineficiente pedirle de manera simultÃ¡nea al motor que guarde millones de boletos de Black Friday (Comandos / Writes veloces) y a la vez pedirle en paralelo que te devuelva el reporte financiero masivo de fin de aÃ±o (Queries / Reads pesados). Se crean y mantienen dos bases sincronizadas separadas, optimizadas arquitectÃ³nicamente para su respectivo objetivo.
\newpage
# BLOQUE 10
## CASO 181

Contexto:
Un hospital debe diseÃ±ar su arquitectura de red considerando que doctores utilizan tabletas mÃ³viles conectadas al WiFi de forma general. El equipo de seguridad tecnolÃ³gica descarta las tradicionales VLAN y dicta una regla estricta: "Aunque el dispositivo sea corporativo y estÃ© conectado a nuestro WiFi interno de gerencia, no asumiremos jamÃ¡s que es seguro ni de confianza por omisiÃ³n. Cada intento de acceso a los sistemas deberÃ¡ revalidarse con factor doble y escaneo de integridad en el software, salto por salto".

Pregunta:
Â¿QuÃ© modelo conceptual riguroso y actual de arquitectura en Ciberseguridad ha ordenado y priorizado el equipo en todo el espectro fÃ­sico?

Opciones:
A) El Protocolo Perimetral Firewall ClÃ¡sico (VPN Stateful)
B) El Filtro IPS de DetecciÃ³n en Base Fija
C) Arquitectura de Red de Confianza Cero (Zero Trust Network Access - ZTNA)
D) ImplementaciÃ³n de Zona Desmilitarizada DinÃ¡mica (DMZ Completa)

Respuesta correcta: C

ExplicaciÃ³n:
Zero Trust asume una filosofÃ­a absoluta: "Nunca confÃ­es, siempre verifica". El diseÃ±o de red clÃ¡sico perimetral estipulaba que una vez dentro del muro fÃ­sico del corporativo (conectado al switch interno), eras "de confianza". Zero Trust destruye esto; exige verificaciÃ³n minuciosa del dispositivo, ubicaciÃ³n y credenciales de usuario en cada salto hacia cada servidor individual, impidiendo movimientos de intrusiÃ³n laterales si la tableta sufre un hackeo remoto.

---

## CASO 182

Contexto:
Un ingeniero compite analizando algoritmos de bÃºsqueda exhaustiva. Mientras que la NotaciÃ³n "Big O" (O grande) le indica a la directiva quÃ© tan pÃ©simo serÃ¡ el rendimiento algorÃ­tmico frente a un volumen inmenso en el "peor caso posible" matemÃ¡tico, a Ã©l tambiÃ©n le solicitan calcular el comportamiento opuesto para entender lo que sucederÃ¡ en el "mejor caso ideal de tiempo" para poder catalogarlo tÃ©cnicamente.

Pregunta:
Â¿QuÃ© notaciÃ³n y cientÃ­fica de anÃ¡lisis de algoritmos dictamina el "LÃ­mite Inferior o Mejor Caso Posible" de eficiencia matemÃ¡tica?

Opciones:
A) La NotaciÃ³n Omega (Î©) 
B) La NotaciÃ³n Delta (Î ) 
C) La NotaciÃ³n Theta (ÎÜ) estricta
D) La NotaciÃ³n Gamma (Î ) abstracta

Respuesta correcta: A

ExplicaciÃ³n:
En ciencias de la computaciÃ³n y anÃ¡lisis asintÃ³tico general, la *NotaciÃ³n O Grande (Big O)* describe el lÃ­mite superior o el peor de los desastres en el procesamiento (Si buscas a una persona en una guÃ­a telefÃ³nica, el peor caso es O(n) si es la Ãºltima). La *NotaciÃ³n Omega (Î©)* dicta el lÃ­mite inferior garantizando matemÃ¡ticamente el tiempo en el "Mejor de los Casos Ideales" (Si es la primera persona de la guÃ­a, Omega es Î©(1)). La *NotaciÃ³n Theta (ÎÜ)* representa el comportamiento central, promedio y ajustado.

---

## CASO 183

Contexto:
Una empresa analiza perfiles y detecta redes inmensas de "Amigos de los amigos que comparten intereses". Procesar esto en la base de datos MySQL tradicional usando `JOIN` paralelos entre cuatro tablas resulta insosteniblemente lento, generando tablas recursivas gigantes. Deciden migrar a una arquitectura donde las entidades (Personas) y las relaciones con direcciÃ³n (A es amigo de B) son tratadas como elementos primarios indexables de la base de datos de manera autÃ³noma.

Pregunta:
Â¿A quÃ© modelo especÃ­fico de base de la nube moderna no relacional se orienta esta soluciÃ³n abstracta?

Opciones:
A) Base de Datos NoSQL tipo Documental en JSON ClÃ¡sica
B) Base de Datos Orientada a Grafos (Graph Database como Neo4j)
C) Base de Datos Columnar DinÃ¡mica 
D) Modelo Vectorial de Inteligencia Fija

Respuesta correcta: B

ExplicaciÃ³n:
Las Bases de Datos de Grafos (como Neo4j) estÃ¡n matemÃ¡ticamente estructuradas usando vÃ©rtices (Nodos de informaciÃ³n) y aristas (Relaciones vinculantes) para navegar instantÃ¡neamente por redes inmensas de datos sociales, asÃ­ como operar en detecciÃ³n veloz de fraudes financieros abstractos. Hacen en milisegundos de rutas lo que un motor relacional tardarÃ­a horas cruzando tablas mediante uniones (`JOINs`) mÃºltiples.

---

## CASO 184

Contexto:
Los ingenieros del equipo QA de un corporativo ejecutan 1,000 pruebas unitarias en cÃ³digo reportando "100% de Cobertura de CÃ³digo". Para estar seguros de que los programadores no engaÃ±aron la prueba (escribiendo asserts que siempre dan Ã©xito sin revisar de verdad la matemÃ¡tica interna del bloque), instalan una herramienta especializada. Esta altera automÃ¡ticamente y rompe adrede condicionales del cÃ³digo fuente (ej. cambiando temporalmente un signo `<` por un `>`), vigilando si la suite de pruebas falla y detecta la anomalÃ­a introducida intencionalmente.

Pregunta:
Â¿QuÃ© mÃ©todo infalible de pruebas avanzadas estÃ¡n empleando para auditar sus casos de pruebas ?

Opciones:
A) Prueba de Caja Gris
B) Pruebas Extremas CÃ­clicas Modulares de IntegraciÃ³n
C) Fuzzing Testing DinÃ¡mico
D) Pruebas de MutaciÃ³n Estricta y Funcional (Mutation Testing)

Respuesta correcta: D

ExplicaciÃ³n:
El Testing de MutaciÃ³n (Mutation Testing) es el auditor absoluto de las Pruebas Unitarias. Si la herramienta general inyecta un "Mutante" y corrompe un operador sumatorio del software adrede, el sistema espera confiado que los Unit Tests caigan en fallo y marquen rojo detectando la anomalÃ­a tÃ©cnica. Si la prueba falsa Unit Test pasa en Verde a pesar del "DaÃ±o mutante", significa formalmente que el desarrollador escribiÃ³ cÃ³digo de pruebas inÃºtil y frÃ¡gil que no audita ni blinda ninguna del cÃ³digo principal real.

---

## CASO 185

Contexto:
Un juego de estrategia en Java cuenta con el objeto central "Soldado". Este objeto debe calcular matemÃ¡ticamente el daÃ±o de sus diferentes ataques segÃºn lo que porte. En lugar de codificar todos los cÃ¡lculos con un enorme `switch/case` inmodificable dentro de la clase Soldado general para resolver "Si dispara Escopeta", "Si usa Espada", el desarrollador extrae esos algoritmos de daÃ±o de armas en clases matemÃ¡ticas separadas y los inyecta dinÃ¡micamente como diferentes comportamientos abstractos (Instancias intercambiables de daÃ±o).

Pregunta:
Â¿QuÃ© patrÃ³n dinÃ¡mico de diseÃ±o de la POO implementÃ³ para encapsular y delegar matemÃ¡ticamente a estas familias de algoritmos y cÃ¡lculos de armas de forma modular?

Opciones:
A) PatrÃ³n Observador 
B) PatrÃ³n Adaptador de Componentes Abstractos
C) PatrÃ³n Constructor CÃ­clico 
D) PatrÃ³n Estrategia DinÃ¡mico (Strategy Pattern o PatrÃ³n Strategy)

Respuesta correcta: D

ExplicaciÃ³n:
El PatrÃ³n Estrategia (Strategy Pattern) de comportamiento arquitectÃ³nico permite declarar y agrupar familias de algoritmos independientes matemÃ¡ticos encapsulÃ¡ndolos separadamente de la clase principal original, haciendo fÃ¡cil su intercambio al vuelo en plena ejecuciÃ³n del programa. En vez de rellenar asimÃ©tricamente a la clase "Soldado" con condicionales fijos puramente atados y complejos, el Soldado delega su funciÃ³n delegando y usando un objeto independiente (La Estrategia de ataque), lo que acata impecablemente el principio abierto/cerrado de SOLID.

---

## CASO 186

Contexto:
En un sistema central multi-hilos, ocurre un congelamiento del sistema. Dos transacciones chocan eternamente. Tras analizar los registros de software concurrente, descubres la materializaciÃ³n forzosa de las cuatro reglas que deben cumplirse forzosamente en simultÃ¡neo en un equipo para que el estancamiento de hilos concurrente y cruce catastrÃ³fico suceda inquebrantablemente (CondiciÃ³n de ExclusiÃ³n mutua, Espera y RetenciÃ³n matemÃ¡tica, Espera circular y No apropiaciÃ³n o interrupciÃ³n del recurso).

Pregunta:
Â¿CÃ³mo se denominan estas cuatro exigencias acadÃ©micas de ciencias y sistemas operativos que marcan la ocurrencia del Bloqueo Mutuo general (Deadlock)?

Opciones:
A) Condiciones Mutantes Fijas de Turing Computacionales
B) Ecuaciones DinÃ¡micas de Interbloqueo de Von Neumann
C) Condiciones ClÃ¡sicas de Deadlock y ExclusiÃ³n de Coffman (Coffman Conditions)
D) Reglas ArquitectÃ³nicas de Concurrencia de Dijkstra y Moore 

Respuesta correcta: C

ExplicaciÃ³n:
Las Condiciones ClÃ¡sicas Formidables de Coffman establecen en ingenierÃ­a que, para que un bloqueo mutuo central (Deadlock de Hilos Concurrentes) se materialice trÃ¡gicamente en procesador y RAM, deben presentarse de manera estricta y conjunta las 4 en la mÃ¡quina: 1) ExclusiÃ³n Mutua estricta, 2) RetenciÃ³n de recurso base y Espera, 3) Ausencia total de ExpulsiÃ³n o interrupciÃ³n del proceso por el Kernel, y 4) Circuito cerrado y cÃ­clico llamado Espera Circular matemÃ¡tica.

---

## CASO 187

Contexto:
Cuando un celular y tableta se conecta a la nueva red de WiFi de la cafeterÃ­a, envÃ­a un grito y ruego de red abierta (Broadcast) para que le arrienden una identidad. El servicio de red servidor le devuelve un contrato de renta, le ofrece formalmente una direcciÃ³n IPv4 local y, finalmente, termina asignÃ¡ndole de manera oficial y central el enrutamiento de puerta de enlace.

Pregunta:
Bajo la nomenclatura y arquitectura teÃ³rica de redes clÃ¡sicas, Â¿quÃ© acrÃ³nimo mundial inamovible de cuatro letras modela y resume el ciclo de viaje de asignaciÃ³n de un servidor DHCP para IPs dinÃ¡micas locales?

Opciones:
A) Protocolo de Identidad de DHCP Handshake
B) Secuencia INIT y ACK Central
C) Algoritmo ArquitectÃ³nico DORA (Discover, Offer, Request, Acknowledge)
D) El Acuerdo TCP de Triple Enlace 3-Way Handshake DinÃ¡mico

Respuesta correcta: C

ExplicaciÃ³n:
El ciclo universal de la asignaciÃ³n por servidores DHCP se modela mundialmente a travÃ©s del proceso paralelo y de la palabra acrÃ³nimo "DORA". Empieza formalmente con **Discover** (Buscando un servidor a gritos DHCP en capa 2 o broadcast), **Offer** (El servidor asoma en red local y ofrece formalmente un contrato), **Request** (El usuario cliente acepta y envÃ­a la solicitud pidiendo fijar estÃ¡ticamente esa direcciÃ³n ofrecida), y termina lÃ³gicamente con **Acknowledge** (ConfirmaciÃ³n absoluta y asienta registro del ruteador entregando los DNS y mÃ¡scara a la estaciÃ³n).

---

## CASO 188

Contexto:
En el backend bancario, el DBA debe decidir si para ejecutar cÃ¡lculos matemÃ¡ticos de usuarios va a escribir y compilar un "Procedimiento Almacenado de Base de Datos (Stored Procedure)" o si debe construir una pequeÃ±a "FunciÃ³n Escalar (User Defined Function)". Necesita devolver un solo nÃºmero que pueda invocar repetidamente incrustado dentro de instrucciones rÃ¡pidas y dinÃ¡micas de `SELECT` masivas.

Pregunta:
Â¿QuÃ© diferencia y restricciÃ³n arquitectÃ³nica tÃ©cnica puramente de SQL inclina obligatoriamente la decisiÃ³n para usar una FunciÃ³n Escalar en vez del Procedimiento Almacenado general en la consulta matemÃ¡tica?

Opciones:
A) El Procedimiento almacenado central es el Ãºnico que genera un plan de ejecuciÃ³n.
B) La FunciÃ³n Escalar puede ejecutarse e integrarse ciegamente dentro del flujo normal de una peticiÃ³n `SELECT / WHERE` devolviendo resultados en lÃ­nea; mientras que un Procedimiento Almacenado rechaza lÃ³gicamente integrarse de retorno y exige ejecuciÃ³n exclusiva e independiente.
C) Los Procedimientos Almacenados no permiten inyectar e ingerir parÃ¡metros dinÃ¡micos.
D) La FunciÃ³n Escalar central inserta transacciones destructivas en cascada alterando las restricciones.

Respuesta correcta: B

ExplicaciÃ³n:
Las Funciones Escalares SQL estÃ¡n destinadas a funcionar para devolver e inyectar un valor (Ej. Calcular Promedio y devolver un tipo entero). Al estar prohibidas formalmente de daÃ±ar o efectuar "UPDATE/INSERT/DELETE" (y al no tener derecho de invocar un Commit matemÃ¡tico), el motor de base de datos las permite ejecutar y transitar amigablemente "dentro" y a la par de las sentencias SELECT comunes. Un Procedimiento Almacenado en SQL estÃ¡ diseÃ±ado para alterar el estado matemÃ¡tico y tablas del disco, no para devolver lÃ³gicamente valores embebidos.

---

## CASO 189

Contexto:
Al programar de cero la clÃ¡sica secuencia recursiva de cÃ¡lculo de "Fibonacci", un desarrollador emplea recursividad (La funciÃ³n matemÃ¡tica se llama a sÃ­ misma constantemente en el cÃ³digo base). Al pasarle un nÃºmero tan pequeÃ±o como el 50, la mÃ¡quina se colapsa brutalmente, debido a que el Ã¡rbol y los hilos duplican exponencialmente llamadas que procesan ramas operativas que ya habÃ­an sido calculadas cien pasos antes temporalmente.

Pregunta:
Bajo la materia avanzada de diseÃ±o de optimizaciÃ³n y ciencias de la computaciÃ³n, Â¿quÃ© tÃ©cnica debe aplicar y aÃ±adir a la funciÃ³n para almacenar matemÃ¡ticamente las respuestas viejas en un diccionario de cachÃ© local en el programa y asÃ­ evadir el tener que repetir los cÃ¡lculos ?

Opciones:
A) AbstracciÃ³n AlgorÃ­tmica Paralela 
B) InversiÃ³n MatemÃ¡tica y SegmentaciÃ³n Paralela Estricta 
C) La TÃ©cnica Base de MemoizaciÃ³n MatemÃ¡tica (Memoization Central y ProgramaciÃ³n DinÃ¡mica Aplicada) -> Simplificado: (Memoization / MemoizaciÃ³n Computacional)
D) PatrÃ³n de DiseÃ±o Flyweight Abstracto y 

Respuesta correcta: C

ExplicaciÃ³n:
La "MemoizaciÃ³n" o Memoization es el pilar sagrado central que convierte y dota a los algoritmos destructivos y recursivos en reyes de la optimizaciÃ³n y ProgramaciÃ³n DinÃ¡mica computacional. Implica atrapar o interceptar las rutinas. Si la operaciÃ³n matemÃ¡tica del procesador te exige formalmente y te fuerza a re-calcular "Fibonacci de 10" otra vez como rama, tu algoritmo inteligente y puente de memoria esquiva reescribir e inyectar el trabajo, leyendo y retornando de su cachÃ© en Memoria RAM instantÃ¡neamente el antiguo resultado ya calculado.

---

## CASO 190

Contexto:
El equipo de calidad y pruebas (QA Testing) despliega el software actualizado a la nueva versiÃ³n de base general de la semana dos. El desarrollador corrigiÃ³ de manera impecable el error reportado en el mÃ³dulo frontal y dinÃ¡mico del "Carrito de Compras". Sin embargo, al pasarlo a revisiÃ³n final, el equipo detecta que aunque arreglÃ³ perfectamente el carrito de los productos, inexplicablemente el cÃ³digo paralelo del "BotÃ³n de RecuperaciÃ³n de ContraseÃ±as" que nunca debiÃ³ verse involucrado en el cÃ³digo, se rompiÃ³ e inoperantemente en silencio de manera central y.

Pregunta:
Â¿QuÃ© tipo de ciclo, estrategia y baterÃ­a puramente estructurada de pruebas automÃ¡ticas (Testing) salva a la empresa de esta fatalidad forzando revisiones globales tras cualquier modificaciÃ³n de la base ?

Opciones:
A) Pruebas MatemÃ¡ticas Unitarias Modulares Locales 
B) Pruebas DinÃ¡micas de Carga y TensiÃ³n 
C) Pruebas de Escalabilidad Modulares ArquitectÃ³nicas
D) Pruebas AutÃ³matas Completas de RegresiÃ³n y RevisiÃ³n Continua (Regression Testing)

Respuesta correcta: D

ExplicaciÃ³n:
Las Pruebas de RegresiÃ³n matemÃ¡ticas automÃ¡ticas aseguran de manera estricta la supervivencia y calidad paralela. Se efectÃºan y exigen ejecutarse centralmente en el ciclo cada vez que tÃº reparas un bug estricto o incrustas una caracterÃ­stica en el cÃ³digo. Es tu obligaciÃ³n correr de nuevo sobre el sistema general toda la matriz y cÃ³digo completo paralelo antiguo de pruebas, para asÃ­ corroborar rigurosamente que tu reparaciÃ³n local no haya roto ni "Regresado hacia atrÃ¡s" los comportamientos funcionales del programa pasado que en ayer estaban perfectos.

---

## CASO 191

Contexto:
Un programador en lenguaje C# o Java de sintaxis estricta utiliza variables para guardar inmensas cadenas de texto (String clÃ¡sico). Aconseja que utilizar `String texto = "Data"` y luego estar sumÃ¡ndole temporalmente en bucles concatenaciones de cÃ³digo bruto (`texto += " Update"`) dentro de mil ciclos continuos destruirÃ¡ el rendimiento y gastarÃ¡ forzosamente la Memoria RAM. Esto ocurre porque cada que el usuario asume formalmente estar "modificando" lÃ³gicamente la variable y alterÃ¡ndola, en la realidad tÃ©cnica de bajo nivel el objeto en el servidor jamÃ¡s es alterado pasivamente en su casilla interna y.

Pregunta:
Â¿QuÃ© concepto estructural y arquitectÃ³nico fundamental abstracto dictamina y obliga a que este comportamiento devorador de memoria RAM se detone obligando a fabricar e instanciar nuevos objetos inÃºtiles?

Opciones:
A) La MutaciÃ³n de Intercambio Central 
B) Inmutabilidad Estricta Absoluta y de la Clase String (Inmutabilidad de Objetos Computacionales)
C) PaginaciÃ³n Interna CÃ­clica del Motor de Garbage Collector 
D) Sobreescritura DinÃ¡mica Abstracta

Respuesta correcta: B

ExplicaciÃ³n:
Los "Objetos Inmutables" (Como la clase matemÃ¡tica y de texto String en Java clÃ¡sico estricto), garantizan blindaje estructural en procesamiento multi-hilo y. Como su estado es fijo, inquebrantable y permanentemente inalterable pasivamente, tÃº formalmente en la memoria no puedes sobre-escribirle una nueva letra a la vieja cadena. En la realidad de la memoria y paralela central, el motor y mÃ¡quina virtual destruye lÃ³gicamente y olvida en memoria el original, para fabricar internamente instanciado de cero y asimÃ©tricamente un Objeto nuevo completo cada vez que haces un parche.

---

## CASO 192

Contexto:
El Sistema Operativo Linux entra en alerta de saturaciÃ³n. Tras enviar un comando de consola, el administrador mata forzosamente al "Proceso Padre" central. Sin embargo, la computadora sigue asfixiada estÃ¡ticamente revelando que los diminutos "Sub-Procesos " (Procesos hijos) que fueron dados a luz por el Proceso Padre asesinado, continÃºan corriendo a la deriva en la RAM y ejecutando recursos, sin nadie estructuralmente por encima de ellos pasivamente que los controle, asimile, recicle y entierre asiladamente asimÃ©tricamente.

Pregunta:
Bajo la materia estricta arquitectÃ³nica de GestiÃ³n de Hilos y Sistema Operativo, Â¿cÃ³mo se les cataloga a estos pequeÃ±os sub-programas que quedan libres y sueltos al ejecutar asiladamente a su progenitor ?

Opciones:
A) Procesos y Bloques Zombis 
B) Procesos Suspendidos y Central 
C) Demonios Kernel 
D) Procesos HuÃ©rfanos y Paralelos (Orphan Processes Computacionales Centrales) -> Simplificado: (Procesos HuÃ©rfanos)

Respuesta correcta: D

ExplicaciÃ³n:
Existe una diferencia vital estricta y en el corazÃ³n del Kernel de OS: Un "Proceso Zombi " es un sub-proceso matemÃ¡tico *muerto y finalizado asimÃ©tricamente*, en donde el padre y central estricto ha tardado, negado e ignorado estÃ¡ticamente levantar y borrar en cÃ³digo el "CadÃ¡ver numÃ©rico (PID)". En cambio, un "Proceso HuÃ©rfano", es donde el Padre fue fulminado en pleno trabajo, pero los procesos Hijos siguen *absolutamente vivos*, ejecutÃ¡ndose transaccionalmente, corriendo e incontrolados como dueÃ±os del CPU y.

---

## CASO 193

Contexto:
El administrador de redes corporativo estricto diseÃ±a y segmenta esquemas de direcciones IP para la red VLAN de gerencia central. Sabe que las mÃ¡scaras y rangos de clase le indican la cuadrÃ­cula de computadoras y terminales totales posibles. Un estudiante emplea y paralelamente la vieja fÃ³rmula de `2^n - 2` fijos para hallar la cifra Ãºtil paralela y que sÃ­ se puede encadenar a las PC.

Pregunta:
Considerando la teorÃ­a inamovible de direccionamiento clÃ¡sico IP de enrutadores, Â¿quÃ© representan y exigen puramente sustraer y descontar fÃ­sicamente los dos espacios ("- 2") de la fÃ³rmula y estricta matemÃ¡tica paralela ?

Opciones:
A) Una para la DirecciÃ³n MAC y otra para la Red Central 
B) Representan el Gateway de Central y el Firewall 
C) Quitan e imposibilitan utilizar la Primera IP y estricta matemÃ¡tica reservada y nombrada a la Subred (IP de Red), y anula la Ãaltima IP de DifusiÃ³n y grito masivo paralelo y central (IP Broadcast Central) -> Simplificado: (IP de Red e IP de Broadcast)
D) Representan reservas abstractas de NAT paralelo Central 

Respuesta correcta: C

ExplicaciÃ³n:
En IPv4 estructurado (Ej. Subred /24), jamÃ¡s podrÃ¡s utilizar el nÃºmero matemÃ¡tico completo de la potencia de hosts. La ecuaciÃ³n inamovible estricta exige y te fuerza estÃ¡ticamente y paralelo a descontar puramente dos nodos centrales centrales inquebrantables : La IP primera y puramente mÃ¡s baja (Conocida como la IP de Identidad de Red y de la Subred) y restas paralela y y la Ãºltima IP y mÃ¡s alta matemÃ¡tica (La cÃ©lebre IP de DifusiÃ³n Broadcast paralela central).

---

## CASO 194

Contexto:
El motor SQL principal alojado lÃ³gicamente en MÃ©xico es modificado y rediseÃ±ado por un arquitecto. Debido a la extrema lejanÃ­a, y paralela entre su servidor y un nodo Esclavo y replicador secundario situado matemÃ¡ticamente del otro lado de las redes globales asimÃ©tricamente en la ciudad espaÃ±ola de Madrid, el experto decide no obligar al equipo de la ciudad matemÃ¡tica de AmÃ©rica a pausarse asiladamente y esperando confirmaciÃ³n remota central. En su lugar, MÃ©xico ejecuta lÃ³gicamente el trabajo, lo consolida y devuelve el poder rÃ¡pido y al usuario, y de inmediato y tras bambalinas, avienta la instrucciÃ³n por internet paralelo central a EspaÃ±a y.

Pregunta:
En diseÃ±os de Clusters y Redes puramente paralelos centrales, Â¿quÃ© estrategia de control de rÃ©plicas en bases maestras y de duplicaciÃ³n ha forzado el sistema y paralelo y ?

Opciones:
A) ReplicaciÃ³n Maestro-Esclavo y Multi-Mundo Paralela Central
B) DuplicaciÃ³n MatemÃ¡tica Cruzada Central 
C) ReplicaciÃ³n Activa Central 
D) ReplicaciÃ³n y de Bases de Datos MatemÃ¡tica Total Central Paralela (ReplicaciÃ³n Central) -> Simplificado: (ReplicaciÃ³n Central)

Respuesta correcta: D

ExplicaciÃ³n:
En nodos globales paralelos centrales y de bases, intentar inyectar de replicaciÃ³n estricta "SÃ­ncrona Central " en una distancia oceÃ¡nica y serÃ­a el fin del corporativo. El usuario en AmÃ©rica paralelo y quedarÃ­a congelado paralela hasta que el esclavo cruzando el ocÃ©ano atienda. Implementar puramente y matemÃ¡tica de ReplicaciÃ³n estricta le inyecta fluidez al sistema paralela y central.

---

## CASO 195

Contexto:
El robot rastreador y araÃ±a puramente paralelo de bÃºsquedas de web y de algoritmos de lectura web necesita leer todos los dominios. El ingeniero diseÃ±a el programa arquitectÃ³nico puramente matemÃ¡tico empleando y creando una estructura y pilar de "Cola" (Queue estricta). Esta estructura matemÃ¡tica define que la araÃ±a explore asiladamente y transaccionalmente todo lo adyacente a nivel central antes de adentrarse.

Pregunta:
Considerando la teorÃ­a puramente de algoritmos y grafos, Â¿quÃ© tÃ©cnica paralelo central de red se invocÃ³ ?

Opciones:
A) BÃºsqueda Iterativa Central 
B) OptimizaciÃ³n MatemÃ¡tica 
C) Algoritmo de Flujo Central
D) BÃºsqueda Puramente en Red y de Anchura (Breadth-First Search / BFS Central Paralelo) -> Simplificado: (BÃºsqueda en Anchura / BFS)

Respuesta correcta: D

ExplicaciÃ³n:
En exploraciÃ³n algorÃ­tmica y grÃ¡fica, el diseÃ±o y pilar matemÃ¡tico define tu rumbo. Al forzar al cÃ³digo a portar una "Cola ", te adhieres y a un comportamiento de ExploraciÃ³n transversal en Anchura o Breadth-First Search y paralela central. EvaluarÃ¡ y todas y cada una de las hojas paralelas en un anillo lÃ³gicamente fijo, evitando saltar a niveles inferiores y.

---

## CASO 196

Contexto:
En la programaciÃ³n y control modular central, un ingeniero utiliza el popular patrÃ³n "Singleton". Este diseÃ±o y estructura garantiza crear y aisladamente un solo objeto global Ãºnico para todo el programa. Sin embargo, en un sistema concurrente de hilos, descubre que la clase se estÃ¡ inicializando, sobrescribiendo y colisionando asiladamente, porque varios hilos logran entrar paralelamente evaluando el "if (instancia == nula)" en el mismo milisegundo. El programador no usa el clÃ¡sico "synchronized" general bloqueando todo, sino que verifica y lÃ³gicamente primero, luego asegura y bloquea y vuelve a verificar antes de crear la entidad.

Pregunta:
Bajo este escenario de programaciÃ³n multihilo y arquitectura, Â¿quÃ© concepto y algoritmo avanzado de diseÃ±o para bloqueo se aplica estÃ¡ticamente en Java/C#?

Opciones:
A) Monitoreo Paralelo Simple Central
B) ExclusiÃ³n de Bucle Paralela 
C) InversiÃ³n de Dependencia Central
D) El Algoritmo y PatrÃ³n CÃ­clico de Bloqueo de Doble ComprobaciÃ³n (Double-Checked Locking Paralelo) -> Simplificado: (Double-Checked Locking)

Respuesta correcta: D

ExplicaciÃ³n:
El Doble Chequeo (Double-Checked Locking Paralelo) es la salvaciÃ³n en Concurrencia de hilos. Consiste asiladamente en un primer "if" rÃ¡pido y barato para ahorrar CPU. Si detecta la instancia nula, entonces sÃ­ dispara y usa pesadamente el "Synchronized". Una vez logrando cerrar el hilo y blindar, obliga a repetir un segundo "If" para ver si durante lo que le tardÃ³ cerrar la puerta, algÃºn hilo ya no fabricÃ³ paralela el objeto antes de tiempo.

---

## CASO 197

Contexto:
En la programaciÃ³n y y paralelo de POO en Java central, un desarrollador declara el mÃ©todo estricto `obtenerSuma` en la clase base "Animal ". Posteriormente en otra clase, define asimÃ©tricamente el mÃ©todo `obtenerSuma` con el nombre idÃ©ntico, pero el programador altera y transaccionalmente y expande los argumentos de entrada. En lugar de mandar una variable, ahora declara y le pasa como base abstracta tres argumentos paralelos centrales y para que convivan en el mismo bloque.

Pregunta:
Considerando la teorÃ­a puramente paralela de objetos, Â¿quÃ© herramienta o manipulaciÃ³n de mÃ©todos arquitectÃ³nicos y pilar se ejerciÃ³ paralela ?

Opciones:
A) MutaciÃ³n Central 
B) InyecciÃ³n Paralelo Central
C) Herencia y Ocultamiento de Pila Central
D) TÃ©cnica MatemÃ¡tica y Pilar de Sobrecarga de MÃ©todos (Overloading Central Paralela) -> Simplificado: (Sobrecarga de MÃ©todos o Overloading)

Respuesta correcta: D

ExplicaciÃ³n:
En lenguajes paralelos centrales, la Sobrecarga (Overloading) te provee el lujo de clonar y bautizar puramente al mismo nombre de cÃ³digo de un mÃ©todo matemÃ¡tico varias veces en tu clase central. A cambio, tÃº te comprometes y firmas que al menos cambias transaccionalmente paralelo el nÃºmero de argumentos o el tipo paralelo de parÃ¡metros que va a masticar, dejando que el procesador elija dinÃ¡micamente. No lo confundas y con Sobreescritura (Overriding central paralela), donde cambias estÃ¡ticamente el contenido del cuerpo heredado.

---

## CASO 198

Contexto:
El nÃºcleo del Sistema Operativo debe programar que dos procesos concurrentes simultÃ¡neos, A y B, no vayan a estrellarse o daÃ±ar y leer a medias lÃ³gicamente la variable y objeto "Cuenta Bancaria". Para evitarlo, crea un mecanismo en el CPU. Una primitiva funciona como si tÃº cerraras la cerradura de un baÃ±o al entrar. Cuando un proceso entra a la Zona CrÃ­tica, "cierra y apaga" el semÃ¡foro para que otros hilos no interrumpan su ediciÃ³n, y luego "levanta y prende " la bandera para que el hilo vecino pueda seguir.

Pregunta:
Bajo ciencias de concurrencia y de exclusiÃ³n, Â¿quÃ© nombre se le otorga a esta barrera central paralela ?

Opciones:
A) Monitor de TensiÃ³n Central
B) SeÃ±al de SegmentaciÃ³n Central Paralelo 
C) PaginaciÃ³n AtÃ³mica Central Paralelo
D) Componente de Bloqueo Binario SemÃ¡foro Mutex (Mutex / Mutual Exclusion Central Paralelo) -> Simplificado: (Mutex o SemÃ¡foro de ExclusiÃ³n Mutua)

Respuesta correcta: D

ExplicaciÃ³n:
Un Mutex central paralelo (De la sÃ­ntesis y acrÃ³nimo Mutual Exclusion) ejerce la protecciÃ³n y exclusiÃ³n matemÃ¡tica y absoluta de la zona crÃ­tica en CPU. Representa la y bandera puramente binaria (Cero y Uno). Si un hilo formalÃ³gico entra a escribir asiladamente y la tabla SQL, bloquea analÃ­ticamente la puerta ; ni el presidente de la red puede alterar la RAM hasta que el dueÃ±o devuelva y la bandera paralela de la ExclusiÃ³n Mutua.

---

## CASO 199

Contexto:
El servidor de internet y la pÃ¡gina web central del banco estÃ¡n listos. El administrador de cortafuegos y el equipo de IT instalan su viejo Firewall clÃ¡sico de Red en el puerto 443. Un experto en auditorÃ­a y ciberseguridad paralela le comenta estÃ¡ticamente : "Como la web legÃ­tima requiere y fuerza el puerto TCP 443 paralela abierto, cualquier ataque o Hacker que me mande un virus y fragmento de InyecciÃ³n SQL disfrazada en el campo de texto, va a poder cruzar fÃ¡cilmente y el muro porque tÃº dejaste y le aprobaste la entrada libre en tu Firewall clÃ¡sico para el Puerto ".

Pregunta:
Bajo la materia estricta paralela de Ciberseguridad, Â¿quÃ© equipo de protecciÃ³n de Capa 7 debes inyectar para escanear y desarmar ataques web en pleno texto ?

Opciones:
A) Un Filtro de SegmentaciÃ³n Central 
B) IPSec DinÃ¡mico Paralela
C) Balanceador Central 
D) Sistema Avanzado y Cortafuegos de Aplicaciones Web (Web Application Firewall o WAF Central Paralelo) -> Simplificado: (Web Application Firewall / WAF)

Respuesta correcta: D

ExplicaciÃ³n:
Un Firewall tradicional opera en puertos (Abre la puerta 443 y se olvida). El WAF (Web Application Firewall central) no solo abre el puerto, sino que revisa paralela el "Cuerpo y Payload " HTTP. Si tu atacante escribe asiladamente "OR 1=1--" en tu celda de contraseÃ±a paralela, el WAF central detecta y extirpa analÃ­ticamente la inyecciÃ³n antes de que el motor de SQL sufra ciegamente el caos.

---

## CASO 200

Contexto:
El banco paralela reemplaza a la base relacional. El arquitecto dicta y asienta que tÃº jamÃ¡s debes sobrescribir ni destruir y alterar el saldo de "Cuenta ". A partir de hoy, en vez de alterar "100 menos 20 ", guardarÃ¡s un diario cronolÃ³gico de eventos inmutables ("Evento DepositÃ³ 100", "Evento RetirÃ³ 20 ").

Pregunta:
Bajo la materia y arquitectura, Â¿quÃ© patrÃ³n y estructura de inmutabilidad y registro cronolÃ³gico se estÃ¡ implementando ?

Opciones:
A) Base Relacional DinÃ¡mica Paralelo
B) PaginaciÃ³n Central 
C) SegmentaciÃ³n y Balanceo MÃºltiple Central
D) Aprovisionamiento de Eventos Inmutables y (PatrÃ³n Event Sourcing Central Paralelo) -> Simplificado: (Event Sourcing)

Respuesta correcta: D

ExplicaciÃ³n:
El Aprovisionamiento de Eventos (Event Sourcing central paralelo) revoluciona la forma de usar bases de datos. Te prohÃ­be destructivamente sobreescribir el saldo de la base. Guardas eventos (Suma 5, Resta 3). Si maÃ±ana quieres el saldo, sumas los miles de registros pasados, forjando y adquiriendo una auditorÃ­a de base de datos absoluta impenetrable.
\newpage

