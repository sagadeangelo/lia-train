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

Un equipo est¡ diseando un sistema de comercio electrnico. Tienen una clase base "MetodoPago" y clases derivadas como "TarjetaCredito", "PayPal" y "Transferencia". El mdulo de cobros necesita ejecutar la funcin "procesarPago()" sobre una lista de mtodos, sin importar cu¡l sea el mtodo especfico en tiempo de compilacin.



Pregunta:

¿Qu principio de la Programacin Orientada a Objetos se debe aplicar para lograr este comportamiento din¡mico?



Opciones:

A) Abstraccin

B) Encapsulamiento

C) Polimorfismo

D) Herencia mltiple



Respuesta correcta: C



Explicacin:

El polimorfismo permite que un mismo mtodo reaccione y ejecute comportamientos distintos dependiendo de la clase especfica instanciada en tiempo de ejecucin, permitiendo tratar objetos derivados a travs de la interfaz de su clase base.



---



## CASO 2



Contexto:

Se requiere segmentar la red 192.168.10.0/24 para asignar un segmento exclusivo al departamento de ventas que requiere exactamente 25 direcciones IP asignables a dispositivos.



Pregunta:

¿Qu m¡scara de subred de longitud variable (VLSM) es la m¡s ptima para evitar el desperdicio de direcciones IP?



Opciones:

A) /26

B) /27

C) /28

D) /25



Respuesta correcta: B



Explicacin:

Una m¡scara /27 deja 5 bits para hosts, lo que permite (2^5) - 2 = 30 direcciones IP asignables. Esto cubre exactamente el requerimiento de 25 hosts con el menor desperdicio posible. Una /28 solo brindara 14 direcciones.



---



## CASO 3



Contexto:

En una base de datos relacional, la tabla "Ventas" contiene los campos: ID_Venta, Fecha, ID_Cliente, Nombre_Cliente y Correo_Cliente. 



Pregunta:

¿Qu regla de normalizacin est¡ violando el diseo de esta tabla?



Opciones:

A) Primera Forma Normal (1FN)

B) Segunda Forma Normal (2FN)

C) Tercera Forma Normal (3FN)

D) Forma Normal de Boyce-Codd (FNBC)



Respuesta correcta: C



Explicacin:

Los campos Nombre_Cliente y Correo_Cliente tienen una dependencia funcional hacia ID_Cliente, el cual no es la llave primaria de la tabla (ID_Venta). Esto se conoce como dependencia transitiva, lo cual viola la Tercera Forma Normal (3FN).



---



## CASO 4



Contexto:

En un sistema operativo servidor, dos procesos simult¡neos (P1 y P2) requieren acceso exclusivo a una impresora y a un esc¡ner. P1 bloquea la impresora y espera el esc¡ner. Al mismo tiempo, P2 bloquea el esc¡ner y espera la impresora. Ambos quedan congelados indefinidamente.



Pregunta:

¿Qu anomala cl¡sica de sistemas operativos se ha presentado en este escenario?



Opciones:

A) Inanicin (Starvation)

B) Interbloqueo (Deadlock)

C) Condicin de Carrera (Race Condition)

D) Paginacin excesiva (Thrashing)



Respuesta correcta: B



Explicacin:

El interbloqueo o Deadlock ocurre cuando dos o m¡s procesos se bloquean mutuamente esperando recursos que ya est¡n retenidos por el otro proceso, creando un ciclo cerrado de espera.



---



## CASO 5



Contexto:

Un corporativo gubernamental requiere construir un sistema financiero con requerimientos legales estrictos, detallados y fijos desde el inicio, donde las regulaciones impiden que el alcance cambie una vez iniciado el desarrollo.



Pregunta:

¿Qu metodologa de ciclo de vida del software es la m¡s apropiada para este proyecto?



Opciones:

A) Scrum

B) Cascada (Waterfall)

C) Programacin Extrema (XP)

D) Kanban



Respuesta correcta: B



Explicacin:

El modelo en Cascada es ideal para proyectos donde los requerimientos son fijos, claros y no est¡n sujetos a cambios, ya que cada fase debe completarse y documentarse antes de avanzar a la siguiente.



---



## CASO 6



Contexto:

Se necesita implementar un mecanismo de navegacin para el botn "Atr¡s" de un navegador web, donde la ltima p¡gina visitada es la primera que se extrae al presionar el botn.



Pregunta:

¿Qu estructura de datos es la indicada para gestionar este historial de navegacin?



Opciones:

A) Pila (Stack)

B) Cola (Queue)

C) rbol Binario

D) Grafo



Respuesta correcta: A



Explicacin:

Una pila opera bajo el principio LIFO (Last In, First Out). La ltima p¡gina visitada (insertada) es la primera en ser extrada cuando el usuario desea regresar.



---



## CASO 7



Contexto:

Un analista necesita buscar un registro especfico dentro de un arreglo de 1 milln de elementos numricos que ya se encuentran ordenados ascendentemente.



Pregunta:

¿Cu¡l es la complejidad (Big O) del mejor algoritmo disponible para esta bsqueda?



Opciones:

A) O(n)

B) O(n log n)

C) O(log n)

D) O(1)



Respuesta correcta: C



Explicacin:

Como el arreglo ya est¡ ordenado, el algoritmo ptimo es la Bsqueda Binaria. Este divide el arreglo a la mitad en cada paso, logrando un rendimiento logartmico O(log n), extremadamente superior a una bsqueda lineal O(n).



---



## CASO 8



Contexto:

Un ingeniero desarrolla una aplicacin para transmisin de video en vivo (Streaming). Prioriza la velocidad de entrega de datos y asume que perder unos cuantos fotogramas es preferible a sufrir retrasos severos de carga.



Pregunta:

Segn el Modelo OSI, ¿qu protocolo de la Capa de Transporte debe seleccionar?



Opciones:

A) TCP

B) UDP

C) HTTP

D) ICMP



Respuesta correcta: B



Explicacin:

UDP (User Datagram Protocol) es un protocolo no orientado a conexin. No verifica que los paquetes lleguen completos ni los reordena, lo que lo hace inmensamente m¡s r¡pido y adecuado para streaming de voz o video.



---



## CASO 9



Contexto:

Una empresa tiene las tablas "Empleados" y "Departamentos". Se requiere generar un reporte que incluya a todos los departamentos registrados, incluso aquellos que actualmente no tienen ningn empleado asignado.



Pregunta:

Considerando que la tabla "Departamentos" est¡ a la izquierda en la consulta, ¿qu cl¡usula de unin SQL resuelve el requerimiento?



Opciones:

A) INNER JOIN

B) LEFT JOIN

C) RIGHT JOIN

D) CROSS JOIN



Respuesta correcta: B



Explicacin:

La operacin LEFT JOIN devuelve todos los registros de la tabla izquierda (Departamentos) y las coincidencias de la tabla derecha. Si un departamento no tiene empleados, rellenar¡ las columnas de empleados con valores NULL.



---



## CASO 10



Contexto:

Para evitar la sobrecarga de conexiones concurrentes hacia el motor de base de datos, el arquitecto de software decide que todo el sistema web debe compartir una nica y misma instancia de conexin a lo largo de su ejecucin.



Pregunta:

¿Qu patrn de diseo de software restringe la instanciacin de una clase a un nico objeto?



Opciones:

A) Factory

B) Observer

C) Singleton

D) Decorator



Respuesta correcta: C



Explicacin:

El patrn Singleton garantiza que una clase solo tenga una instancia en todo el ciclo de vida del programa y proporciona un punto de acceso global a ella.



---



## CASO 11



Contexto:

Un servidor Linux entra en un estado crtico donde el disco duro emite ruido y el rendimiento de procesamiento decae a casi cero. El administrador descubre que el sistema est¡ intercambiando p¡ginas de memoria entre la RAM y el archivo de paginacin de disco incesantemente.



Pregunta:

¿Qu nombre tcnico recibe este fenmeno de saturacin del Sistema Operativo?



Opciones:

A) Paginacin segmentada

B) Fragmentacin externa

C) Inanicin cclica

D) Hiperpaginacin (Thrashing)



Respuesta correcta: D



Explicacin:

El Thrashing o Hiperpaginacin ocurre cuando un sistema se sobrecarga de procesos y agota su memoria RAM, dedicando todo su poder computacional a mover datos entre la RAM y el disco duro (Swap) en lugar de procesar instrucciones tiles.



---



## CASO 12



Contexto:

Al ejecutar una funcin matem¡tica diseada con recursividad, la aplicacin lanza el error "StackOverflowError" (Desbordamiento de Pila) colapsando la memoria. 



Pregunta:

¿Qu componente estructural de la funcin fue omitido o programado de forma incorrecta, causando el error?



Opciones:

A) El iterador de paso

B) La llamada interna

C) El caso base

D) La inicializacin de la memoria Heap



Respuesta correcta: C



Explicacin:

El caso base es la condicin de paro que indica a la funcin recursiva cu¡ndo debe dejar de llamarse a s misma. Sin l, la recursividad ocurre indefinidamente hasta agotar la memoria de la pila (Stack).



---



## CASO 13



Contexto:

Un desarrollador recibe alertas de seguridad. El log de la aplicacin web muestra que atacantes est¡n introduciendo comandos como `' OR '1'='1` en los campos del formulario de inicio de sesin.



Pregunta:

¿Qu mecanismo de la ingeniera de software es el est¡ndar primario para mitigar este tipo especfico de ataque a nivel de cdigo de base de datos?



Opciones:

A) Hashear las contraseas

B) Sentencias Preparadas (Prepared Statements)

C) Certificados SSL

D) Encriptacin 



Respuesta correcta: B



Explicacin:

El ataque es una Inyeccin SQL. Las Sentencias Preparadas o consultas parametrizadas precompilan la consulta en el motor de bases de datos antes de inyectar el valor del usuario, impidiendo que los caracteres especiales alteren la estructura del comando.



---



## CASO 14



Contexto:

Un empleado no puede acceder al portal interno mediante el nombre `intranet.empresa.local`, pero s logra acceder directamente escribiendo la direccin IP `10.0.5.25` en el navegador.



Pregunta:

¿En qu servicio de red y capa del modelo OSI recae exclusivamente esta falla?



Opciones:

A) Servicio DHCP - Capa 3

B) Servicio DNS - Capa 7

C) Servicio HTTP - Capa 4

D) Servicio NAT - Capa 2



Respuesta correcta: B



Explicacin:

La falla radica en la resolucin del nombre de dominio a una direccin IP. Este proceso lo realiza el servidor DNS (Domain Name System), el cual opera puramente en la Capa 7 (Aplicacin) del modelo OSI.



---



## CASO 15



Contexto:

Un sistema bancario procesa una transferencia transfiriendo dinero de la Cuenta A a la Cuenta B. Ocurre un corte de energa justo despus de que se rest el dinero en la Cuenta A, pero antes de que se sumara a la Cuenta B. Al reiniciar, el dinero de la Cuenta A ha vuelto ntegro.



Pregunta:

¿Qu propiedad de las transacciones (ACID) garantiz que no se guardaran operaciones a medias?



Opciones:

A) Consistencia

B) Aislamiento

C) Durabilidad

D) Atomicidad



Respuesta correcta: D



Explicacin:

La Atomicidad es la propiedad de bases de datos que rige el principio "Todo o Nada". Si cualquier suboperacin dentro de una transaccin falla, todo el bloque se deshace (Rollback), impidiendo estados intermedios.



---



## CASO 16



Contexto:

El ¡rea de Control de Calidad (QA) debe validar un mdulo de c¡lculos de impuestos de un sistema web. Los analistas introducen distintos rangos salariales en los formularios web y verifican los resultados en pantalla sin observar en ningn momento el cdigo fuente.



Pregunta:

¿Qu tipo de tcnica de pruebas de software se est¡ aplicando?



Opciones:

A) Prueba de Caja Blanca

B) Prueba de Caja Negra

C) Prueba de Regresin

D) Prueba de Estrs



Respuesta correcta: B



Explicacin:

Las Pruebas de Caja Negra evalan exclusivamente las entradas y salidas de un sistema desde la perspectiva del usuario o de requisitos, asumiendo ignorancia total sobre la estructura interna y el cdigo fuente.



---



## CASO 17



Contexto:

Se requiere implementar una libreta de contactos para un servidor donde el acceso a cualquier nmero de telfono utilizando el nombre como clave debe ser instant¡neo y mantener un tiempo de bsqueda promedio de O(1), sin importar si hay 100 o un milln de registros.



Pregunta:

¿Qu estructura de datos asegura este rendimiento ptimo?



Opciones:

A) rbol Binario de Bsqueda

B) Lista Doblemente Enlazada

C) Tabla Hash (Diccionario / Hash Map)

D) Arreglo din¡mico ordenado



Respuesta correcta: C



Explicacin:

Las Tablas Hash procesan la clave ("nombre") mediante una funcin matem¡tica que indica directamente la posicin exacta en memoria, logrando una bsqueda de rendimiento O(1) bajo condiciones ptimas sin colisiones severas.



---



## CASO 18



Contexto:

Un programador en Java declara las variables de una clase como "private" y genera los mtodos "get" y "set" para permitir que otros objetos puedan acceder o modificar los datos bajo ciertas reglas de validacin estipuladas.



Pregunta:

¿Qu pilar fundamental de la Programacin Orientada a Objetos se est¡ respetando?



Opciones:

A) Herencia

B) Polimorfismo

C) Abstraccin

D) Encapsulamiento



Respuesta correcta: D



Explicacin:

El Encapsulamiento consiste en restringir el acceso directo al estado interno de un objeto, protegindolo mediante atributos privados y obligando a los agentes externos a usar mtodos controlados para interactuar con la informacin.



---



## CASO 19



Contexto:

Un sistema operativo multitarea asigna a cada proceso activo un pequeo "cuanto de tiempo" o intervalo fijo. Si el proceso no termina en ese lapso, es forzado a regresar al final de la fila de listos para ceder el procesador a otro.



Pregunta:

¿Qu algoritmo de planificacin de CPU (Scheduling) se describe en este comportamiento?



Opciones:

A) Primero en llegar, primero en ser servido (FCFS)

B) Planificacin por prioridad

C) Round Robin

D) El trabajo m¡s corto primero (SJF)



Respuesta correcta: C



Explicacin:

Round Robin es el cl¡sico algoritmo multitarea por divisin de tiempos (Time-sharing). Asigna una porcin equitativa de tiempo a todos los procesos en un ciclo rotatorio, garantizando respuesta justa y evitando monopolio de recursos.



---



## CASO 20



Contexto:

El administrador de red debe permitir el flujo de paquetes de internet en las reglas del enrutador o cortafuegos (Firewall). Decide bloquear las comunicaciones bas¡ndose en las direcciones de origen de la red pblica.



Pregunta:

¿Qu tipo de direccionamiento y en qu capa del Modelo OSI debe aplicarse este bloqueo?



Opciones:

A) Direcciones MAC - Capa 2

B) Direcciones IP - Capa 3

C) Direcciones URL - Capa 7

D) Puertos - Capa 4



Respuesta correcta: B



Explicacin:

Un enrutador (Router) o un cortafuegos para an¡lisis de paquetes de red funciona mediante Direcciones IP, las cuales pertenecen estrictamente a la Capa 3 (Red) del modelo OSI. Las direcciones MAC solo tienen alcance de red local.

\newpage
# Bloque 2
## CASO 21



Contexto:

El administrador de bases de datos de una universidad intenta eliminar de la tabla "Carreras" el registro de la carrera de Ingeniera Industrial. Sin embargo, el motor de base de datos bloquea la operacin arrojando un error de violacin de restriccin, ya que existen actualmente 500 alumnos registrados en esa carrera.



Pregunta:

¿Qu mecanismo relacional se activ para impedir el borrado y proteger los datos?



Opciones:

A) ndice Agrupado (Clustered Index)

B) Disparador (Trigger) de insercin

C) Integridad Referencial (Llave For¡nea)

D) Bloqueo de Transaccin (Deadlock)



Respuesta correcta: C



Explicacin:

La Integridad Referencial, impuesta mediante una Llave For¡nea (Foreign Key), asegura que no se pueda eliminar un registro padre (Carrera) si existen registros hijos (Alumnos) que dependen de l. Esto evita la creacin de registros "hurfanos" en la base de datos.



---



## CASO 22



Contexto:

Un servidor cuenta con 8 GB de memoria RAM fsica. Al ejecutar un motor de renderizado 3D pesado que requiere 12 GB, el sistema no se detiene ni marca error, sino que se vuelve lento porque comienza a usar espacio libre en el disco duro para almacenar datos.



Pregunta:

¿Cmo se denomina tcnicamente este espacio del disco duro que el sistema operativo utiliza como extensin de la RAM?



Opciones:

A) Memoria Cach L3

B) Memoria Virtual (Swap)

C) Memoria ROM

D) Buffer de E/S



Respuesta correcta: B



Explicacin:

La Memoria Virtual (conocida como particin Swap en Linux o Archivo de Paginacin en Windows) es un espacio reservado en el almacenamiento fsico que el Sistema Operativo utiliza para emular memoria RAM adicional cuando la memoria fsica real se satura.



---



## CASO 23



Contexto:

Al inicio de un proyecto de software, el analista de requerimientos necesita graficar y comunicar a los directivos las funciones generales que el sistema ofrecer¡ a los distintos tipos de usuarios (ej. Administrador, Cliente, Cajero), sin detallar cmo estar¡n programadas por dentro.



Pregunta:

Segn el lenguaje UML, ¿qu diagrama es el indicado para este propsito?



Opciones:

A) Diagrama de Clases

B) Diagrama de Secuencia

C) Diagrama de Estado

D) Diagrama de Casos de Uso



Respuesta correcta: D



Explicacin:

El Diagrama de Casos de Uso de UML est¡ diseado para mostrar las interacciones funcionales externas. Mapea a los "Actores" frente a las acciones globales que pueden realizar en el sistema, siendo altamente comprensible para personal no tcnico.



---



## CASO 24



Contexto:

En un corporativo, el departamento de Finanzas y el de Marketing comparten el mismo piso y los mismos switches fsicos (Conmutadores). Por seguridad, se requiere que ambos departamentos no puedan comunicarse ni ver sus equipos entre s a nivel de red.



Pregunta:

¿Qu tecnologa de Capa 2 permite fragmentar lgicamente los switches para lograr este aislamiento sin comprar hardware nuevo?



Opciones:

A) VPN

B) NAT

C) VLAN

D) Subneteo IP



Respuesta correcta: C



Explicacin:

Las Redes de rea Local Virtuales (VLAN) operan en la Capa 2 del Modelo OSI. Permiten crear dominios de difusin lgicamente aislados dentro de un mismo switch fsico, segregando el tr¡fico como si existieran mltiples switches independientes de hardware.



---



## CASO 25



Contexto:

Un analista debe programar una rutina de ordenamiento que divida constantemente el arreglo original a la mitad en arreglos m¡s pequeos hasta que tengan un solo elemento, para luego recombinarlos de manera ordenada.



Pregunta:

¿Qu algoritmo de ordenamiento y paradigma matem¡tico est¡ aplicando?



Opciones:

A) Bubble Sort - Iterativo

B) Merge Sort - Divide y Vencer¡s

C) Selection Sort - Bsqueda Exhaustiva

D) Insertion Sort - Backtracking



Respuesta correcta: B



Explicacin:

Merge Sort es el ejemplo cl¡sico del paradigma "Divide y Vencer¡s". Particiona el arreglo a la mitad recursivamente hasta la mnima unidad y luego los "mezcla" ordenadamente, garantizando una complejidad altamente eficiente de O(n log n).



---



## CASO 26



Contexto:

Un automvil est¡ estructurado en el software de tal manera que, si el objeto "Automvil" es destruido por el recolector de basura, el objeto "Motor" contenido dentro de l tambin debe ser destruido inevitablemente, ya que no puede existir sin el automvil.



Pregunta:

En UML y Programacin Orientada a Objetos, ¿qu tipo de relacin fuerte describe este escenario?



Opciones:

A) Agregacin

B) Herencia

C) Composicin

D) Asociacin simple



Respuesta correcta: C



Explicacin:

La Composicin es una relacin de pertenencia muy fuerte (representada por un rombo negro en UML). Dicta que la vida del objeto "parte" (Motor) depende estrictamente de la vida del objeto "todo" (Automvil). Si el todo se destruye, las partes tambin mueren.



---



## CASO 27



Contexto:

Un administrador de servidores necesita acceder remotamente a la terminal de comandos de un servidor Linux. Quiere asegurarse de que toda la comunicacin de texto enviada por internet viaje encriptada.



Pregunta:

¿Qu protocolo y puerto est¡ndar oficial debe utilizar?



Opciones:

A) Telnet - Puerto 23

B) FTP - Puerto 21

C) SSH - Puerto 22

D) HTTP - Puerto 80



Respuesta correcta: C



Explicacin:

Secure Shell (SSH) es el protocolo est¡ndar de red que permite acceder de forma encriptada y segura a la terminal de un equipo remoto, y opera por defecto en el puerto 22. Telnet (puerto 23) enva los comandos en texto plano, lo que es un riesgo de seguridad.



---



## CASO 28



Contexto:

El administrador de bases de datos decide crear un ndice especial en la tabla "Empleados" bajo la columna de "Fecha de Contratacin". Este ndice no reordena fsicamente las filas de la tabla en el disco duro, sino que crea una estructura secundaria con punteros hacia los datos.



Pregunta:

¿Qu tipo de ndice acaba de generar?



Opciones:

A) ndice Agrupado (Clustered Index)

B) ndice No Agrupado (Non-Clustered Index)

C) ndice de Texto Completo

D) Hash Index



Respuesta correcta: B



Explicacin:

Un ndice No Agrupado (Non-Clustered) opera de manera an¡loga al ndice al final de un libro: crea una lista externa ordenada que apunta hacia los registros, permitiendo tener mltiples ndices en una tabla. El Clustered s altera el orden fsico en disco y solo puede haber uno por tabla (comnmente la llave primaria).



---



## CASO 29



Contexto:

Un equipo de programacin adopta una metodologa rigurosa donde el programador est¡ obligado a escribir las pruebas unitarias que van a fallar antes de escribir siquiera una sola lnea de cdigo fuente funcional de la aplicacin.



Pregunta:

¿Cmo se denomina esta pr¡ctica de ingeniera de software?



Opciones:

A) Integracin Continua (CI)

B) Desarrollo Dirigido por Pruebas (TDD)

C) An¡lisis de Cdigo

D) Patrn Modelo Vista Controlador (MVC)



Respuesta correcta: B



Explicacin:

El Test-Driven Development (TDD) exige un ciclo corto: Escribir primero una prueba que falla (Red), escribir el cdigo mnimo para hacerla pasar (Green), y luego optimizar el cdigo (Refactor). Garantiza cobertura total de pruebas desde el inicio.



---



## CASO 30



Contexto:

En un sistema operativo moderno, un navegador web abre mltiples pestaas. Para ahorrar recursos, el navegador decide no crear un clon completo de la aplicacin por cada pestaa en la RAM, sino crear pequeas unidades ligeras de ejecucin dentro del mismo programa base compartiendo su memoria.



Pregunta:

¿Qu unidades de procesamiento concurrente est¡ instanciando el navegador?



Opciones:

A) Demonios (Daemons)

B) Procesos Padre

C) Procesos Hurfanos

D) Hilos (Threads)



Respuesta correcta: D



Explicacin:

Los Hilos (Threads) son la unidad b¡sica de utilizacin del CPU y forman parte de un proceso m¡s grande. Mientras que los procesos son pesados y tienen memorias aisladas, los hilos dentro de un mismo proceso comparten la misma memoria, hacindolos ligeros y r¡pidos.



---



## CASO 31



Contexto:

El equipo de redes evala migrar toda la infraestructura corporativa de direcciones IPv4 hacia direcciones IPv6 para soportar la enorme cantidad de dispositivos inteligentes (IoT) previstos en el corporativo.



Pregunta:

¿Qu tamao en longitud de bits tiene una direccin IPv6 est¡ndar, garantizando espacio pr¡cticamente inagotable?



Opciones:

A) 32 bits

B) 64 bits

C) 128 bits

D) 256 bits



Respuesta correcta: C



Explicacin:

Mientras que las antiguas direcciones IPv4 miden 32 bits (limitando el mundo a 4.3 mil millones de IPs), el protocolo IPv6 mide 128 bits de longitud, permitiendo $3.4 \times 10^{38}$ direcciones nicas, resolviendo el problema de agotamiento global.



---



## CASO 32



Contexto:

Un startup est¡ diseando el backend para un cat¡logo de productos de e-commerce. Los atributos de los productos varan agresivamente: un celular requiere voltaje y RAM, pero una playera requiere talla y color. El equipo decide usar un motor de base de datos sin esquema rgido que almacena documentos tipo JSON.



Pregunta:

¿A qu categora de bases de datos pertenece la solucin seleccionada?



Opciones:

A) Bases de Datos Relacionales (RDBMS)

B) Bases de Datos Orientadas a Grafos

C) Bases de Datos NoSQL Documentales

D) Bases de Datos de Series 



Respuesta correcta: C



Explicacin:

Las bases de datos NoSQL tipo Documental (como MongoDB) almacenan la informacin en documentos similares a JSON (BSON). Permiten flexibilidad total o "Schemaless", ideal para cat¡logos donde cada registro necesita campos y estructuras completamente distintas sin forzar nulos.



---



## CASO 33



Contexto:

En un servidor de impresin de oficina, cinco empleados envan documentos para imprimir casi al mismo tiempo. El servidor debe procesar los documentos en el orden exacto en que llegaron, sacando el primer archivo recibido.



Pregunta:

¿Qu estructura de datos es la indicada para administrar esta sala de espera de documentos?



Opciones:

A) Pila (Stack)

B) Cola (Queue)

C) Grafo ponderado

D) rbol AVL



Respuesta correcta: B



Explicacin:

Una Cola opera bajo el principio FIFO (First In, First Out). El primer elemento en ser encolado (el primer empleado que mand imprimir) ser¡ estrictamente el primero en ser atendido y retirado de la fila de impresin.



---



## CASO 34



Contexto:

El arquitecto de software exige separar el cdigo del sistema web: el cdigo HTML/CSS no debe estar mezclado con la de conexin a la base de datos, y los c¡lculos de negocio deben estar aislados para que otros departamentos puedan modificarlos independientemente.



Pregunta:

¿Qu patrn arquitectnico cl¡sico exige esta separacin en tres componentes principales?



Opciones:

A) Patrn Observador

B) Modelo-Vista-Controlador (MVC)

C) Microservicios

D) CQRS



Respuesta correcta: B



Explicacin:

El Patrn MVC divide el software en tres ¡reas: El Modelo (Datos y reglas de negocio), la Vista (Interfaz Gr¡fica / HTML), y el Controlador (intermediario que recibe peticiones y enlaza a ambos). Facilita el mantenimiento y el cdigo limpio.



---



## CASO 35



Contexto:

Al encender 200 computadoras nuevas en el campus, todas adquieren autom¡ticamente una direccin IP nica v¡lida, m¡scara de subred, puerta de enlace y servidores DNS, sin que los tcnicos tengan que configurar cada m¡quina a mano.



Pregunta:

¿Qu protocolo de red se encarg de asignar esta configuracin din¡micamente en broadcast?



Opciones:

A) DNS

B) ARP

C) ICMP

D) DHCP



Respuesta correcta: D



Explicacin:

El Protocolo de Configuracin Din¡mica de Host (DHCP) asigna direcciones IP din¡micas y otros par¡metros de configuracin de red a los dispositivos a medida que se conectan a la red, evitando conflictos y gestin manual.



---



## CASO 36



Contexto:

En un servidor Linux, el administrador desea que el archivo secreto "claves.txt" solo pueda ser ledo y escrito por el dueo del archivo (l mismo), pero nadie m¡s (ni el grupo ni los usuarios externos) debe tener absolutamente ningn acceso.



Pregunta:

¿Qu notacin de permisos octal ejecuta este comportamiento al usar el comando `chmod`?



Opciones:

A) 777

B) 644

C) 600

D) 755



Respuesta correcta: C



Explicacin:

En permisos Linux (Usuario, Grupo, Otros), el octal 6 equivale a Lectura (4) y Escritura (2). 600 significa que el dueo tiene Lectura/Escritura, mientras que el Grupo (0) y Otros (0) no tienen ningn derecho. Un 777 dara control total al mundo entero.



---



## CASO 37



Contexto:

Para generar los reportes de nmina, el desarrollador decide no enviar las complejas sentencias de `SELECT` masivas desde el cdigo PHP en el servidor web. En su lugar, empaqueta, compila y guarda las consultas SQL directamente dentro del motor de base de datos, llam¡ndolas solo por un nombre corto.



Pregunta:

¿Qu elemento de bases de datos ha creado el desarrollador?



Opciones:

A) Vista Materializada

B) Procedimiento Almacenado (Stored Procedure)

C) Disparador (Trigger)

D) Cursor



Respuesta correcta: B



Explicacin:

Un Procedimiento Almacenado es un bloque de cdigo SQL y que se guarda y compila internamente en el servidor de base de datos. Reduce el tr¡fico de red, abstrae la de negocio y protege contra inyecciones SQL al separar la capa de datos de la capa de aplicacin.



---



## CASO 38



Contexto:

El equipo termin de programar dos mdulos independientes: el "Mdulo del Carrito" y el "Mdulo de Facturacin". Las pruebas de ambos pasaron individualmente, pero ahora deben conectarlos y verificar que los datos viajen sin error desde el Carrito hasta el servidor de Facturacin.



Pregunta:

¿Qu fase del ciclo de calidad del software (QA) se est¡ ejecutando?



Opciones:

A) Pruebas Unitarias

B) Pruebas de Integracin

C) Pruebas de Sistema

D) Pruebas de Aceptacin (UAT)



Respuesta correcta: B



Explicacin:

Las Pruebas de Integracin se enfocan en verificar la interaccin e interfaz entre dos o m¡s mdulos (o servicios) ya probados unitariamente, garantizando que el flujo de datos entre ellos al conectarse funcione correctamente.



---



## CASO 39



Contexto:

En un laboratorio escolar de 30 computadoras, todas est¡n conectadas mediante un cable UTP a un nico Switch central. Si un cable se rompe, solo esa m¡quina se desconecta. Si el Switch central se apaga, toda la red del saln colapsa.



Pregunta:

¿A qu topologa fsica de red pertenece este diseo?



Opciones:

A) Malla

B) Anillo

C) Bus

D) Estrella



Respuesta correcta: D



Explicacin:

En la topologa de Estrella, todos los nodos est¡n conectados individualmente a un concentrador central (Switch/Hub). Es f¡cil de diagnosticar y un cable daado no afecta al resto, pero el punto central de fallo es crtico.



---



## CASO 40



Contexto:

Un fotgrafo adquiere un servidor de almacenamiento con dos discos duros idnticos. Configura el sistema de arreglos para que todo archivo que se guarde en el Disco 1 se escriba al mismo tiempo y de manera exacta como espejo en el Disco 2, sacrificando la mitad del espacio total a cambio de m¡xima seguridad.



Pregunta:

¿Qu nivel de arreglo de discos redundantes (RAID) implement?



Opciones:

A) RAID 0

B) RAID 1

C) RAID 5

D) RAID 10



Respuesta correcta: B



Explicacin:

El RAID 1 es conocido como "Espejo" (Mirroring). Los datos se replican en dos discos idnticos. Si un disco muere por falla de hardware, la informacin sigue viva e intacta en el segundo. (RAID 0 suma los espacios para velocidad, pero no tiene tolerancia a fallos).

\newpage
# Bloque 3
## CASO 41



Contexto:

El administrador de red de una pequea oficina contrata un servicio de Internet corporativo que le entrega nicamente 1 Direccin IP Pblica. En la oficina existen 40 computadoras con IPs privadas. Sorprendentemente, todas logran navegar por Internet al mismo tiempo utilizando la nica IP pblica disponible.



Pregunta:

¿Qu tecnologa de red alojada en el enrutador perimetral permite esta traduccin de mltiples IPs privadas a una pblica?



Opciones:

A) DHCP

B) DNS

C) NAT

D) VLAN



Respuesta correcta: C



Explicacin:

El Network Address Translation (NAT) reescribe las cabeceras de los paquetes salientes, traduciendo mltiples direcciones IP privadas de una red local (LAN) para que naveguen a travs de una sola direccin IP pblica hacia el exterior (Internet).



---



## CASO 42



Contexto:

Una compaa telefnica necesita conectar 15 ciudades con cable de fibra ptica. El objetivo es que exista una ruta que conecte a todas las ciudades sin formar circuitos cerrados y utilizando la menor cantidad total de cable (costo mnimo de instalacin).



Pregunta:

Modelando el problema como un grafo ponderado, ¿qu algoritmo de optimizacin permite descubrir la red ptima requerida?



Opciones:

A) Bsqueda en Profundidad (DFS)

B) Bsqueda en Anchura (BFS)

C) Algoritmo de Kruskal (rbol de Expansin Mnima)

D) Algoritmo de Floyd-Warshall



Respuesta correcta: C



Explicacin:

El algoritmo de Kruskal (o el de Prim) se utiliza especficamente para hallar el "rbol de Expansin Mnima" (Minimum Spanning Tree) en un grafo ponderado no dirigido. Conecta todos los vrtices sin crear ciclos usando las aristas de menor costo total.



---



## CASO 43



Contexto:

Una consulta SQL agrupa a los empleados por departamento para calcular el salario promedio de cada ¡rea utilizando `GROUP BY`. Sin embargo, el analista financiero quiere filtrar y mostrar exclusivamente aquellos departamentos cuyo salario promedio calculado sea mayor a $20,000.



Pregunta:

¿Qu cl¡usula SQL se debe usar para aplicar este filtro sobre el resultado de la funcin de agregacin?



Opciones:

A) WHERE

B) HAVING

C) ORDER BY

D) LIMIT



Respuesta correcta: B



Explicacin:

La cl¡usula `WHERE` filtra registros individuales antes de que se agrupen. Para filtrar los resultados que provienen de operaciones matem¡ticas de agregacin (como SUM o AVG) sobre grupos formados por `GROUP BY`, el est¡ndar SQL exige el uso obligatorio de la cl¡usula `HAVING`.



---



## CASO 44



Contexto:

Al final de un ciclo de desarrollo ¡gil de dos semanas, el equipo se rene internamente a puertas cerradas. El propsito no es mostrar el producto al cliente, sino discutir honestamente "qu hicieron bien", "qu hicieron mal" y "cmo pueden mejorar como equipo para el prximo ciclo".



Pregunta:

¿Qu ceremonia oficial del framework Scrum est¡n llevando a cabo?



Opciones:

A) Sprint Planning

B) Sprint Review

C) Sprint Retrospective

D) Daily Scrum



Respuesta correcta: C



Explicacin:

La Sprint Retrospective (Retrospectiva del Sprint) es la ltima ceremonia del ciclo y se enfoca en la mejora continua del equipo (procesos y personas). A diferencia de la Sprint Review, donde se presenta el incremento del software terminado al cliente.



---



## CASO 45



Contexto:

Un arquitecto de software define la plantilla `Vehiculo`. Exige que todos los vehculos que la hereden implementen obligatoriamente el mtodo `encender()`, pero adem¡s incluye cdigo real ya programado en el mtodo `apagar()` que ser¡ compartido por todos los herederos sin reescribirse.



Pregunta:

¿Qu elemento de la Programacin Orientada a Objetos debe declarar el arquitecto?



Opciones:

A) Interfaz estricta

B) Clase Abstracta

C) Clase Final

D) Clase Annima



Respuesta correcta: B



Explicacin:

Una Clase Abstracta permite mezclar mtodos "abstractos" (que obligan a las clases hijas a programarlos) con mtodos ya implementados lgicamente con cdigo que pueden ser heredados directamente. Una Interfaz cl¡sica, en cambio, solo define contratos sin poder contener programada de estado.



---



## CASO 46



Contexto:

Un usuario graba un archivo de video 4K de alta calidad con un tamao de 6 GB en su computadora. Al intentar copiarlo a su nueva memoria USB (Flash Drive) recin formateada, el sistema Windows bloquea la transferencia marcando un error de "El archivo es demasiado grande para el sistema de archivos de destino", a pesar de tener 32 GB libres.



Pregunta:

¿Con qu antiguo sistema de archivos de Microsoft est¡ formateada la USB, limitando matem¡ticamente el peso del archivo?



Opciones:

A) NTFS

B) ext4

C) FAT32

D) exFAT



Respuesta correcta: C



Explicacin:

El viejo sistema de archivos FAT32 tiene una restriccin matem¡tica absoluta que impide guardar un archivo individual que pese m¡s de 4 GB, sin importar cu¡nto espacio libre quede en el disco duro. Se debe usar NTFS o exFAT para superarla.



---



## CASO 47



Contexto:

En una red corporativa configurada con la direccin 192.168.1.0/24, el administrador necesita enviar un mensaje de alarma de forma simult¡nea a todas y cada una de las 254 computadoras conectadas en el mismo segmento de red usando un nico paquete enviado.



Pregunta:

¿A qu direccin IP matem¡tica de destino debe apuntar el paquete?



Opciones:

A) 192.168.1.1

B) 192.168.1.0

C) 192.168.1.254

D) 192.168.1.255



Respuesta correcta: D



Explicacin:

En IPv4, la ltima direccin IP de cualquier segmento de subred (donde los bits de host son todos 1) siempre es reservada matem¡ticamente para "Broadcast" (Difusin). Un paquete enviado a esa direccin es replicado por el switch y entregado a todos los nodos.



---



## CASO 48



Contexto:

Un gerente necesita leer reportes que cruzan datos de 5 tablas distintas mediante JOINs masivos y c¡lculos complejos. Para facilitarle la vida, el desarrollador almacena esa consulta compleja en el motor de base de datos de forma que el gerente solo tenga que ejecutar un `SELECT * FROM ReporteGeneral`, interactuando con ella como si fuera una tabla virtual fsica.



Pregunta:

¿Qu objeto acaba de crear el desarrollador en la base de datos?



Opciones:

A) Tabla 

B) Disparador (Trigger)

C) Vista SQL (View)

D) ndice de ¡rbol



Respuesta correcta: C



Explicacin:

Una Vista (View) es una tabla virtual cuyo contenido se genera mediante una consulta (Query) predefinida cada vez que se accede a ella. Abstrae la complejidad, protege datos ocultando columnas reales y facilita la creacin de reportes.



---



## CASO 49



Contexto:

Un sistema de registros hospitalarios contiene 10 millones de historias clnicas almacenadas de forma totalmente desordenada y aleatoria (sin indexacin por nombre o ID). Un enfermero necesita buscar un registro por nombre.



Pregunta:

Dada la falta de orden, ¿cu¡l ser¡ obligatoriamente la complejidad de tiempo (Notacin Big O) en el peor de los casos al buscar el registro?



Opciones:

A) O(1)

B) O(log n)

C) O(n)

D) O(n^2)



Respuesta correcta: C



Explicacin:

Dado que la informacin est¡ desordenada, no se puede aplicar algoritmos optimizados como Bsqueda Binaria. El procesador estar¡ forzado matem¡ticamente a realizar una Bsqueda Lineal, revisando registro por registro hasta encontrarlo o agotar la lista, lo cual representa complejidad O(n).



---



## CASO 50



Contexto:

Un programa genera "Enemigos" en un videojuego. Para no llenar el cdigo principal con mltiples y repetitivos `new Orco()`, `new Goblin()` y de validacin, se crea una clase central que recibe el par¡metro del tipo de enemigo deseado y devuelve autom¡ticamente la instancia del objeto correcta y lista para usar.



Pregunta:

¿Qu patrn de diseo de creacin de software cl¡sico se ha implementado?



Opciones:

A) Singleton

B) Factory (F¡brica)

C) Proxy

D) Adapter



Respuesta correcta: B



Explicacin:

El patrn de diseo Factory Method abstrae la fsica de instanciacin de objetos (`new`). Se delega la responsabilidad a una clase "F¡brica" que decide y devuelve la instancia del objeto correcto segn los par¡metros suministrados.



---



## CASO 51



Contexto:

Se disea un sistema de venta de boletos de cine. Solo queda el ltimo asiento disponible (E-10). Dos clientes hacen clic en comprar en el mismo milisegundo desde distintas computadoras. El Sistema Operativo del servidor atiende dos hilos concurrentes que acceden a la variable global `asientos_restantes` al mismo tiempo, provocando que ambos lo compren exitosamente.



Pregunta:

¿Qu primitiva de sincronizacin cl¡sica debi implementarse a nivel sistema operativo para evitar esta Condicin de Carrera?



Opciones:

A) Memoria Compartida

B) Tuberas (Pipes)

C) Mutex (Sem¡foro binario)

D) Planificador FCFS



Respuesta correcta: C



Explicacin:

Un Mutex (Mutual Exclusion) es un candado utilizado en sistemas concurrentes. Cuando el hilo A entra a la zona crtica de la base de datos para vender el boleto, el Mutex cierra la puerta impidiendo que el hilo B entre a revisar hasta que el hilo A termine.



---



## CASO 52



Contexto:

Un tcnico necesita conectar lgicamente dos computadoras en el mismo escritorio, conectando directamente la tarjeta de red de la PC-A con la tarjeta de la PC-B usando un cable fsico UTP RJ45, sin pasar por un router o switch intermedio.



Pregunta:

¿Qu tipo de cableado es estrictamente necesario, normativamente hablando, para conectar dos equipos de la misma naturaleza o capa OSI sin autonegociacin MDIX?



Opciones:

A) Cable Serial RS-232

B) Cable de Fibra Multimodo

C) Cable Directo (Straight-through)

D) Cable Cruzado (Crossover)



Respuesta correcta: D



Explicacin:

Cl¡sicamente, para conectar dos dispositivos del mismo tipo OSI directamente (PC a PC, o Router a Router), los pines de transmisin (TX) deben cruzarse fsicamente con los pines de recepcin (RX) en el conector opuesto. Esto se logra cableando un extremo con la norma T568A y el otro con la T568B (Cable Cruzado).



---



## CASO 53



Contexto:

Durante un mantenimiento a las 2 a.m., el administrador nota que vaciar la tabla "Auditoria" (5 millones de registros) usando el comando `DELETE FROM Auditoria` tarda horas. 0 l recuerda que existe un comando destructor que ignora el paso fila por fila, vaciando todo de un golpe destructivo.



Pregunta:

¿Qu comando DDL SQL es el adecuado para vaciar la tabla instant¡neamente y de forma irreversible?



Opciones:

A) DROP TABLE Auditoria

B) FORMAT Auditoria

C) TRUNCATE TABLE Auditoria

D) ERASE Auditoria



Respuesta correcta: C



Explicacin:

El comando DELETE es un proceso DML que borra fila por fila y guarda registros en el log de transacciones por si hay Rollback. TRUNCATE es un DDL estructural; destruye y recrea la estructura de la tabla al instante, eliminando los datos sin generar registro lento, hacindolo increblemente r¡pido.



---



## CASO 54



Contexto:

Un programador junior trabajando con el sistema Git escribe su cdigo, guarda el archivo, e ingresa por terminal `git add.` seguido de un exitoso `git commit -m "Se arregl login"`. Sin embargo, el jefe de proyecto revisa el repositorio central corporativo remoto en GitHub y no ve el cdigo del junior.



Pregunta:

¿Por qu el cdigo an no est¡ en el servidor oficial de GitHub?



Opciones:

A) El comando commit sufri de conflictos de fusin locales (Merge Conflicts).

B) El comando commit nicamente guarda los cambios localmente en el disco duro del programador.

C) El servidor principal de GitHub estaba en modo solo-lectura temporalmente.

D) Olvid ejecutar un git pull antes de hacer el commit.



Respuesta correcta: B



Explicacin:

A diferencia de sistemas antiguos centralizados (SVN), Git es distribuido. Un `commit` sella oficialmente los cambios de versin de forma estricta, pero nicamente dentro de la base de datos local de la computadora del programador. Obligatoriamente falta el comando `git push` para enviarlos por red al servidor central.



---



## CASO 55



Contexto:

Se tiene un rbol Binario de Bsqueda (BST) poblado con los nmeros [8, 3, 1, 6, 10, 14]. El profesor exige aplicar un algoritmo de recorrido cl¡sico de profundidad que, matem¡ticamente, imprima como resultado la secuencia estrictamente ordenada de menor a mayor (1, 3, 6, 8, 10, 14).



Pregunta:

¿Qu mtodo de recorrido de ¡rboles produce inevitablemente un arreglo numricamente ordenado en un rbol Binario de Bsqueda?



Opciones:

A) Preorden (Pre-order)

B) Inorden (In-order)

C) Postorden (Post-order)

D) Nivel por Nivel (Anchura)



Respuesta correcta: B



Explicacin:

El recorrido Inorden transita por el ¡rbol procesando primero el sub¡rbol izquierdo (nodos m¡s pequeos), luego la raz, y finalmente el sub¡rbol derecho (nodos m¡s grandes). Si se le aplica este recorrido a cualquier rbol Binario de Bsqueda, el resultado siempre ser¡ un arreglo ordenado ascendentemente.



---



## CASO 56



Contexto:

En la programacin de una calculadora orientada a objetos en Java, el desarrollador crea el mtodo `sumar(int a, int b)`. En la misma clase, para acomodar a los decimales, declara otro mtodo con el nombre idntico `sumar(double a, double b)`. El compilador de lenguaje lo acepta sin marcar ningn error o de duplicidad.



Pregunta:

¿Qu tcnica de la POO se ha aplicado en este escenario?



Opciones:

A) Sobreescritura de Mtodos (Overriding)

B) Sobrecarga de Mtodos (Overloading)

C) Abstraccin Paramtrica

D) Herencia Mltiple 



Respuesta correcta: B



Explicacin:

La Sobrecarga de Mtodos (Overloading) permite definir mltiples mtodos con exactamente el mismo nombre dentro de una misma clase, con la estricta condicin de que la cantidad o el tipo de sus par¡metros (las firmas del mtodo) sean diferentes para que el compilador sepa a cu¡l invocar.



---



## CASO 57



Contexto:

Un analista de centro de control (NOC) necesita verificar r¡pidamente si el servidor de nminas de la sucursal de Mrida est¡ encendido y tiene una tarjeta de red local viva. Para ello, ejecuta desde Windows el comando `ping 192.168.10.5` para analizar los paquetes devueltos.



Pregunta:

¿Qu protocolo de red en la Capa de Red (OSI 3) es la columna vertebral que hace funcionar la comunicacin de diagnstico del comando "ping"?



Opciones:

A) ARP (Address Resolution Protocol)

B) SNMP (Simple Network Management Protocol)

C) TCP (Transmission Control Protocol)

D) ICMP (Internet Control Message Protocol)



Respuesta correcta: D



Explicacin:

ICMP es el protocolo core utilizado en redes de capa 3 para transmitir mensajes de error, informacin de diagnstico y control (como respuestas de "Host Inalcanzable" o "Tiempo de espera superado"). La herramienta "ping" es simplemente una interfaz visual que enva mensajes "Echo Request" y "Echo Reply" nativos de ICMP.



---



## CASO 58



Contexto:

Durante una transaccin SQL compleja, el motor de base de datos activa un mecanismo de seguridad para impedir que otros usuarios alteren temporalmente la fila nmero 800 de la tabla de facturacin que est¡ siendo procesada, pero permite que los dem¡s usuarios sigan leyendo o escribiendo el resto de las facturas libremente en la tabla.



Pregunta:

¿Qu nivel de control de concurrencia y aislamiento relacional ha aplicado el motor de bases de datos para optimizar recursos?



Opciones:

A) Bloqueo de Nivel de Tabla (Table-level Lock)

B) Bloqueo de Nivel de Fila (Row-level Lock)

C) Bloqueo de P¡gina (Page-level Lock)

D) Exclusin Mutua Global (Global Mutex)



Respuesta correcta: B



Explicacin:

El "Bloqueo de Nivel de Fila" (Row-level Lock) es el grano m¡s fino de control de concurrencia en bases de datos. Congela estrictamente la celda de memoria de un solo registro individual (fila), permitiendo que la tabla en general siga sirviendo transacciones concurrentes a miles de usuarios sin estancarse.



---



## CASO 59



Contexto:

El "Dueo del Producto" (Product Owner) redacta el siguiente requerimiento en una tarjeta ¡gil para entreg¡rsela a los programadores del Sprint 1: *"Como cliente registrado de Amazon, quiero poder aadir productos a una lista de deseos, para as guardarlos y comprarlos el da de quincena."*



Pregunta:

¿Cmo se denomina formalmente este formato estructurado de requerimiento utilizado en la metodologa Scrum?



Opciones:

A) Diagrama de Secuencia gil

B) Caso de Uso del Negocio

C) Tarea de Refactorizacin Tcnica

D) Historia de Usuario (User Story)



Respuesta correcta: D



Explicacin:

La Historia de Usuario es una explicacin funcional de una caracterstica de software escrita desde la perspectiva natural del usuario final. Suele obedecer al modelo estricto de: "Como [rol], quiero [objetivo/deseo], para poder [beneficio/razn]". Se estima y se evala en "Puntos de Historia".



---



## CASO 60



Contexto:

Un servidor en Linux est¡ ejecutando una enorme base de datos en memoria (Redis) que de pronto agota por completo los Gigabytes fsicos de la RAM y el espacio virtual (Swap). Sin previo aviso, el ncleo Linux "asesina" abruptamente uno de los procesos del motor Redis para evitar un p¡nico crtico total y colapso del hardware.



Pregunta:

¿Qu demonio o mecanismo nativo del kernel de Linux interviene como "ltimo recurso" cortando cabezas en situaciones de agotamiento severo de memoria?



Opciones:

A) El Recolector de Basura (Garbage Collector)

B) El demonio Cron

C) El proceso Init/Systemd

D) El OOM Killer (Out Of Memory Killer)



Respuesta correcta: D



Explicacin:

El OOM Killer es una rutina extrema del kernel de Linux. Cuando el sistema agota por completo la RAM fsica y la virtual, en lugar de permitir que la m¡quina entera se congele o bloquee fatalmente, este mecanismo busca heursticamente el proceso m¡s pesado e ineficiente y lo termina forzosamente (Kill -9) para que el sistema respire y sobreviva.

\newpage
# Bloque 4
## CASO 61



Contexto:

En una red corporativa muy grande, el administrador descubre que configurar manualmente las rutas en los enrutadores es imposible tras agregar 50 oficinas nuevas. Decide implementar un protocolo que permita a los enrutadores aprender autom¡ticamente la topologa intercambiando sus tablas de mtricas bas¡ndose en el estado de los enlaces y la velocidad fsica del cable.



Pregunta:

¿Qu protocolo de enrutamiento din¡mico interno, basado en el algoritmo de Dijkstra, es el est¡ndar m¡s robusto para este propsito?



Opciones:

A) RIP (Routing Information Protocol)

B) BGP (Border Gateway Protocol)

C) OSPF (Open Shortest Path First)

D) STP (Spanning Tree Protocol)



Respuesta correcta: C



Explicacin:

OSPF es el protocolo de enrutamiento interior de estado de enlace dominante a nivel corporativo. Utiliza el algoritmo del "camino m¡s corto" (Dijkstra) considerando el costo y el ancho de banda del enlace para tomar decisiones de ruteo, a diferencia del obsoleto RIP que solo cuenta el nmero de saltos.



---



## CASO 62



Contexto:

En la arquitectura de un sistema mundial de redes sociales masivas alojado en mltiples continentes, el sistema de bases de datos pierde conectividad de red entre Europa y Amrica. Los arquitectos asumen que pueden permitir que el usuario europeo lea datos un poco atrasados (desactualizados), pero es imperativo que los servidores no se caigan y que toleren la ruptura del cable transatl¡ntico.



Pregunta:

Segn el Teorema CAP, ¿qu dos aristas matem¡ticas est¡ eligiendo el negocio?



Opciones:

A) Consistencia y Disponibilidad (CA)

B) Disponibilidad y Tolerancia a Particiones (AP)

C) Consistencia y Tolerancia a Particiones (CP)

D) Tolerancia a Particiones y Escalabilidad Vertical



Respuesta correcta: B



Explicacin:

El Teorema CAP para bases de datos distribuidas establece que solo puedes elegir 2 de 3 garantas (Consistencia, Disponibilidad o Particin). Al asumir que un cable se rompi (Particin) y al priorizar que el usuario vea datos aunque no sean los m¡s recientes de ltimo milisegundo (Disponibilidad en vez de Consistencia "Fuerte"), la eleccin es AP.



---



## CASO 63



Contexto:

Un procesador fsico de 8 ncleos est¡ colapsado corriendo 5,000 hilos (threads) activos de un servidor web monoltico en el mismo milisegundo. La CPU dedica m¡s tiempo a guardar el estado de un hilo actual en registros de memoria RAM, sacarlo, cargar el estado del siguiente y repetir, que a procesar los c¡lculos del servidor web.



Pregunta:

¿Cmo se denomina este costoso proceso del Sistema Operativo a nivel de arquitectura del procesador?



Opciones:

A) Algoritmo FCFS (First Come First Serve)

B) Sobrepaginacin de Memoria ROM

C) Cambio de Contexto (Context Switching)

D) Ejecucin Multihilo Simtrica (SMT)



Respuesta correcta: C



Explicacin:

El Cambio de Contexto (Context Switch) es el proceso mediante el cual el Sistema Operativo suspende un hilo o proceso en CPU, almacena su estado interno, e introduce otro. Cuando el nmero de hilos vivos es ridculamente grande para los ncleos fsicos, el costo por cambio de contexto ahoga el rendimiento real.



---



## CASO 64



Contexto:

A punto de lanzar a produccin, el equipo detecta que el mdulo de control de usuarios tiene cdigo sucio, duplicado y carece del patrn MVC que acordaron. El gerente decide lanzarlo "as como est¡" para cumplir con la fecha del contrato, prometiendo que el cdigo se reparar¡ en la siguiente fase tras recibir los fondos.



Pregunta:

En trminos de la Ingeniera de Software ¡gil, ¿qu concepto de riesgo acumulativo ha incurrido el equipo?



Opciones:

A) Refactorizacin prematura

B) Defectos de Pruebas Unitarias

C) Inyeccin de Dependencias

D) Deuda Tcnica



Respuesta correcta: D



Explicacin:

La Deuda Tcnica es el "inters de cdigo" que contrae un proyecto cuando se eligen soluciones f¡ciles, r¡pidas y sucias sobre metodologas limpias (best practices) por restricciones de tiempo. Si no se "paga" (refactorizando en sprints futuros), asfixiar¡ y ralentizar¡ desarrollos nuevos por la alta fragilidad del cdigo.



---



## CASO 65



Contexto:

El programador de una estructura "Tabla Hash (Hash Map)" descubre que, tras ingresar 1 milln de registros, su compleja funcin matem¡tica ha asignado a varios registros completamente distintos (Ej. "Roberto" y "Rubn") el mismo idntico ndice de cajn de memoria (Bucket 501), causando que el sistema ralentice sus bsquedas al amontonar registros en la misma zona.



Pregunta:

¿Qu anomala matem¡tica estructural acaba de sufrir su algoritmo de diccionario?



Opciones:

A) Exceso de Recursividad

B) Colisin Hash (Hash Collision)

C) Pila Desbordada (Stack Overflow)

D) Fragmentacin de B-Tree



Respuesta correcta: B



Explicacin:

Una Colisin Hash ocurre inevitablemente cuando una funcin algortmica resume valores diferentes (Inputs) proyect¡ndolos hacia el mismo valor de salida o llave matem¡tica (Output/ndice). Un buen diseo de Tabla Hash debe implementar mitigaciones fuertes (como Listas Enlazadas en el cajn de bucket) para sobrevivir a las colisiones.



---



## CASO 66



Contexto:

Se audita la calidad del diseo de programacin Orientada a Objetos de un banco. Se encuentra que la clase `CajaRegistradora` llama directamente y de forma dura a mtodos internos protegidos de la clase `Inventario`. Adem¡s, si el programador cambia el tipo de variable en `Inventario`, la `CajaRegistradora` explota inmediatamente y ya no compila.



Pregunta:

¿Qu principio cualitativo de la POO se ha violado gravemente en este diseo de arquitectura sucia?



Opciones:

A) Alta Cohesin

B) Alto Acoplamiento (Alta interdependencia)

C) Baja Herencia

D) Alta Encapsulacin



Respuesta correcta: B



Explicacin:

El diseo de software dicta: "Alta cohesin, Bajo acoplamiento". Cuando una clase asume, depende y conoce los entresijos internos, variables rgidas o mtodos fuertes de otra clase, se dice que existe un *Alto Acoplamiento*. Esto es veneno en arquitecturas porque el cdigo se vuelve como espagueti: mover una pieza rompe todo a su alrededor.



---



## CASO 67



Contexto:

Una empresa compra dos proveedores de Internet diferentes (ISP) en caso de que uno se caiga (redundancia extrema). Para que su centro de datos en la red corporativa negocie inteligentemente las rutas del tr¡fico global (Internet exterior mundial) hacia ambos ISPs, debe anunciar sus IPs din¡micas conectando su router corporativo maestro directamente con los routers de los proveedores de internet.



Pregunta:

¿Qu protocolo colosal de enrutamiento externo (Exterior Gateway Protocol) es el nico capaz de sostener y enrutar las tablas de internet a nivel mundial?



Opciones:

A) OSPF (Open Shortest Path First)

B) BGP (Border Gateway Protocol)

C) EIGRP

D) RIPv2



Respuesta correcta: B



Explicacin:

BGP es conocido como "El Protocolo de Internet" a nivel macro. Mientras OSPF y EIGRP son geniales dentro del edificio corporativo (IGP), BGP se utiliza exclusivamente para intercambiar informacin de encaminamiento de frontera entre el corporativo y los verdaderos proveedores o entre pases (Sistemas Autnomos).



---



## CASO 68



Contexto:

En un portal de compras, el backend es escrito en Node.js operando sobre MongoDB (Una base de datos documental). El atacante entra al formulario de acceso de la p¡gina y en la casilla del correo, en lugar de ingresar "texto plano", inyecta maliciosamente un objeto JSON avanzado como `{"$gt": ""}` logrando que el backend procese el objeto y bypasse el formulario exitosamente como si la contrasea existiera.



Pregunta:

¿Qu tipo de ataque web moderno acaba de ocurrir ante este descuido del servidor?



Opciones:

A) Inyeccin SQL Cl¡sica Blind ()

B) Ataque de Fuerza Bruta Local

C) Inyeccin NoSQL

D) Cross-Site Scripting (XSS)



Respuesta correcta: C



Explicacin:

Aunque las bases MongoDB no son relacionales ni usan "SELECT/WHERE" y son inmunes a Inyeccin SQL, sufren la letal "Inyeccin NoSQL". Si el cdigo de la API no valida fuertemente las entradas (sanitizacin) y permite que un usuario inserte JSON malicioso que acte como operador (Ej. Operador Mayor Que `$gt`), el sistema NoSQL evaluar¡ la condicional siempre como Verdadera engaando la del login.



---



## CASO 69



Contexto:

Un servidor Linux de desarrollo marca el error fatal de "Disco lleno" impidiendo subir fotos. El programador asustado ejecuta el comando `df -h` y la terminal revela algo absurdo: El disco duro principal de 1 Terabyte tiene todava 800 Gigabytes completamente libres. El programador intenta crear un archivo vaco `.txt` y Linux le niega la accin.



Pregunta:

¿Qu lmite estructural interno de la tabla de ext4 ha llegado secretamente al 100% de agotamiento asfixiando al servidor aunque tenga mucho espacio en disco duro?



Opciones:

A) Exhaustion de la RAM Swap

B) Agotamiento excesivo de Inodos (Inodes Exhaustion)

C) Desbaste sectorial del RAID

D) Lmite de permisos del usuario Root



Respuesta correcta: B



Explicacin:

En Linux, el espacio de almacenamiento real y la libreta de direcciones fsica (Inodos) corren por separado. Un inodo es el registro administrativo (tamao, tipo, bloque) de 1 archivo. Si el programador web crea millones de archivos minsculos (de 1KB o vacos), los 800GB sobrar¡n, pero el contador del directorio se saturar¡ impidiendo lgicamente que Linux liste un archivo nuevo.



---



## CASO 70



Contexto:

En una revisin de cdigo en Java, encuentras la clase masiva `FacturaVentas`. Dicha clase calcula el subtotal, suma el IVA, dibuja la interfaz gr¡fica de la tabla, conecta con el puerto de la impresora trmica e inserta el registro final en PostgreSQL.



Pregunta:

Segn los pilares de diseo limpio arquitectnico "SOLID", ¿qu principio capital se ha roto de forma rotunda en este cdigo?



Opciones:

A) Liskov Substitution Principle (Sustitucin de Liskov)

B) Interface Segregation Principle (Segregacin de Interfaces)

C) Dependency Inversion Principle (Inversin de Dependencias)

D) Single Responsibility Principle (Principio de Responsabilidad anica)



Respuesta correcta: D



Explicacin:

La 'S' de SOLID establece que una clase de software "solo debe tener una nica, clara y atmica razn para cambiar y para existir". Al agrupar finanzas (matem¡ticas), vistas (GUI) y redes (impresin/BD) en una clase "Clase Dios (God Object)", el diseo es catico e inmanejable.



---



## CASO 71



Contexto:

Se desarrolla un algoritmo que toma una lista de correos electrnicos y busca correos duplicados. El programador disea la solucin creando un bucle `for` que itera todos los registros, y dentro de ese bucle anida ciegamente otro bucle `for` idntico que escanea nuevamente toda la lista completa desde cero.



Pregunta:

Analticamente hablando, ¿a qu nivel de complejidad y degradacin de rendimiento matem¡tica pertenece este diseo algortmico?



Opciones:

A) Lineal: O(n)

B) Logartmica: O(log n)

C) Cuadr¡tica: O(n^2)

D) : O(1)



Respuesta correcta: C



Explicacin:

Un ciclo que itera "n" veces (dependiendo del tamao de los datos) equivale a complejidad lineal O(n). Si el desarrollador encierra un bucle dependiente del mismo tamao de datos dentro del primer bucle, el algoritmo forzosamente tendr¡ que realizar el c¡lculo cruzado completo ($n \times n$), degradando exponencialmente el rendimiento a O(n), lo que crashear¡ el CPU si ingresan cientos de miles de registros.



---



## CASO 72



Contexto:

En el desarrollo de un Backend con el framework Spring Boot, un arquitecto decide que ninguna clase debe instanciar y controlar manualmente conexiones de base de datos usando la orden nativa e inflexible `new ConexionBD()`. En su lugar, el Framework inyecta o regala de forma m¡gica la instancia ya pre-configurada directamente en los constructores de las clases a medida que se inicie la aplicacin.



Pregunta:

¿Qu patrn avanzado de diseo es este, vital en frameworks como Angular, Spring o Laravel?



Opciones:

A) Patrn Observador 

B) Inyeccin de Dependencias (Dependency Injection / Inversion of Control)

C) Decorador Din¡mico Abstracto

D) Adaptador Funcional



Respuesta correcta: B



Explicacin:

La Inyeccin de Dependencias quita la responsabilidad a la clase de tener que construir manualmente sus componentes pesados. Facilita enormemente las pruebas autom¡ticas (Mocks), el mantenimiento modular y reduce dr¡sticamente el acoplamiento al aplicar la Inversin de Control.



---



## CASO 73



Contexto:

Al dar la induccin de redes al personal nuevo, el arquitecto de redes omite el Modelo OSI de siete capas argumentando que, para fines estandarizados, pragm¡ticos y reales del desarrollo moderno de internet global, solo es necesario basarse en el modelo condensado y consolidado.



Pregunta:

¿Qu modelo de estandarizacin condensado de cuatro capas en la industria rige realmente la arquitectura que forma el internet?



Opciones:

A) El modelo Token-Ring Macro

B) El modelo ATM (Asynchronous Transfer Mode)

C) El modelo TCP/IP

D) El modelo IPv6 Subnet Layering



Respuesta correcta: C



Explicacin:

El Modelo OSI (con sus 7 tericas e inmaculadas capas) es el est¡ndar educativo fundamental. Sin embargo, en implementaciones reales, ingenieriles y pr¡cticas del protocolo dominante del mundo de la nube global, el Modelo TCP/IP condensa estas funciones en cuatro robustas capas de trabajo: Aplicacin, Transporte, Internet y Acceso a Red.



---



## CASO 74



Contexto:

El volumen masivo de datos del corporativo ha saturado al disco fsico del nodo maestro central MySQL, asfixiando por completo su lectura y escritura vertical. El CTO ordena fragmentar y "Partir o Cuchillear" fsicamente los datos, de modo que los registros de los clientes de Amrica se alojen y residan en un servidor A, y los de Europa en un servidor B por separado.



Pregunta:

¿Qu tcnica arquitectnica de particionamiento distribuido (Escalabilidad Horizontal de datos) est¡n instaurando?



Opciones:

A) Clster Hbrido

B) Replicacin Maestro-Esclavo

C) Data Sharding (Fragmentacin Horizontal de Base de Datos)

D) Cach Distribuido (Redis Layers)



Respuesta correcta: C



Explicacin:

El "Sharding" o "Fragmentacin Horizontal" consiste en tomar una tabla descomunal con miles de millones de filas, dividirla matem¡ticamente por piezas geogr¡ficas, llaves o alfabticamente (Shards/Fragmentos), y alojar cada pedazo fsico de disco en distintos servidores o clsteres separados. No debe confundirse con Replicacin, donde todos los servidores guardan un clon del 100% de la misma data completa (redundancia ineficiente en disco).



---



## CASO 75



Contexto:

Un servidor que administra las grabaciones bancarias pierde el suministro de energa abruptamente. Al encender, un mecanismo invisible de tolerancia a fallos a nivel particin nativa recupera r¡pidamente los metadatos de los videos que estaban siendo copiados, asegur¡ndose de que los bytes interrumpidos se corrijan y cancelen para no dejar la tabla del archivo "sucia".



Pregunta:

¿Cmo se le denomina tcnicamente a esta funcionalidad vital propia de sistemas de archivo avanzados y slidos (como NTFS de Windows o ext4 de Linux)?



Opciones:

A) Sistema de Archivos FAT Nativo Exclusivo

B) Journaling (Sistema de Archivos con Registro / Bit¡cora Oculta)

C) Indexacin Profunda Externa

D) Particionamiento en espejo Swap (Swap Mirroring)



Respuesta correcta: B



Explicacin:

El "Journaling" es una subrutina oculta que guarda metadatos (un diario atmico minucioso) de lo que el sistema est¡ a punto de escribir en el disco justo antes de iniciar la escritura pesada. En caso de corte elctrico inesperado en milisegundos, el OS lee ese pequeo diario, determina qu escritura qued rota a medias, revierte el caos y devuelve la estabilidad a la base de archivo.



---



## CASO 76



Contexto:

Varios programadores envan cdigo simult¡neamente al repositorio central todo el da. Inmediatamente y de forma automatizada, en la nube arranca un bot que compila todo, descarga dependencias NPM y corre la batera de pruebas unitarias sobre el cdigo fusionado por cada envo, emitiendo una alarma si alguien rompi el sistema remotamente.



Pregunta:

¿Qu pr¡ctica de ciclo de DevOps asegura este ensamblaje ¡gil,, automatizado y seguro de calidad?



Opciones:

A) Infraestructura como Cdigo (IaC)

B) Entregas Continuas de Aceptacin (UAT)

C) Integracin Continua (CI / Continuous Integration)

D) Refactorizacin en Pipeline Fsico



Respuesta correcta: C



Explicacin:

La Integracin Continua (CI) es la mdula del DevOps. En lugar de fusionar y ensamblar los cdigos de 20 desarrolladores a final del mes y sufrir choques incomprensibles (Integration Hell), el Pipeline (GitHub Actions, Jenkins) valida autom¡ticamente, mediante la compilacin y pruebas, cada diminuto cdigo (Commit) que se sube en vivo.



---



## CASO 77



Contexto:

Se desarrolla un sistema de mensajera al estilo Instagram. El programador modela la informacin usando Grafos Matem¡ticos, argumentando que la base de la plataforma es "Si el Usuario A decide seguir y suscribirse al Usuario B, no implica ni forza para nada que el Usuario B decida seguir al Usuario A de regreso".



Pregunta:

Por su caracterstica restrictiva relacional, ¿qu tipo de modelo de Grafo describe la programacin de estos seguidores?



Opciones:

A) Grafo Bipartito No Conexo Absoluto

B) Grafo Completo Total (Mesh Fuerte)

C) Grafo No Dirigido con pesos nulos

D) Grafo Dirigido (Digrafo / Flechas apuntadas unidireccionales)



Respuesta correcta: D



Explicacin:

Las relaciones de Facebook ("Amistad bidireccional forzosa") operan bajo un Grafo No Dirigido, donde la arista corre en ambas vas siempre y une est¡ticamente a A y B. Instagram y Twitter operan como "Grafos Dirigidos", cuyas relaciones son flechas (aristas dirigidas unidireccionales). "A sigue a B" es independiente de que "B siga a A".



---



## CASO 78



Contexto:

El programador Senior de criptografa crea una clase Java/C# llamada `GeneradorDeLlavesBancarias`. Para evitar brechas futuras de seguridad, sella explcita y contundentemente la arquitectura prohibiendo estructuralmente que cualquier desarrollador logre crear, compilar o inventar una nueva clase "hija" derivada bas¡ndose en esta mediante el uso del principio de herencia.



Pregunta:

¿Qu modificador de acceso o declaracin protectora implement?



Opciones:

A) Clase Abstracta (Abstract) 

B) Clase Local Privada (Private Static Local)

C) Clase Final (Final o Sealed)

D) Clase Virtual (Virtual Async Class)



Respuesta correcta: C



Explicacin:

La palabra reservada `final` en Java (o `sealed` en C#) se aplica a una clase superior para "cortar el ¡rbol genealgico" de raz, impidiendo absolutamente que pueda extenderse y generar herencia, garantizando la inviolabilidad del diseo central y eliminando anulaciones o falsificaciones polimrficas de sus mtodos sensitivos de negocio.



---



## CASO 79



Contexto:

El equipo IT reemplaza los equipos de transmisin del corporativo. Deciden inhabilitar por completo el viejo est¡ndar Wi-Fi casero corporativo porque utilizaba un apretn de manos dbil de 4 vas (Four-Way Handshake) altamente susceptible a ataques de fuerza bruta en diccionarios si era capturado a distancia por un hacker con una antena externa y tarjeta modo monitor (Aircrack).



Pregunta:

¿A qu antiguo est¡ndar y vulnerabilidad de ciberseguridad inal¡mbrica mundial le est¡n diciendo adis para dar la bienvenida a infraestructuras seguras Enterprise o de Criptografa de Intercambio Equivalente a Pares limpios?



Opciones:

A) El est¡ndar de proteccin WPA3 (SAE) de ruteo

B) La vulnerabilidad estructural del modelo PSK y al est¡ndar WPA2

C) Criptografa MAC Local Filtering B¡sico

D) Autenticaciones Biomtricas SSH



Respuesta correcta: B



Explicacin:

El viejo WPA2-PSK estuvo plagado de debilidades de Fuerza Bruta offline al permitir el espionaje y robo a del archivo Handshake inicial. Su sucesor, WPA3, introduce el modelo criptogr¡fico SAE (Simultaneous Authentication of Equals) eliminando el handshake del diccionario, impidiendo los robos fuera de lnea, obligando a los hackers a intentos manuales que son penalizados con latencia.



---



## CASO 80



Contexto:

El administrador planea los respaldos mundiales de una base de datos pesada. Los domingos hace un respaldo `Full` (Completo) a las 00:00. El lunes hace una copia pequea salvando y capturando *exclusivamente y de forma estricta nica* los cambios ocurridos en las ltimas 24 horas despus de la copia del domingo completo. El martes toma una nueva foto guardando *nicamente* los bytes sucios insertados desde la copia mnima del lunes inmediato.



Pregunta:

¿Qu esquema restrictivo de ciclo de respaldo logartmico est¡ aplicando en la industria SysAdmin?



Opciones:

A) Respaldo Diferencial

B) Respaldo Completo Rotativo

C) Respaldo de Imagen Din¡mica 

D) Respaldo Incremental



Respuesta correcta: D



Explicacin:

El Respaldo Incremental ahorra un masivo e inmenso espacio en disco duro, ya que nicamente toma y clona la "diferencia" matem¡tica respecto al ltimo respaldo de cualquier tipo en la cadena m¡s inmediata. (Ojo: El Respaldo "Diferencial", a diferencia del incremental, es torpe pero seguro y pesado: graba y suma los cambios ocurridos estrictamente siempre compar¡ndolos en peso respecto al gran Full dominical perimetral nativo).

\newpage
# Bloque 5
## CASO 81



Contexto:

El equipo modela una base de datos escolar. Se determinan dos entidades: "Estudiantes" y "Clases". Un estudiante puede inscribirse en muchas clases y una clase puede contener muchos estudiantes matriculados. El ingeniero novato une ambas tablas directamente con una sola Llave For¡nea.



Pregunta:

¿Por qu el modelo del ingeniero fallar¡ estructuralmente y qu elemento relacional es obligatorio crear?



Opciones:

A) Fallar¡ por redundancia transitiva; requiere desnormalizar en Primera Forma Normal.

B) La relacin Muchos a Muchos (M:N) es matem¡ticamente imposible de representar con una simple Llave For¡nea directa entre dos tablas. Obliga a construir una "Tabla Intermedia" o de interseccin (ej. "Inscripciones") que contenga ambas llaves primarias.

C) El motor SQL bloquear¡ la tabla; requiere usar disparadores (Triggers).

D) Fallar¡ porque no cumple con la restriccin de integridad de dominio unvoco de Boyce-Codd.



Respuesta correcta: B



Explicacin:

En bases de datos relacionales, una relacin M:N no se puede almacenar con llaves for¡neas entre dos entidades, ya que se necesitara un arreglo din¡mico en cada celda, violando la 1FN. La regla de oro exige "romper" la relacin M:N mediante una tercera tabla pivote o asociativa que mapee a ambos elementos en relaciones de 1:N.



---



## CASO 82



Contexto:

El gerente del corporativo exige que todos los empleados puedan navegar por internet, pero desea bloquear el acceso a sitios de redes sociales. Adem¡s, quiere que las p¡ginas de uso diario (como portales de noticias) se almacenen en una memoria central para ahorrar ancho de banda al corporativo.



Pregunta:

¿Qu dispositivo de red o componente de infraestructura es el indicado para cumplir ambos objetivos funcionales?



Opciones:

A) Servidor Proxy Perimetral

B) Enrutador de Borde BGP

C) Switch de Capa 2

D) Balanceador de Carga



Respuesta correcta: A



Explicacin:

Un servidor Proxy acta como un intermediario o portero a nivel de la Capa de Aplicacin. No solo filtra y bloquea dominios especficos (control de acceso web), sino que su funcin m¡s clebre es almacenar en cach las p¡ginas visitadas por los usuarios, acelerando las respuestas de red locales y ahorrando el ancho de banda del ISP externo.



---



## CASO 83



Contexto:

Un centro de datos instala software de virtualizacin. En lugar de instalar Windows o Linux como sistema principal y luego cargar m¡quinas virtuales dentro de l, el administrador formatea los discos duros nativos en blanco e instala VMWare ESXi directamente sobre el procesador y hardware del servidor.



Pregunta:

¿Qu tipo de arquitectura de virtualizacin robusta est¡ implementando el centro de datos?



Opciones:

A) Hypervisor Tipo 2 (Hosted)

B) Contenedores Dockerizados

C) Hypervisor Tipo 1 (Bare-Metal)

D) Virtualizacin de Sistema Operativo Emulado



Respuesta correcta: C



Explicacin:

El Hypervisor Tipo 1, tambin llamado "Bare-Metal" (Metal Descubierto), es el rey de la virtualizacin corporativa. Se instala directamente sobre el hardware fsico del servidor sin depender de un sistema operativo subyacente. Esto elimina a los intermediarios pesados, logrando una eficiencia de procesador abrumadora en comparacin con el Tipo 2 (VirtualBox/VMWare Workstation) que corre como una aplicacin m¡s sobre Windows.



---



## CASO 84



Contexto:

Durante la etapa de diseo de una aplicacin, el programador copia y pega un bloque de cdigo matem¡tico 15 veces a lo largo del sistema porque "era m¡s r¡pido". Aunque el programa funciona, aos despus, al intentar cambiar una variable en la frmula, el equipo tarda semanas persiguiendo errores y fallas inexplicables a lo largo del sistema entero.



Pregunta:

¿Qu actividad de ingeniera ¡gil no se realiz para curar este problema cuando el cdigo an era manejable?



Opciones:

A) Pruebas de Estrs Continuo (Load Testing)

B) An¡lisis de Requerimientos de Casos de Uso

C) Refactorizacin (Refactoring) para saldar la Deuda Tcnica

D) Programacin Extrema (Pair Programming)



Respuesta correcta: C



Explicacin:

La Deuda Tcnica se genera cuando el equipo elige atajos r¡pidos (copiar y pegar) en lugar de soluciones arquitectnicas limpias. La "Refactorizacin" es la tarea obligatoria de ingeniera para pagar esta deuda: consiste en limpiar, reestructurar y optimizar el cdigo fuente interno sin alterar en absoluto su funcionalidad visual externa (ej. extraer esos 15 bloques duplicados en una sola funcin central).



---



## CASO 85



Contexto:

Un ¡rbol binario de bsqueda recibe datos numricos ordenados del 1 al 10,000 en secuencia. El desarrollador nota que las consultas son extremadamente lentas, como si no hubiera ningn ¡rbol programado, porque todos los nodos se insertaron hacia un solo lado formando una enorme lnea recta.



Pregunta:

¿Qu tipo de estructura de ¡rbol especializada debi implementar para impedir esta degradacin algortmica?



Opciones:

A) rbol de Segmentos Unidireccional

B) rbol N-Ario

C) rbol AVL o rbol Rojo-Negro (rboles Auto-balanceables)

D) Grafo Cclico Dirigido



Respuesta correcta: C



Explicacin:

Un rbol Binario tradicional se degrada a una vil lista enlazada (Complejidad O(n)) si se le introducen datos ya ordenados secuencialmente. Los rboles AVL (o Red-Black Trees) detectan este desbalance peligroso durante las inserciones y realizan "Rotaciones" matem¡ticas autom¡ticas para mantenerse simtricos y chaparros, garantizando siempre su extrema velocidad de O(log n).



---



## CASO 86



Contexto:

En un sistema orientado a objetos, el arquitecto define un mtodo `calcularArea()` en la clase `Poligono`. Luego, las clases derivadas `Triangulo` y `Cuadrado` definen su propia implementacin matem¡tica y frmula de esa misma funcin, invalidando la del padre pero conservando el mismo nombre del mtodo en todo el sistema.



Pregunta:

¿Qu pilar o caracterstica de la POO ha aplicado el arquitecto?



Opciones:

A) Sobrecarga de Mtodos

B) Ocultamiento de Variables

C) Polimorfismo por Sobreescritura (Method Overriding)

D) Abstraccin de Datos



Respuesta correcta: C



Explicacin:

La Sobreescritura de Mtodos (Overriding) es la manifestacin del Polimorfismo. Ocurre cuando una clase hija decide ignorar o cambiar el comportamiento dictado por su clase padre, "sobreescribiendo" el mtodo con su propia, permitiendo la adaptacin sin cambiar la interfaz global.



---



## CASO 87



Contexto:

El equipo de redes soluciona un problema de latencia cambiando un conector daado en un cable de cobre trenzado y reemplazando un repetidor de seal b¡sico en el cuarto de telecomunicaciones.



Pregunta:

Segn el Modelo de Referencia OSI, ¿en qu capa ocurrieron las reparaciones estrictamente fsicas de esta falla?



Opciones:

A) Capa 3 (Red)

B) Capa 2 (Enlace de Datos)

C) Capa 4 (Transporte)

D) Capa 1 (Fsica)



Respuesta correcta: D



Explicacin:

La Capa 1 (Fsica) del Modelo OSI abarca los voltajes, radiofrecuencias, especificaciones de los conectores fsicos, y componentes electrnicos que no piensan ni leen datos, sino que simplemente repiten pulsos elctricos (como los concentradores/Hubs, cables UTP y repetidores).



---



## CASO 88



Contexto:

En un almacn de datos (Data Warehouse), se tiene una tabla masiva de mil millones de registros. Se requiere crear un ndice sobre la columna "Gnero" que contiene exclusivamente los valores "Masculino" o "Femenino". Usar un ndice B-Tree cl¡sico resulta intil, lento y pesado debido a la nula diversidad de valores.



Pregunta:

¿Qu tipo de ndice especial para bases de datos es el ideal y est¡ optimizado matem¡ticamente para columnas con bajsima cardinalidad (pocos valores distintos)?



Opciones:

A) ndice Hash Compuesto

B) ndice Agrupado Cclico

C) ndice Bitmap (Mapa de bits)

D) ndice de Texto Completo



Respuesta correcta: C



Explicacin:

Los ndices Bitmap est¡n diseados exactamente para columnas con baja cardinalidad (ej. "Estado_Civil", "Activo_Inactivo"). En lugar de guardar pesados ¡rboles, el motor asigna un arreglo masivo de "Ceros" y "Unos" para cada valor posible. Las consultas cruzadas se vuelven hiper-veloces usando simples compuertas (AND/OR) a nivel procesador.



---



## CASO 89



Contexto:

Un equipo disea un nuevo sistema operativo seguro para misiones aeroespaciales crticas. Deciden reducir el corazn del sistema operativo al mnimo tamao posible, delegando los drivers, los servidores de gr¡ficos y los sistemas de archivos a procesos de nivel de usuario, fuera de la zona protegida del ncleo.



Pregunta:

¿Qu arquitectura de diseo de ncleo de sistema operativo est¡n empleando?



Opciones:

A) Arquitectura Monoltica Cl¡sica

B) Arquitectura de Microkernel

C) Sistema Operativo de Tiempo Compartido

D) Arquitectura Distribuida en Red



Respuesta correcta: B



Explicacin:

En un diseo Microkernel, el ncleo (Kernel) es diminuto y solo gestiona lo indispensable (comunicacin de mensajes y hardware b¡sico). Todo lo dem¡s corre en el "Espacio de Usuario". Si el controlador de la impresora colapsa o se congela, el sistema completo sobrevive porque la falla est¡ fuera de la zona ncleo. (Windows o Linux cl¡sico son Monolticos gigantes donde una falla en el driver tumba a todo el sistema provocando la Pantalla Azul).



---



## CASO 90



Contexto:

Se desarrolla un sistema de reportes en bolsa de valores donde el mdulo "DashboardVisual" y el mdulo "AlertaCelular" necesitan ser informados instant¡neamente cada vez que el precio de una accin cambia en el objeto "CotizadorCentral", sin necesidad de tener un bucle que consulte repetidamente.



Pregunta:

¿Qu Patrn de Diseo del software orquesta eficientemente este mecanismo de notificaciones automatizadas estilo "suscripcin"?



Opciones:

A) Patrn F¡brica (Factory)

B) Patrn Observador (Observer)

C) Patrn Fachada (Facade)

D) Patrn Adaptador (Adapter)



Respuesta correcta: B



Explicacin:

El Patrn de Diseo Observer establece una relacin de "Publicador-Suscriptor" uno a muchos. Cuando el sujeto central (el publicador del precio) cambia su estado, notifica silenciosamente e invoca a todos los objetos que est¡n registrados en su lista de suscriptores para que se actualicen inmediatamente sin forzar bsquedas activas y pesadas.



---



## CASO 91



Contexto:

Un programador junior ejecuta un algoritmo de recursividad profundo sin darse cuenta de que su condicin base est¡ mal estructurada. Tras mil ciclos, el programa explota y se aborta repentinamente marcando un "Stack Overflow Error".



Pregunta:

Tcnicamente a nivel de arquitectura de la memoria y compilacin, ¿qu estructura interna se sobrecarg hasta reventar?



Opciones:

A) La Pila de Llamadas del Sistema (Call Stack)

B) El Registro Acumulador del Procesador (ALU)

C) La cola circular de paginacin del sistema de archivos

D) El bloque de memoria reservada Heap de objetos din¡micos



Respuesta correcta: A



Explicacin:

Cada vez que una funcin invoca a otra (o a s misma en la recursividad), el sistema guarda las variables de entorno actuales y la instruccin de "retorno" en la "Pila de Llamadas" o Call Stack de memoria. Como la recursividad del junior fue infinita, la memoria fsica asignada al proceso del Call Stack lleg a su tope matem¡tico (Lmite de profundidad) y se derram.



---



## CASO 92



Contexto:

En la librera "MatematicasAvanzadas" creada en C#, el equipo nota que cada vez que necesitan sumar dos nmeros consumen recursos instanciando la clase con el operador `new MatematicasAvanzadas()`. Para ahorrar memoria, el arquitecto refactoriza la funcin para permitir que se ejecute la suma llamando directamente `MatematicasAvanzadas.sumar()`, prescindiendo de instanciar un objeto.



Pregunta:

¿Con qu modificador especial de la programacin orientada a objetos debi declarar el arquitecto la funcin "sumar"?



Opciones:

A) Abstracto (Abstract)

B) Virtual (Virtual)

C) (Static)

D) Sellado (Sealed)



Respuesta correcta: C



Explicacin:

Los mtodos o atributos declarados como (`static`) pertenecen globalmente a la clase misma y no a sus mltiples objetos derivados. Esto permite acceder a la funcionalidad matem¡tica de la clase instant¡neamente sin obligar al compilador a reservar memoria din¡mica para crear (instanciar) una variable u objeto nuevo.



---



## CASO 93



Contexto:

La empresa de servicios de contenido en streaming distribuye rplicas idnticas de su servidor de videos en 5 pases distintos (Japn, Estados Unidos, Francia, Brasil y Sud¡frica), y configura los routers para que todos los cinco servidores utilicen matem¡ticamente la misma y nica direccin IPv6 simult¡neamente. Un usuario desde Mxico solicita un video.



Pregunta:

¿Qu mtodo avanzado y poderoso de direccionamiento IP se est¡ empleando para asegurar que el tr¡fico desde Mxico sea atendido por el servidor topolgicamente m¡s cercano (EE.UU.) en la red global?



Opciones:

A) Direccionamiento Multicast Cl¡sico

B) Enrutamiento Anycast IPv6

C) Encapsulamiento VPN Directo Unicast

D) Algoritmo de Reparto ARP Din¡mico



Respuesta correcta: B



Explicacin:

A diferencia del Unicast (una IP para un solo equipo en el mundo) o el Broadcast (un mensaje a todos), el direccionamiento "Anycast" permite que mltiples servidores dispersos mundialmente tengan asignada idnticamente la misma direccin IP pblica. El protocolo de red enviar¡ matem¡ticamente la peticin del cliente al nodo que est geogr¡ficamente y lgicamente "m¡s cerca" de l, acelerando la red globalmente.



---



## CASO 94



Contexto:

Una tabla relacional normalizada "Empleados" contiene informacin sobre qu empleado domina qu idioma y qu herramienta de software usa. Como Juan domina Ingls y Francs, y utiliza Excel y Word, la base de datos comienza a generar decenas de registros combinando y cruzando todas las tuplas de Juan solo para alojar estos arreglos mltiples.



Pregunta:

¿Qu forma de diseo de Normalizacin exige la eliminacin estricta y rotunda de estas dependencias multivaluadas para no crear cruces cartesianos absurdos de mltiples temas independientes en una sola tabla?



Opciones:

A) Primera Forma Normal (1FN)

B) Tercera Forma Normal (3FN)

C) Cuarta Forma Normal (4FN)

D) Quinta Forma Normal (5FN)



Respuesta correcta: C



Explicacin:

La 4FN interviene cuando el diseo ya es 3FN, pero se identifican dos o m¡s hechos independientes multivaluados sobre la misma entidad principal en una tabla simple. Por ejemplo, mezclar "Las tres habilidades de Juan" con "Los tres telfonos de Juan" provoca $3 \times 3 = 9$ repeticiones ridculas de informacin. La 4FN ordena romper estas dos tem¡ticas multivaluadas en dos tablas limpias independientes.



---



## CASO 95



Contexto:

Un ingeniero se conecta al servidor corporativo basado en el sistema operativo Linux. Necesita modificar los archivos de configuracin, globales y maestros que rigen el arranque de todos los programas instalados en la m¡quina, pero no encuentra el directorio raz adecuado.



Pregunta:

Segn el Est¡ndar de Jerarqua del Sistema de Archivos (FHS) de Linux, ¿en qu directorio del sistema debe entrar para hallar obligatoriamente estas configuraciones centrales?



Opciones:

A) El directorio `/var`

B) El directorio `/etc`

C) El directorio `/bin`

D) El directorio `/home`



Respuesta correcta: B



Explicacin:

En todo sistema Linux y Unix, el corazn de la configuracin del host y de los servicios a nivel m¡quina reside dentro del directorio `/etc`. El directorio `/var` es para archivos variables como bit¡coras (logs), y el directorio `/bin` o `/usr/bin` almacena los comandos binarios ejecutables compilados del sistema.



---



## CASO 96



Contexto:

Para calcular la nmina de desarrollo de un sistema de informacin inmenso antes de que exista una sola lnea de cdigo escrita, la empresa financiera se apoya en medir las "Entradas Externas", "Salidas Externas", "Archivos Internos" e "Interfaces" que componen la complejidad y el alcance real de las transacciones funcionales que el cliente ver¡ al usar el software final.



Pregunta:

¿Qu metodologa internacional de estimacin de esfuerzo en la Ingeniera de Software est¡n empleando?



Opciones:

A) Puntos de Historia Scrum Relativa (Story Points)

B) An¡lisis de Puntos de Funcin (Function Point Analysis - FPA)

C) Evaluacin del Modelo de Madurez CMMI

D) Mtrica COCOMO Recursivo



Respuesta correcta: B



Explicacin:

El "An¡lisis de Puntos de Funcin" evala un proyecto no por sus lneas de cdigo o su tecnologa, sino por la "funcionalidad" matem¡tica til entregada y procesada a favor del usuario (cu¡ntos reportes arroja el sistema, cu¡ntas pantallas de entrada hay, y cu¡ntos archivos modifica). Es vital para costear proyectos inmensos antes del desarrollo en entornos gubernamentales y corporativos de clase mundial.



---



## CASO 97



Contexto:

Un algoritmo de ajedrez tradicional de "Fuerza Bruta" explora millones de movimientos futuros utilizando un ¡rbol de decisiones simple de manera estricta y recursiva. El ingeniero nota que la m¡quina desperdicia aos de c¡lculo re-evaluando y procesando tableros que ya haba visitado y analizado previamente.



Pregunta:

¿Qu paradigma algortmico y matem¡tico avanzado debe incorporar para guardar o cachear (memorizar) los sub-problemas previamente superpuestos solucionados y as evitar el rec¡lculo masivo?



Opciones:

A) Paradigma Voraz (Greedy Algorithm)

B) Paradigma Backtracking simple recursivo

C) Programacin Din¡mica (Dynamic Programming)

D) Paradigma Lineal Distribuido



Respuesta correcta: C



Explicacin:

La Programacin Din¡mica aborda problemas complejos optimiz¡ndolos profundamente mediante una tcnica central: "La Memorizacin (Memoization)". Cuando el algoritmo resuelve un sub-problema complejo superpuesto, anota la respuesta en una tabla de memoria. Si la rutina de evaluacin vuelve a enfrentarse a la misma encrucijada matem¡tica exacta, simplemente lee la respuesta instant¡nea en lugar de recalcular todas las rutas de nuevo.



---



## CASO 98



Contexto:

En un lenguaje estricto como Java o C#, est¡ terminantemente prohibido que una clase hija adquiera las implementaciones derivadas directamente de dos o m¡s clases padre (Herencia Mltiple bloqueada a nivel m¡quina). Sin embargo, un objeto necesita firmar contratos y promesas de comportamiento de tres mundos de la empresarial distintos al mismo tiempo.



Pregunta:

En el diseo de la POO, ¿qu elemento estructural debe utilizarse para simular el comportamiento de la herencia mltiple sin caer en ambigedades arquitectnicas como el "Problema del Diamante"?



Opciones:

A) Variables polimrficas 

B) Interfaces (Mltiples interfaces)

C) Super-clases inyectables modulares

D) Clases nativas en cadena



Respuesta correcta: B



Explicacin:

Lenguajes fuertemente tipados deshabilitaron la herencia mltiple para evitar choques de mtodos con igual nombre. Las *Interfaces* (contratos sin ni cuerpo que solo definen cascarones funcionales y encabezados de mtodo obligatorios) son el remedio de la POO; una clase hija puede heredar e implementar mltiples interfaces diferentes sin sufrir colisiones matem¡ticas de arquitectura de datos o "Diamantes" de conflictos.



---



## CASO 99



Contexto:

El programador de una nueva aplicacin de mensajera termina su cdigo de red TCP y quiere probar que la del servidor de puertos en su cdigo funcione correctamente. En lugar de instalar la aplicacin en dos computadoras reales conectadas, ejecuta el servidor y el cliente en su misma laptop desconectada por completo de cualquier red o cable de internet.



Pregunta:

¿A qu direccin IP estandarizada de uso obligatorio le configur la conexin a su cdigo cliente para forzar el retorno de la red sobre su misma interfaz fsica interna?



Opciones:

A) 192.168.0.1

B) 255.255.255.255

C) 0.0.0.0

D) 127.0.0.1 (Loopback)



Respuesta correcta: D



Explicacin:

La direccin reservada IPv4 `127.0.0.1` (o su red 127.x.x.x en general, conocida comnmente en la industria por la interfaz `localhost`) es la direccin universal interna o de Loopback de toda m¡quina con pila de red. El tr¡fico enviado a esta direccin enrutar¡ matem¡ticamente las capas y comandos TCP/IP enviando el pulso a s mismo sin requerir ningn router real, permitiendo probar software de red aisladamente con total fiabilidad funcional.



---



## CASO 100



Contexto:

Un atacante encuentra una aplicacin web antigua que exhibe un error SQL de inyeccin cl¡sico con la sentencia `SELECT nombre, correo FROM Usuarios WHERE id = $id`. En lugar de insertar solo un `' OR '1'='1` simple, inyecta un comando complejo logrando que la tabla retorne la informacin normal del usuario junto con las contraseas secretas de todos los administradores pegadas visualmente debajo.



Pregunta:

¿Qu comando relacional especfico us el cibercriminal para acoplar la consulta maliciosa a la consulta original forzando al motor a escupir ambas informaciones fundidas en el mismo formato en pantalla?



Opciones:

A) INSERT EXPLOIT

B) DELETE JOIN CLUSTER

C) UNION SELECT

D) RENAME TABLE HACK



Respuesta correcta: C



Explicacin:

La inyeccin de base de datos basada en Unin (UNION-Based SQL Injection) es la herramienta m¡s invasiva en vulnerabilidades tempranas de programacin no sanitizada. El operador `UNION` de SQL requiere combinar dos resultados del mismo formato en una sola hoja visible final. El hacker aprovecha el hueco cerrando la consulta 1 v¡lida e inyectando `UNION SELECT pass, admin FROM Privado` extrayendo ambos mundos combinados limpiamente a los ojos de la consola o la web sin romper la visualizacin relacional ni arrojar alertas.

\newpage
# Bloque 6
## CASO 101



Contexto:

El administrador de dominios necesita configurar la zona DNS de la empresa. Tiene el servidor web principal apuntando a una IP pblica especfica. Adicionalmente, requiere crear el subdominio `ventas.empresa.com` y quiere asegurarse de que, si la IP del servidor principal cambia en el futuro, no tenga que editar el registro del subdominio manualmente, sino que siga heredando la direccin de `www.empresa.com`.



Pregunta:

¿Qu tipo de registro DNS debe utilizar para el subdominio con el fin de vincularlo din¡micamente como un alias al nombre de dominio principal?



Opciones:

A) Registro A

B) Registro MX

C) Registro CNAME

D) Registro PTR



Respuesta correcta: C



Explicacin:

Un registro A enlaza estrictamente un nombre a una direccin IPv4. El registro CNAME (Canonical Name) funciona como un alias que apunta el subdominio de red hacia otro nombre de dominio. Si la IP del dominio maestro cambia en el Registro A central, el CNAME hereda la conectividad inmediatamente sin requerir actualizaciones paralelas.



---



## CASO 102



Contexto:

En el desarrollo de un algoritmo de bsqueda de rutas para un videojuego de navegacin, el enemigo debe sortear obst¡culos en el menor tiempo computacional posible buscando al jugador. El cl¡sico Algoritmo de Dijkstra evala ciegamente todos los caminos radiando en crculo, lo cual resulta ineficiente para el motor del juego.



Pregunta:

¿Qu algoritmo heurstico avanzado y eficiente de grafos est¡ diseado especficamente para trazar rutas ptimas directas combinando el costo exacto del recorrido con una estimacin inteligente hacia la meta final?



Opciones:

A) Algoritmo de Floyd-Warshall

B) Algoritmo A* (A-Estrella)

C) Algoritmo de Prim

D) Bsqueda Lineal Bidireccional



Respuesta correcta: B



Explicacin:

A* (A-Star) es el algoritmo soberano en ruteo y navegacin computacional. A diferencia de Dijkstra, que busca a expandindose simtricamente hacia todas direcciones, A* utiliza una funcin heurstica (una "pista" o estimacin matem¡tica) para preferir evaluar nicamente aquellos caminos que visiblemente apuntan hacia el objetivo en el plano de red, ahorrando tiempo de procesamiento inmenso.



---



## CASO 103



Contexto:

En un sistema bancario crtico global, se ha determinado que las lecturas y escrituras contables cruzadas no pueden tolerar las llamadas "Lecturas Fantasmas" ni las inconsistencias de transacciones ejecutadas en paralelo, obligando a los usuarios a esperar matem¡ticamente a que otros terminen.



Pregunta:

Segn las regulaciones de Aislamiento de Bases de Datos en SQL, ¿cu¡l es el nivel de bloqueo m¡s estricto, paranoico y seguro aplicable por el motor, a cambio de sacrificar la mayor cantidad de rendimiento en concurrencia masiva?



Opciones:

A) READ COMMITTED

B) REPEATABLE READ

C) READ UNCOMMITTED

D) SERIALIZABLE



Respuesta correcta: D



Explicacin:

El nivel de aislamiento SERIALIZABLE obliga lgicamente al motor de la base de datos a ordenar las operaciones masivas de miles de usuarios como si todos estuvieran en una fila india perfecta procesando uno por vez, deteniendo en seco el multihilo. Garantiza 100% la pureza sin colisiones matem¡ticas ni fenmenos fantasmas, pero es el m¡s lento a nivel arquitectnico.



---



## CASO 104



Contexto:

En una startup que utiliza el framework ¡gil "Extreme Programming" (XP), dos ingenieros se sientan juntos compartiendo el mismo teclado y monitor todo el da. Uno teclea el cdigo operativo observando la estructura t¡ctica (el Piloto), mientras que el otro piensa en la estrategia algortmica, vigila la estructura arquitectnica global y revisa errores en tiempo real (el Navegante).



Pregunta:

¿Qu pr¡ctica obligatoria del marco XP de la ingeniera de software se describe en esta situacin?



Opciones:

A) Testing Continuo

B) Refactorizacin 

C) Programacin en Parejas (Pair Programming)

D) Dual Git Commiting



Respuesta correcta: C



Explicacin:

La Programacin en Parejas (Pair Programming) es una regla central de la Programacin Extrema. Disminuye radicalmente los errores tempranos, transfiere conocimiento silencioso entre miembros senior y junior de la red laboral de inmediato, y eleva la calidad del cdigo, compensando el costo aparente de tener a dos programadores escribiendo en un mismo teclado con software de alto impacto y cero defectos.



---



## CASO 105



Contexto:

Una aplicacin dibuja un objeto base `Ventana`. El requerimiento exige aadirle funcionalidad visual a los objetos sobre la marcha durante la ejecucin (aadirle un `Borde`, una `BarraDeDesplazamiento`, o `Sombras`). Usar clases extendidas (`VentanaConBordeYSombra`) generara cientos de combinaciones rgidas de herencia insostenibles.



Pregunta:

¿Qu Patrn de Diseo estructural permite acoplar capas de funcionalidades y responsabilidades a un objeto base de manera din¡mica en tiempo de ejecucin, envolvindolo iterativamente?



Opciones:

A) Patrn Observador (Observer)

B) Patrn Singleton

C) Patrn Fachada (Facade)

D) Patrn Decorador (Decorator)



Respuesta correcta: D



Explicacin:

El patrn de diseo Estructural Decorador evita la "Explosin de Clases" generada por la herencia mltiple combinatoria rgida. Modela envoltorios que le agregan habilidades a un objeto ya creado, comport¡ndose funcionalmente de forma din¡mica (ej. Tienes un caf; le aades decorador "Leche", luego decorador "Azcar") sin tener que crear una clase estricta `CafeConLecheYAzucar`.



---



## CASO 106



Contexto:

Un disco duro mec¡nico cl¡sico (HDD) de un servidor masivo recibe peticiones de acceso a los cilindros nmero 10, 80, 20 y 90. Si procesa las llamadas en ese orden (First Come First Serve), el brazo lector magntico viajar¡ de extremo a extremo frenticamente perdiendo tiempos valiosos de hardware. Para arreglarlo, el sistema ordena las peticiones bas¡ndose en la posicin actual del brazo y lo hace viajar barriendo uniformemente hacia arriba y luego hacia abajo procesando las peticiones en el camino.



Pregunta:

¿A qu algoritmo cl¡sico de planificacin de unidades de almacenamiento fsico pertenece esta optimizacin?



Opciones:

A) C-SCAN (Circular SCAN)

B) SCAN (Algoritmo del Ascensor / Elevator Algorithm)

C) Algoritmo de Prioridad Exclusiva

D) Shortest Seek Time First (SSTF)



Respuesta correcta: B



Explicacin:

El algoritmo de planificacin de disco SCAN, apodado histricamente "Del Ascensor", procesa y ordena lgicamente las peticiones en un movimiento de barrido fsico nico. As como un elevador real sube al piso 10 y recoge a la gente en el 3 y el 8 de pasada en vez de bajar al 3 y volver al 8; el disco duro minimiza el desgaste del brazo magntico recogiendo datos cercanos a su trayectoria.



---



## CASO 107



Contexto:

Un equipo requiere identificar a simple vista el comportamiento de diseo de varias direcciones IPv4 cl¡sicas. Se le presenta la direccin IP `172.16.50.5` que el arquitecto antiguo us por default sin manipulacin de subred compleja, declarando que usa una m¡scara tradicional `255.255.0.0` para separar la mitad del ruteo del dominio local.



Pregunta:

Bajo la arcaica y obsoleta, pero fundamental clasificacin estricta de redes de internet, ¿a qu Clase Direccional (IP Class) pertenece nativamente esa direccin segn el primer octeto matem¡tico?



Opciones:

A) Clase A

B) Clase B

C) Clase C

D) Clase D



Respuesta correcta: B



Explicacin:

La clasificacin histrica IPv4 define redes est¡ndar con rangos fijos matem¡ticos. La Clase A abarca de 1.0.0.0 a 126.255.255.255 (M¡scara /8). La Clase B abarca de 128.0.0.0 a 191.255.255.255 (M¡scara /16), y aqu cae la IP "172.16.x.x". La Clase C abarca desde 192.0.0.0 hasta 223.255.255.255 (M¡scara /24). Este formato se ensea como el fundamento del ruteo global CIDR moderno de internet.



---



## CASO 108



Contexto:

En un sistema escolar, una tabla de calificaciones llamada "Kardex" usa una "Llave Primaria Compuesta" con dos columnas: `ID_Estudiante` y `ID_Materia`. Para ahorrar tablas, el desarrollador tambin inserta la columna `Nombre_Materia` dentro del mismo registro de Kardex.



Pregunta:

La columna `Nombre_Materia` depende nicamente del `ID_Materia`, ignorando e independiz¡ndose del `ID_Estudiante`. ¿Qu pilar base de normalizacin y qu tipo de dependencia relacional quebranta brutalmente este diseo redundante?



Opciones:

A) Rompe la 1FN por Grupos Repetidos Atmicos

B) Rompe la 3FN por Dependencia Transitiva Cruzada

C) Rompe la 2FN por Dependencia Funcional Parcial

D) Rompe la Forma Normal de Dominio Fijo Boyce-Codd



Respuesta correcta: C



Explicacin:

La Segunda Forma Normal (2FN) solo interviene y aplica en tablas con Llaves Primarias COMPUESTAS. Exige estrictamente que todo campo normal descriptivo dependa y requiera matem¡ticamente a *todas y cada una de las partes de la llave compuesta en su totalidad*. Si "Nombre de la Materia" solo necesita a la mitad de la llave ("ID_Materia") para existir, entonces sufre una Dependencia Parcial y se exige romper la tabla para normalizar.



---



## CASO 109



Contexto:

El procesador de tareas del servidor necesita procesar peticiones urgentes. A diferencia de una cola normal donde "el primero que llega sale primero (FIFO)", aqu las peticiones tienen calificaciones matem¡ticas din¡micas (Prioridades del 1 al 100). El algoritmo requiere asegurar de forma extremadamente veloz e inmediata la extraccin del "Elemento de mayor prioridad numrica" de la coleccin total de objetos vivos sin importar en qu orden de tiempo entr.



Pregunta:

¿Qu estructura matem¡tica de datos de la algoritmia cl¡sica es la implementacin ideal para alojar internamente esta base de "Cola de Prioridad Mnima o M¡xima"?



Opciones:

A) Un rbol Binario de Bsqueda Secuencial Lento (Unbalanced BST)

B) Una Tabla de Hash o Diccionario

C) Una Pila LIFO recursiva 

D) Una estructura de Montculo (Max-Heap o Min-Heap)



Respuesta correcta: D



Explicacin:

Un Montculo (Heap) es un ¡rbol binario especial de naturaleza algortmica donde el elemento de valor m¡ximo (o mnimo, segn se disee) se ve lgicamente obligado y acomodado a "flotar" y vivir en la raz suprema en tiempo O(log n). Almacenar datos en un Montculo es la forma universal de construir Colas de Prioridad en todos los lenguajes porque extraer el mayor o mejor elemento toma de inmediato O(1) pasos algortmicos.



---



## CASO 110



Contexto:

Una empresa despliega 50 servicios pequeos (Microservicios). Tradicionalmente instalara 50 M¡quinas Virtuales completas (VMWare/VirtualBox). Al darse cuenta de que las VM arrancan 50 sistemas operativos pesados completos (con 50 kernels Linux) para ejecutar programas triviales, adoptan tecnologas como Docker, donde los 50 servicios comparten transparentemente un solo Kernel base Linux maestro y arrancan en microsegundos pesando megabytes.



Pregunta:

En trminos estructurales y de virtualizacin, ¿cmo se denomina formalmente esta capa de infraestructura Docker moderna dentro del DevOps que abstrae todo a un nivel superior?



Opciones:

A) Virtualizacin Paravirtual Completa (Full OS Paravirtualization)

B) Virtualizacin a Nivel de Sistema Operativo (Contenerizacin / Containerization)

C) Aislamiento Sandbox en M¡quina Virtual Nativa

D) Hipervisor Universal Barem-Metal Pila 1



Respuesta correcta: B



Explicacin:

Los Contenedores de software (Docker) realizan "Virtualizacin a nivel de Sistema Operativo". A diferencia de una M¡quina Virtual que simula e instala un hardware completo falso (discos duros virtuales, procesadores virtuales) e instala otro Sistema Operativo completo pesadsimo encima de l; los contenedores simplemente aslan el proceso funcional mediante "Namespaces", usando todos el mismo y nico ncleo real del servidor anfitrin original acelerando el rendimiento computacional de la nube corporativa.



---



## CASO 111



Contexto:

En un sistema de Big Data corporativo como Apache Hadoop, las peticiones almacenan archivos gigantescos de Terabytes. Como no caben en un solo disco fsico, el software divide transparentemente el archivo monumental en trozos de 128 MB (Chunks) y los esparce por las redes a lo largo de 500 computadoras simples diferentes en el corporativo. Al solicitar abrirlo, el sistema lo rearma al vuelo uniendo los trozos como si fuera un solo disco gigante a ojos del usuario local.



Pregunta:

¿A qu familia de tecnologa de sistemas de almacenamiento a nivel sistema operativo obedece y pertenece este ecosistema Hadoop fundamental?



Opciones:

A) Sistema de Archivos FAT16 de Almacenamiento Local

B) Sistemas de Archivos Distribuidos en Red (Distributed File Systems)

C) Sistemas de Paginacin Fragmentada por Sector Ext4

D) Bases de Datos Relacionales Cl¡sicas con Fragmentos Binarios



Respuesta correcta: B



Explicacin:

Los Sistemas de Archivos Distribuidos (como HDFS de Hadoop, NFS cl¡sico o Google File System) permiten la manipulacin, lectura y almacenamiento gigantesco de informacin digital abarcando y aglutinando los espacios de disco de mltiples m¡quinas independientes. La complejidad de red, particin, y sincronizacin masiva se esconde al usuario, present¡ndole visualmente los archivos como si estuvieran ubicados pacficamente en una carpeta comn de su laptop central.



---



## CASO 112



Contexto:

El analista de ciberseguridad monitorea una subred e identifica una direccin fsica asignada al hardware de red de la laptop atacante mediante la cadena de notacin extica: `3A:4F:9C:22:BB:05`. 0 l sabe que los tres primeros octetos numricos designan al fabricante de la tarjeta a nivel global y los tres ltimos al dispositivo, sin cambiar nunca a menos que se suplante.



Pregunta:

Considerando la longitud y estructura de los datos, ¿qu es exactamente esta cadena analizada y en qu capa del Modelo OSI opera permanentemente en hardware en un Switch local?



Opciones:

A) Direccin IPv6 - Capa 3 de Red

B) Direccin MAC (Media Access Control) de 48 bits - Capa 2 de Enlace de Datos

C) Direccin IPv4 Privada en Hexadecimal - Capa 4 de Transporte 

D) Clave de Cifrado de Capa Fsica - Capa 1 de Fibra Local



Respuesta correcta: B



Explicacin:

Una Direccin MAC es la huella digital "fsica e inmutable" quemada de f¡brica en la tarjeta de red (NIC) del host. Est¡ compuesta universalmente por 48 bits, agrupados lgicamente de dos en dos, escritos en formato numrico hexadecimal (base 16). Representan la moneda de cambio fundamental e insustituible para el encaminamiento fsico de tramas en los concentradores (Switches) dentro del protocolo vital de Capa 2 (Enlace de datos).



---



## CASO 113



Contexto:

El motor SQL requiere garantizar seguridad al banco. El ingeniero DBA estipula reglas estrictas forzosas en el esquema: "El valor final en la columna de dinero nunca y bajo ninguna circunstancia natural puede descender del valor numrico cero (Restriccin CHECK de Base de Datos)". Si un programa intenta procesar un bloque de transacciones matem¡ticas que termine quebrando y violando esta condicin relacional central en la cuenta, la transaccin fracasa y se descarta totalmente al milisegundo devolviendo el estado anterior intacto.



Pregunta:

Segn las siglas inquebrantables de los modelos de las bases de datos relacionales "ACID", ¿qu propiedad se encarga formalmente de evitar que las reglas de integridad de la base queden daadas tras una operacin?



Opciones:

A) Aislamiento (Isolation)

B) Atomicidad (Atomicity)

C) Durabilidad (Durability)

D) Consistencia (Consistency)



Respuesta correcta: D



Explicacin:

La "C" de Consistencia en ACID (Consistencia de Base de Datos, distinta al Teorema CAP de redes) dictamina y garantiza que ninguna transaccin logre completarse de manera exitosa si eso significa abandonar la base de datos en un estado matem¡ticamente o estructuralmente inv¡lido o corrupto (ej. violando reglas, checks o llaves for¡neas inyectadas). La base de datos asume el control saltando de un estado lgicamente v¡lido directamente a otro estado lgicamente v¡lido por la fuerza.



---



## CASO 114



Contexto:

En la programacin modular de un sistema ERP logstico se tiene la clase central "CalculoDeDescuentos". Al principio solo calculaba el descuento est¡ndar. Luego, en la poca navidea, en lugar de crear una clase independiente adaptadora, el programador junior entra directamente a la matriz del archivo de cdigo base original de la clase y le inserta tres nuevos bloques `if-else` condicionales para manejar los descuentos, abriendo la puerta a que otro desarrollador quiebre o contamine todo lo que antes funcionaba bien.



Pregunta:

Dentro de los cinco pilares innegociables de arquitectura limpia de "SOLID", ¿qu principio capital viol directamente el programador al realizar esta intervencin intrusiva al cdigo central?



Opciones:

A) Principio Abierto/Cerrado (Open-Closed Principle - OCP)

B) Principio de Inversin de Dependencia (Dependency Inversion)

C) Principio de Sustitucin de Liskov Matem¡tica (LSP)

D) Principio de Segregacin Simple de Interface (ISP)



Respuesta correcta: A



Explicacin:

El Principio de Abierto/Cerrado (La O de SOLID) es el Santo Grial del desarrollo seguro y modular: Las clases deben ser siempre "Abiertas para la extensin" (capaces de adoptar nuevas funciones o variantes a futuro inyect¡ndolas por interfaces y polimorfismo) pero estrictamente "Cerradas para la modificacin matem¡tica del cdigo fuente nativo antiguo". Alterar el cdigo original ya probado para inyectar "ifs" es romper el software al exponerlo a nuevos y desconocidos regresiones tcnicas futuras.



---



## CASO 115



Contexto:

Un ingeniero de diseo de software describe y bosqueja en UML cmo debe funcionar exactamente la orden funcional de compra "Carrito": Primero nace como "Generado", al presionar pagar transita a "Autorizado". Si hay fondos, brinca a "Empacando". Finalmente viaja a la condicin ltima de "Despachado". Si falla el cobro, es regresado a un formato alternativo "Rechazado", del cual ya no puede volver.



Pregunta:

¿Qu tipo de diagrama de comportamiento tcnico UML permite cartografiar formalmente los diferentes periodos de vida que asume y adquiere un nico objeto respondiendo a estmulos directos y eventos del tiempo?



Opciones:

A) Diagrama de Clases en Sistema

B) Diagrama Funcional General de Casos de Uso

C) Diagrama Fsico de Despliegue y Redes de Host

D) Diagrama Din¡mico de M¡quina de Estado (State Machine Diagram)



Respuesta correcta: D



Explicacin:

Los Diagramas de M¡quina de Estados se especializan funcionalmente en ilustrar todos los comportamientos secuenciales en forma de vida por los que un solo y nico objeto din¡mico puede llegar a transitar ("Estados"), junto con los "Eventos" disparadores concretos o transiciones que causan y fuerzan ese cambio secuencial de fase en el sistema complejo (ej. Sem¡foro de Rojo a Verde). Es vital para modelar procesamientos de pagos complejos en backend global.



---



## CASO 116



Contexto:

En un sistema de telecomunicaciones local cerrado que lee audios en bucle repetitivo de alta latencia, el arreglo fsico de almacenamiento debe ser veloz y continuo. Para ello, un puntero que lee el final matem¡tico de la cola no choca contra un vaco, sino que al llegar a la ltima posicin de la memoria del arreglo se salta y se reconecta instant¡neamente hacia la posicin cero original, leyendo datos nuevos en ciclos continuos indefinidamente sin expandir el tamao lmite original de la memoria RAM global predefinida localmente.



Pregunta:

¿Qu estructura matem¡tica de datos de arreglo posicional especial est¡ empleando activamente para optimizar recursos el administrador en programacin concurrente local?



Opciones:

A) Pila de Recursin Circular Abstracta 

B) Cola Circular Din¡mica Limitada / Ring Buffer Fijo

C) rbol de Prioridad Estricto Simtrico Din¡mico 

D) Vector Bidireccional Infinito de Nodos Distribuidos Locales Simples



Respuesta correcta: B



Explicacin:

Un Buffer Circular (Ring Buffer o Cola Circular) optimiza elegantemente el almacenamiento con tamao limitado. Resuelve el problema cl¡sico de desperdicio de memoria y reubicacin en arreglos planos b¡sicos en los que "al retirar la cabeza de los datos y encolar al final, se requiere recorrer numricamente todo", ya que la estructura "enlaza o hace un mdulo matem¡tico de longitud" para conectar el final con el inicio en su matriz, volvindose una rueda perfecta de datos.



---



## CASO 117



Contexto:

El equipo inform¡tico levanta en la red local un servidor local de Exchange seguro corporativo y configura un software y cliente en escritorio. Necesitan habilitar rigurosamente dos protocolos clave separados y funcionales en los clientes de mensajera: el primero debe tomar la responsabilidad estricta de enviar las tramas textuales del mensaje de ida, mientras que el segundo protocolo se debe encargar nicamente de recibir y gestionar los buzones, descargando sincronizadamente los archivos finales de forma eficiente a los hosts locales del usuario final de red.



Pregunta:

¿Qu dupla est¡ndar cl¡sica de protocolos de la Capa de Aplicacin de red resuelve exactamente esta divisin administrativa de transmisin saliente y recepcin entrante?



Opciones:

A) Telnet para salida TCP, SSH para entrada TCP 

B) SMTP para salida de Envos de Correo, e IMAP o POP3 para lectura entrante de buzones locales

C) FTP masivo para salida entrante local y SFTP entrante saliente para lecturas locales 

D) BGP Central local bidireccional localmente y RIP entrante interno 



Respuesta correcta: B



Explicacin:

La dupla histrica del e-mail en redes de la Capa 7 del Modelo OSI de transporte inform¡tico. SMTP (Simple Mail Transfer Protocol) se ocupa exclusivamente de "Empujar / Push" de manera saliente el mensaje original al servidor remoto. Posteriormente, POP3 o el avanzado y distribuido IMAP entran en accin exclusivamente de manera activa por el cliente local de correo logrando el proceso "Arrastrar / Pull" solicitando la recepcin global, leyendo y visualizando localmente de bajada lo que lleg del SMTP entrante local sin conflicto.



---



## CASO 118



Contexto:

En un ambiente Linux altamente de alta concurrencia intensiva y de procesador paralelo de multincleo pesado, existen mltiples procesos matem¡ticos (Process A y Process B independientes). Necesitan intercambiar entre ellos de manera crtica grandes cantidades masivas de datos a una velocidad de microsegundos matem¡ticos locales, sin la latencia de sobrecargas ni la intervencin forzosa de tuberas directas, compartiendo simult¡neamente el poder e interaccin por el sistema operativo global central local.



Pregunta:

¿Qu tcnica nativa en el Sistema Operativo para la Comunicacin Inter-Procesos local (IPC) logra y ofrece la m¡xima velocidad existente tcnica eliminando latencias del kernel?



Opciones:

A) Tuberas cl¡sicas de red locales

B) Mensajes de Paso Fijos Interconectables y Sockets IP simples

C) Bloques de Memoria Compartida Directa y Transparente (Shared Memory Segment IPC)

D) Conexiones UDP en paralelo 



Respuesta correcta: C



Explicacin:

En los entornos cl¡sicos IPC (Inter-Process Communication), la transferencia paralela por Paso de Mensajes (Pipes o Sockets locales) requiere y exige mltiples copias sistmicas a los buzones del ncleo de Linux (Kernel). En absoluto contraste fsico local, la Memoria Compartida (Shared Memory) reserva velozmente y en directo una zona especfica de la RAM universal; todos los programas autorizados operan velozmente sobre esta misma variable local sin intermediarios logrando velocidades atmicas computacionales colosales en local, pero requiriendo candados o Sem¡foros forzosos para esquivar los choques cruzados locales.



---



## CASO 119



Contexto:

En una startup, el servidor central almacena datos de Big Data para un modelo simple local. Se manejan billones de datos por minuto, lo que asfixia un servidor est¡ndar relacional. El CTO exige migrar de inmediato y reemplazarlo por un modelo avanzado de bases de datos que no almacena ni lee las cosas tradicionalmente "fila por fila relacionalmente " sino que estructura fsica e internamente todo leyendo los datos de manera transversal masiva (Por ejemplo, guardando todas las "fechas " juntas fsicamente en el disco local y no en el registro lateral plano).



Pregunta:

¿A qu esquema de Base de Datos NoSQL avanzada debe recurrir forzosamente y tcnicamente para cubrir su requerimiento vertical masivo veloz?



Opciones:

A) BD en Grafo de Nodos Bidireccionales Locales 

B) BD Documental Base Libre NoSQL Cl¡sica en JSON

C) Base de Datos NoSQL Orientada a Columnas y Familias (Column-Family Store / Columnar como Cassandra)

D) Modelo de Llave-Valor simple de Cache Global Inversa Local



Respuesta correcta: C



Explicacin:

Las Bases de Datos NoSQL Columnares (ej. Apache Cassandra o HBase) brillan y dominan los reportes de masivos OLAP y de inteligencia. A diferencia de MySQL o SQL Server cl¡sico que leen y guardan las "filas o bloques enteros " para extraer el nombre y estatus de los usuarios (matando discos si solo queras sumar las facturas de todos en un instante), la Base Columnar guarda un archivo especial con los campos de toda una columna juntos en el disco, permitiendo bsquedas instant¡neas promediables transversales simples sin tocar la lectura del resto de basura innecesaria colateral de los objetos.



---



## CASO 120



Contexto:

En una empresa con desarrollo colaborativo, t trabajas localmente elaborando 5 commits en tu rama paralela secundaria "Feature" al mismo tiempo que el resto del corporativo enva otros 10 commits masivos e integran funciones principales en la rama original central "Main". Tu jefe local pide que integres y sincronices tu trabajo para publicarlo, logrando mantener limpio y linealmente plano todo el ¡rbol local de tiempo de trabajo oficial central, sin generar jam¡s la contaminacin histrica paralela del tpico "Commit Especial Adicional Enredado" ni la creacin y visin bifurcada compleja de burbujas en el ¡rbol de colaboracin de GitHub histrico.



Pregunta:

¿Qu accin y comando de ingeniera central de la plataforma de versionamiento de control Git lograr¡ estricta y funcionalmente esta integracin armnica logrando el acomodo ideal de insercin exigida?



Opciones:

A) Comando base Git Reset Hard global forzado

B) Accin y operacin simple paralela Git Merge Fast-Forward local 

C) Herramienta colaborativa Git Rebase interactiva din¡mica lineal local de trabajo directo

D) Estructura Git Squash forzoso directo de tiempo



Respuesta correcta: C



Explicacin:

A diferencia del tradicional `git merge` cl¡sico (que aglutina y entrelaza asimtricamente el trabajo lateral creando bifurcaciones con un nuevo archivo o rombo de commit intermedio catico e inevitable), la funcionalidad poderosa de `git rebase` desengancha y corta tus trabajos propios paralelos y los reubica transaccionalmente como una lnea limpia y perfecta al frente o final exacto de la ltima lnea base y fresca de "main", dejando un ¡rbol limpio y un historial perfecto y plano cronolgicamente como si t nunca te hubieras atrasado ni trabajado en paralelo nunca.

\newpage
# Bloque 7
## CASO 121



Contexto:

Un corporativo sufre ataques. El arquitecto de red decide reemplazar el viejo filtro de paquetes del enrutador, el cual bloqueaba puertos de manera individual sin recordar las conexiones anteriores. El nuevo dispositivo analiza toda la sesin desde que inicia el saludo de tres vas (Three-way Handshake), recuerda el flujo de datos y bloquea autom¡ticamente cualquier paquete entrante que no pertenezca a una conexin legtimamente iniciada desde el interior de la empresa.



Pregunta:

¿Qu tecnologa de inspeccin avanzada de seguridad en redes acaba de implementarse?



Opciones:

A) Firewall de Filtrado Simple (Stateless)

B) Firewall de Inspeccin de Estado (Stateful Firewall)

C) Sistema de Deteccin de Intrusos (IDS)

D) Proxy Reverso en la Capa 7



Respuesta correcta: B



Explicacin:

Un firewall "Stateless" examina cada paquete de red de forma individual e independiente, lo cual es ineficiente y f¡cil de evadir. Un "Stateful Firewall" mantiene una tabla de estado en memoria; rastrea el contexto y la sesin completa. Si un servidor externo intenta enviar datos hacia la red interna, el firewall solo lo permitir¡ si comprueba que una computadora interna solicit previamente esa informacin.



---



## CASO 122



Contexto:

Una red social almacena millones de contraseas de usuarios. Para proteger los datos en caso de una filtracin de la base de datos, el ingeniero utiliza un algoritmo que convierte la contrasea en una cadena alfanumrica matem¡tica fija de 256 bits, garantizando que sea extremadamente resistente a colisiones y sin posibilidad de aplicar ingeniera inversa.



Pregunta:

¿Qu algoritmo criptogr¡fico moderno de la industria debe utilizar por defecto para cumplir con estas especificaciones de seguridad?



Opciones:

A) Algoritmo de Cifrado Simtrico AES-256

B) Algoritmo RSA

C) Funcin de Hash MD5

D) Funcin de Hash SHA-256



Respuesta correcta: D



Explicacin:

Para almacenar contraseas, nunca se utiliza un cifrado reversible (como AES o RSA) porque alguien con la llave podra leerlas. Se utilizan funciones de Hash unidireccionales. MD5 es un algoritmo obsoleto, roto y vulnerable a ataques de colisin masiva. SHA-256 es el est¡ndar actual en la industria, ofreciendo alta seguridad al procesar los textos sin generar vulnerabilidades matem¡ticas previsibles.



---



## CASO 123



Contexto:

Para buscar velozmente registros en una tabla de cinco millones de clientes, el motor de base de datos no escanea fila por fila, sino que consulta una estructura anexa optimizada y jer¡rquica en el disco. Esta estructura agrupa llaves de forma ordenada con mltiples ramificaciones por nodo, permitiendo encontrar cualquier ID leyendo un m¡ximo de 3 a 4 bloques en el disco duro.



Pregunta:

¿Cu¡l es la estructura de datos interna predominante y universal que usan los motores de bases de datos relacionales para construir sus ndices principales?



Opciones:

A) rbol B (B-Tree / rbol Balanceado)

B) Lista Doblemente Enlazada

C) Pila Estructurada

D) Algoritmo de Bsqueda Lineal



Respuesta correcta: A



Explicacin:

Los ndices en bases de datos relacionales (como MySQL o SQL Server) est¡n construidos sobre la base de un "rbol B" (B-Tree o rboles B+). Esta estructura matem¡tica auto-balanceada es ideal para sistemas de almacenamiento en disco, ya que mantiene los datos ordenados y permite bsquedas, accesos secuenciales, inserciones y eliminaciones en tiempo logartmico amortizado O(log n).



---



## CASO 124



Contexto:

Un equipo maduro en DevOps configura un servidor de automatizacin Jenkins. Cada vez que un desarrollador hace un envo de cdigo, Jenkins lo compila, ejecuta 500 pruebas unitarias de calidad, y construye el paquete final listo para usar en un contenedor Docker. Sin embargo, el equipo de QA exige que ese contenedor final sea retenido en un entorno de pruebas, y prohbe rotundamente que el cdigo se mande al servidor de los clientes sin que un humano presione primero un botn de "Aprobar".



Pregunta:

¿Qu ciclo y etapa especfica de despliegue de infraestructura ¡gil est¡n implementando?



Opciones:

A) Integracin Continua Total (CI)

B) Despliegue Continuo (Continuous Deployment)

C) Entrega Continua (Continuous Delivery)

D) Integracin de Monitoreo Din¡mico



Respuesta correcta: C



Explicacin:

En DevOps, la "Entrega Continua" (Continuous Delivery) automatiza toda la cadena hasta dejar el paquete listo para produccin, pero exige obligatoriamente una aprobacin humana manual final antes de liberar el software a los usuarios. Por el contrario, el "Despliegue Continuo" (Continuous Deployment) es m¡s agresivo: automatiza todo el proceso y, si las pruebas pasan, lanza el cdigo a produccin directamente y de manera totalmente invisible sin intervencin humana.



---



## CASO 125



Contexto:

Un desarrollador en Java disea una clase constructora para enviar correos. En lugar de forzar al usuario a llamar mtodos en lneas separadas, disea los mtodos devolviendo la instancia de la misma clase al terminar, permitiendo encadenar funciones de forma natural: `Correo.crear().para("jefe@empresa.com").conAsunto("Aviso").enviar();`.



Pregunta:

¿Qu concepto y patrn de diseo de Programacin Orientada a Objetos representa esta estructura concatenada?



Opciones:

A) Inyeccin de Dependencias

B) Interface Segregation (Segregacin de Interfaz)

C) Interfaces Fluidas (Fluent Interface / Method Chaining)

D) Objeto Abstracto



Respuesta correcta: C



Explicacin:

El patrn "Fluent Interface", comnmente implementado mediante el "Encadenamiento de Mtodos" (Method Chaining), es una tcnica de POO donde cada mtodo interno retorna obligatoriamente el propio objeto `(return this;)`. Esto permite concatenar mltiples llamadas a mtodos en una sola lnea elegante, logrando que el cdigo fuente se lea fluidamente casi como una oracin natural en idioma ingls.



---



## CASO 126



Contexto:

Un sistema escrito en el lenguaje C++ opera el radar de un aeropuerto. Tras varias semanas de uso sin apagarse, el servidor reporta un error fatal y se congela porque ha agotado toda la memoria RAM, a pesar de estar procesando pocos vuelos. Un an¡lisis revela que los programadores olvidaron escribir el comando `delete` u `ocultar` en el cdigo tras destruir los aviones que salan de la pantalla.



Pregunta:

¿Qu nombre tcnico recibe esta peligrosa vulnerabilidad de arquitectura de software y gestin de memoria?



Opciones:

A) Inanicin (Starvation)

B) Fuga de Memoria (Memory Leak)

C) Condicin de Carrera (Race Condition)

D) Desbordamiento de Bfer (Buffer Overflow)



Respuesta correcta: B



Explicacin:

En lenguajes no gestionados como C o C++ que carecen de "Recolector de Basura" autom¡tico (Garbage Collector), el programador es responsable de liberar manualmente en el cdigo la memoria reservada de los objetos cuando ya no se usan. Si olvida hacerlo, el objeto pierde su referencia pero sigue ocupando espacio eternamente en la RAM, generando una "Fuga de Memoria" gradual que termina asfixiando por completo al Sistema Operativo.



---



## CASO 127



Contexto:

En un corporativo, el servidor de red DHCP se daa. Un empleado enciende su computadora con Windows para trabajar. Al revisar la configuracin de red, nota que su m¡quina tiene una direccin IP asignada m¡gicamente con el valor `169.254.45.10`, aunque no hay ningn servidor en la oficina que le haya otorgado esa configuracin.



Pregunta:

¿Qu protocolo nativo del sistema operativo gener y configur esta direccin para intentar mantener viva la red local?



Opciones:

A) NAT (Network Address Translation)

B) APIPA (Automatic Private IP Addressing)

C) IPv6 Anycast Routing

D) DNS Din¡mico de Emergencia



Respuesta correcta: B



Explicacin:

Cuando una computadora (especialmente en entornos Windows) est¡ configurada para obtener una IP autom¡ticamente pero no logra comunicarse con un servidor DHCP, el sistema utiliza APIPA para auto-asignarse matem¡ticamente una direccin en el rango reservado "169.254.x.x". Esto le permite al menos comunicarse e interactuar con otras computadoras en la misma situacin dentro del segmento fsico local.



---



## CASO 128



Contexto:

Una empresa pierde datos valiosos de transacciones bancarias a las 3:15 p.m. debido a un error humano masivo en un query SQL. El administrador debe restaurar la base de datos no al cierre del da de ayer, sino exactamente al estado milimtrico de las 3:14 p.m. de hoy, justo un minuto antes del desastre.



Pregunta:

Para lograr esta recuperacin quirrgica en bases de datos relacionales, ¿qu mecanismo interno y archivo de control del motor de base de datos se debe utilizar y reproducir secuencialmente?



Opciones:

A) La Pila de Vistas Materializadas (Materialized Views)

B) El Registro o Bit¡cora de Transacciones (Transaction Log / Redo Log)

C) Un Respaldo Incremental de Bloques de Sistema (File System Snapshot)

D) El Clster de ndices B-Tree



Respuesta correcta: B



Explicacin:

El Registro de Transacciones (Transaction Log) es un archivo protegido y vital donde el motor de base de datos anota paso a paso cada `INSERT`, `UPDATE` o `DELETE` mucho antes de aplicarlo en el disco duro. En recuperacin ante desastres (Point-In-Time Recovery), el administrador monta el respaldo completo de ayer, y luego le indica al motor que "reproduzca" hacia adelante como una cinta de video todas las operaciones del log secuencialmente, pausando exactamente a las 3:14 p.m.



---



## CASO 129



Contexto:

Un estudiante de Ciencias de la Computacin disea una inteligencia artificial b¡sica para resolver un laberinto en pantalla. La programada avanza casilla por casilla eligiendo rutas; cuando se topa con un muro y descubre que est¡ en un callejn sin salida, su cdigo retrocede exactamente a la ltima interseccin segura que visit para descartar esa ruta y elegir la otra opcin inexplorada.



Pregunta:

¿Qu estrategia cl¡sica de algoritmos y diseo matem¡tico de bsqueda est¡ utilizando el programa para resolver el laberinto?



Opciones:

A) Programacin Din¡mica (Dynamic Programming)

B) Divide y Vencer¡s (Divide and Conquer)

C) Algoritmo Voraz Directo (Greedy Method)

D) Vuelta Atr¡s (Backtracking)



Respuesta correcta: D



Explicacin:

El Backtracking o "Vuelta Atr¡s" es un paradigma algortmico de bsqueda sistem¡tica y exhaustiva. Opera mediante una estructura de ¡rbol recursiva: avanza por una ruta posible intentando resolver el problema; si la ruta resulta matem¡ticamente inv¡lida o choca con una regla restrictiva, el algoritmo "retrocede" (cancela o poda la rama) e intenta el siguiente camino viable hasta hallar la meta (ej. Sudokus y Laberintos).



---



## CASO 130



Contexto:

Para impedir sobrecargas en el software, implementas el Patrn de Diseo "Singleton" para garantizar un solo objeto gestor de correos globales. En un servidor concurrente multihilos, los hilos chocan creando la clase varias veces. Decides usar `synchronized` para bloquear la funcin entera, pero esto paraliza la velocidad del sistema. Decides bloquear el hilo solo dentro del constructor inicial, evaluando un `if (instancia == null)` de manera meticulosa y optimizada.



Pregunta:

¿Qu patrn avanzado de validacin en concurrencia es el recomendado en Java o C# para aplicar el Singleton de forma veloz y segura usando una doble comprobacin de los hilos?



Opciones:

A) Patrn Observador de Sem¡foros 

B) Bloqueo de doble comprobacin (Double-Checked Locking)

C) Algoritmo de Hilos Mutex Independientes

D) Singleton de Inyeccin Fluida



Respuesta correcta: B



Explicacin:

El Bloqueo de Doble Comprobacin (Double-Checked Locking) es el diseo definitivo para el patrn Singleton seguro en hilos (Thread-Safe). Consiste en comprobar primero si el objeto es nulo sin ningn bloqueo pesado. Si es nulo, se coloca el candado (`synchronized`), y una vez dentro de la zona de bloqueo crtico, se vuelve a comprobar con un segundo `if` si el objeto sigue nulo (en caso de que otro hilo haya entrado antes) para luego crearlo, logrando m¡xima eficiencia de ejecucin.



---



## CASO 131



Contexto:

En un sistema Linux, el programador ejecuta comandos de consola. Crea un archivo original llamado `config.conf`. Luego, mediante el comando `ln -s`, crea un "Enlace Simblico" (Symlink) llamado `atajo.conf` apuntando al archivo original. Un minuto despus, mueve y cambia de carpeta fsica el archivo original `config.conf` llev¡ndoselo al directorio `/etc`.



Pregunta:

¿Qu ocurrir¡ al intentar abrir y leer los datos usando el acceso directo `atajo.conf`?



Opciones:

A) Se abrir¡ correctamente rastreando al sistema de Inodos.

B) Marcar¡ error indicando que el archivo no existe o el enlace est¡ roto.

C) Eliminar¡ el archivo autom¡ticamente por regla de seguridad estricta.

D) Duplicar¡ el archivo creando una copia rgida real localmente.



Respuesta correcta: B



Explicacin:

Un Enlace Simblico (Symlink) funciona exactamente como los "Accesos directos" tradicionales de Windows. Es simplemente un pequeo archivo que contiene una cadena de texto (la ruta original). Si el archivo original es borrado, modificado en su nombre, o movido fsicamente a otra carpeta de red, el enlace simblico se "rompe" instant¡neamente al apuntar a un lugar que ya no existe y mostrar¡ error.



---



## CASO 132



Contexto:

Al auditar los servicios de red abiertos hacia internet en el firewall de la empresa, el especialista en ciberseguridad bloquea todos los puertos numricos por seguridad extrema y exige habilitar y abrir estrictamente solo el puerto est¡ndar del tr¡fico seguro de p¡ginas web y el puerto para la resolucin de nombres de dominio en los navegadores.



Pregunta:

Considerando el modelo oficial, ¿qu nmeros de puertos de la capa de transporte deben abrirse estrictamente para cubrir esa solicitud?



Opciones:

A) Puerto 80 para la navegacin HTTP y Puerto 21 para DNS Seguro

B) Puerto 443 TCP para navegacin web segura (HTTPS) y Puerto 53 UDP/TCP para servicio DNS

C) Puerto 22 para Navegacin Global y Puerto 25 para las peticiones DNS UDP

D) Puerto 8080 TCP para SSL Global y Puerto 53 para DNS Interno



Respuesta correcta: B



Explicacin:

Para la navegacin cifrada est¡ndar de hoy en da (HTTPS), el protocolo de internet demanda la apertura del puerto 443 va TCP. Paralelamente, el sistema de resolucin de nombres de dominio (DNS), el cual traduce las direcciones web humanas en direcciones IP de m¡quina, opera globalmente y universalmente sobre el puerto 53 (usando UDP para velocidad de consulta, y TCP para transferencias de zonas completas).



---



## CASO 133



Contexto:

Una aplicacin web de compras en Node.js recibe miles de visitas. Si se instruye al sistema para usar la instruccin `nueva_conexion()` abriendo y cerrando la red TCP hacia la base de datos por cada usuario que entra, el sistema colapsar¡, ya que crear conexiones de red desde cero toma cientos de milisegundos y consume excesiva RAM en el motor de base de datos.



Pregunta:

¿Qu arquitectura o patrn de software para backend resuelve este problema de conectividad de red asfixiante?



Opciones:

A) Implementar Fragmentacin Horizontal de Nodos (Sharding)

B) El uso de un Grupo de Conexiones de Base de Datos (Connection Pooling)

C) Aplicar Inyeccin de Dependencias a las tablas relacionales

D) Desplegar rplicas con Memoria Virtual y Paginacin



Respuesta correcta: B



Explicacin:

El Connection Pooling (Pool de Conexiones) es vital para el rendimiento web avanzado. Consiste en crear y mantener siempre vivas en segundo plano un pequeo paquete estricto (ej. 50 conexiones simult¡neas) hacia la base de datos. Cuando un cliente web necesita acceder a los datos, pide prestada una conexin del Pool en lugar de forzar a crear una nueva; al terminar su transaccin, la devuelve sana a la alberca para que el siguiente usuario la reutilice al instante.



---



## CASO 134



Contexto:

Un arquitecto de programacin modela aves. Define la clase superior `Ave` con el mtodo fundamental `volar()`. Luego, la clase `Avestruz` hereda nativamente de `Ave`. Como los avestruces no vuelan, el desarrollador sobreescribe el mtodo para que al invocar `volar()`, el objeto arroje directamente una excepcin fatal y un quiebre en la aplicacin (`Throw Exception`).



Pregunta:

Segn las normativas de arquitectura y diseo limpio SOLID, ¿qu principio de estructuracin de clases rompi por completo el desarrollador?



Opciones:

A) Principio de Inversin de Dependencia (DIP)

B) Principio de Segregacin de Interfaz (ISP)

C) Principio de Sustitucin de Liskov (LSP)

D) Principio Abierto/Cerrado (OCP)



Respuesta correcta: C



Explicacin:

La "L" de SOLID (Principio de Sustitucin de Liskov). Dictamina que cualquier objeto hijo de una clase superior debe ser perfectamente capaz de reemplazar a su padre en el cdigo sin romper en absoluto la y la arquitectura funcional del programa general. Al obligar a heredar a un `Avestruz` forz¡ndolo a tener un mtodo `volar()` que destruye y estrella el programa global, se demuestra que `Avestruz` no debi heredar de una clase con atributos voladores.



---



## CASO 135



Contexto:

El equipo comercial en un proyecto ¡gil redacta una Historia de Usuario para la funcin "Carrito de Compras". El ingeniero lder la revisa y se la devuelve, argumentando que la historia carece de un elemento clave necesario para que el ¡rea de Control de Calidad (QA) y el programador sepan matem¡ticamente qu condiciones funcionales mnimas deben existir para poder dar por finalizada la tarea exitosamente.



Pregunta:

¿Qu elemento oficial y medible falta por redactar obligatoriamente dentro de la Historia de Usuario de Scrum?



Opciones:

A) Los Diagramas UML del Back-end Estructural

B) Criterios de Aceptacin (Acceptance Criteria)

C) Casos de Uso Extendidos Tcnicos

D) Puntos Estimados de Esfuerzo (Story Points)



Respuesta correcta: B



Explicacin:

Los Criterios de Aceptacin son una lista y binaria de reglas adjunta a cada Historia de Usuario. Mientras que la Historia de Usuario redacta el deseo del usuario en forma de conversacin funcional general, los Criterios de Aceptacin limitan el campo y definen tcnicamente la prueba final para el xito del desarrollo (Ej. "El botn debe calcular el 16% de IVA", "El pago no debe exceder los 10 segundos"). Sin estos criterios, nadie sabe en qu momento exacto el trabajo ha concluido.



---



## CASO 136



Contexto:

Un ingeniero debe programar una librera de procesamiento de listas de datos muy desordenadas de hasta 100,000 elementos. Decide usar un algoritmo fundamental de las ciencias computacionales: elige un nmero de la lista para usarlo como "Pivote", organiza los datos menores a la izquierda del pivote y los mayores a la derecha, para luego repetir esta estrategia matem¡ticamente sobre ambas mitades resultantes por separado.



Pregunta:

¿Qu potente algoritmo de ordenamiento y arquitectura Big O est¡ diseando el ingeniero?



Opciones:

A) Algoritmo Merge Sort de desempeo O(n)

B) Algoritmo Quick Sort de desempeo ptimo O(n log n)

C) Algoritmo Selection Sort de O(n^2)

D) Algoritmo Bubble Sort de alta fragmentacin O(1)



Respuesta correcta: B



Explicacin:

El ordenamiento Quick Sort (Ordenacin R¡pida) es el algoritmo m¡s usado en bibliotecas nativas de todos los lenguajes de programacin modernos. Aprovecha de manera brillante la estrategia "Divide y Vencer¡s" definiendo Pivotes y particionando el arreglo de datos en su lugar fsico original, brindando en la mayora aplastante de los casos cotidianos un tiempo de ejecucin eficiente de O(n log n) superior a iteraciones lineales de O(n).



---



## CASO 137



Contexto:

El director del campus universitario decide modernizar las antenas y ruteadores inal¡mbricos en los salones de clases argumentando que el viejo protocolo `802.11ac` ya no soporta la alta densidad de decenas de alumnos usando mltiples dispositivos de manera simult¡nea sin degradar enormemente la velocidad y provocar choques masivos de red.



Pregunta:

¿A qu protocolo inal¡mbrico moderno y de sexta generacin (Wi-Fi 6) debe migrar para garantizar multiplexacin masiva en entornos saturados de aparatos y conectividad de antenas de alta demanda computacional?



Opciones:

A) 802.11n (Wi-Fi 4 Cl¡sico)

B) 802.11ax (Wi-Fi 6 Moderno)

C) 802.11b (Wi-Fi Legacy de Alta Distancia)

D) 802.1X (Protocolo Seguro Autenticado)



Respuesta correcta: B



Explicacin:

El protocolo 802.11ax (comercialmente conocido como Wi-Fi 6) incorpora la tecnologa crtica OFDMA (Mltiple Acceso por Divisin de Frecuencias Ortogonales). Esto permite al punto de acceso subdividir un canal inmenso inal¡mbrico en pequeos conductos, lo que logra transmitir datos a mltiples aparatos de manera matem¡ticamente simult¡nea y organizada, acabando con el cuello de botella tradicional en auditorios densamente saturados.



---



## CASO 138



Contexto:

El encargado del centro de datos crea en Linux un archivo de automatizacin usando comandos de bash y lo guarda como `respaldo.sh`. En la primera lnea del archivo de texto ha escrito rigurosamente el cdigo `#!/bin/bash`. Sin embargo, al teclear `./respaldo.sh` en la consola, el sistema operativo le arroja un error absoluto de "Permiso Denegado".



Pregunta:

¿Qu comando administrativo falt ejecutar previamente sobre el archivo en el nivel de permisos para permitir que el ncleo del sistema procediera con la lectura y ejecucin del script algortmico?



Opciones:

A) Asignarle permisos Root globales usando `sudo file./respaldo.sh`

B) Cambiar la bandera de permisos agregando ejecucin matem¡tica usando `chmod +x respaldo.sh`

C) Elevar el archivo sobre la capa estricta del kernel usando `chown root:root respaldo.sh`

D) Forzar el inicio manual del demonio shell `sh./respaldo.sh --execute`



Respuesta correcta: B



Explicacin:

En los entornos de la rama Unix y Linux, crear un documento de texto y aadirle la extensin `.sh` no es suficiente para convertirlo en un programa interactivo. Linux ignora las extensiones visuales y se gua netamente por su matriz interna de permisos (Lectura, Escritura y Ejecucin). Se requiere forzosamente usar `chmod +x` (Cambiar modo sumando el bit "eXecutable") para que el motor interno acepte procesarlo como un software funcional.



---



## CASO 139



Contexto:

En una transaccin financiera SQL, la Transaccin A bloquea el "Registro de Cuenta Fija" del cliente y luego solicita el "Registro de Cuenta de Ahorros" del mismo cliente. Al mismo tiempo y en milisegundos, la Transaccin B bloquea primero el "Registro de Cuenta de Ahorros" y despus intenta acceder al "Registro de Cuenta Fija". El sistema entra en una pausa perpetua colapsada donde ambos mdulos inform¡ticos est¡n esperando indefinidamente a que el otro suelte su objeto matem¡tico.



Pregunta:

¿Qu solucin tcnica automatizada en las bases de datos modernas interviene y quiebra radicalmente el famoso "Abrazo Mortal" y la par¡lisis arquitectnica generada por la colisin?



Opciones:

A) Un algoritmo de sem¡foro local binario y paginacin en memoria swap din¡mica

B) La Base de Datos reinicia en cascada apagando los servicios secundarios forzosos

C) El Motor de Bases de Datos usa un Monitor Algortmico de Grafo de Esperas; detecta el ciclo infinito y aplica un proceso forzado (Kill) cancelando (Rollback) a la transaccin que l considera menos costosa o como la "vctima".

D) La base de datos ignora las llaves abriendo la lectura sucia en el entorno de ambas cuentas.



Respuesta correcta: C



Explicacin:

El abrazo mortal (Deadlock / Interbloqueo) es el peor terror de un programador concurrente. Los motores SQL modernos corren un vigilante interno invisible. Cuando dibuja un mapa de grafos de hilos y ve que dos procesos se bloquearon en un bucle cerrado matem¡tico infinito, el motor asume el mando total y "mata" autom¡ticamente a una de las dos consultas (la vctima) deshaciendo todo su trabajo, devolviendo la vida y funcionalidad del sistema central.



---



## CASO 140



Contexto:

El lder del equipo tcnico decide elevar la rigidez de calidad del software y exige la implementacin de una herramienta avanzada automatizada como SonarQube u otros analizadores en el entorno. Se decreta que el cdigo nuevo enviado por cualquier desarrollador no podr¡ pasar a produccin a menos que logre certificar matem¡ticamente la "Mtrica Funcional del 80%".



Pregunta:

¿A qu mtrica clave se refiere el est¡ndar de la ingeniera de software moderna cuando exige alcanzar el "80% de calidad en pruebas y flujos tcnicos"?



Opciones:

A) A la Cobertura de Cdigo (Code Coverage), exigiendo que el 80% de las lneas y condicionales del cdigo fuente escrito hayan sido ejecutadas e inspeccionadas exitosamente durante la corrida tcnica de las Pruebas Unitarias de software antes de enviar a produccin.

B) Al rendimiento mtrico de la latencia en milisegundos de la red en cada iteracin del cdigo.

C) Al 80% de xito matem¡tico analizado en la velocidad de la base relacional del backend global.

D) Al acoplamiento arquitectnico de interfaces gr¡ficas.



Respuesta correcta: A



Explicacin:

La Cobertura de Cdigo (Code Coverage) es una mtrica incuestionable de aseguramiento de calidad (QA). Si un programador elabora un sistema inmenso con 1,000 lneas repletas de condiciones "If/Else" funcionales, pero al momento de correr las pruebas (Testing Unitario) sus simuladores solo acceden y cruzan el 20% de esas ramas condicionales dej¡ndolo inexplorado, el sistema rechaza el cdigo por fragilidad al poseer un altsimo nivel de riesgo oculto para el futuro del cliente final.

\newpage
# Bloque 8
## CASO 141



Contexto:

El hospital general necesita un rediseo de red corporativa. Implementan un servidor web externo para que los pacientes de todo el mundo consulten horarios de mdicos. Sin embargo, tambin cuentan con un servidor interno que aloja el expediente clnico crtico. Por regla m¡xima de seguridad gubernamental, ambos servidores deben tener restricciones de red separadas fsicamente.



Pregunta:

¿En qu sector perimetral especfico del Firewall corporativo debe instalarse estratgicamente el servidor web pblico para aislarlo correctamente del servidor interno crtico?



Opciones:

A) En el clster enrutador interno VLAN

B) En una Zona Desmilitarizada (DMZ)

C) En un segmento Switch Capa 2 local

D) En la misma subred usando m¡scara restrictiva 



Respuesta correcta: B



Explicacin:

La Zona Desmilitarizada (DMZ) es un segmento de red aislado y ubicado entre Internet pblico y la red interna de la empresa (LAN). Los servidores que forzosamente deben recibir visitas de extraos (como p¡ginas web o correos) se ponen ah. As, si un atacante compromete el servidor web, seguir¡ bloqueado por la segunda capa del firewall corporativo y no podr¡ acceder al ¡rea profunda donde residen las bases de datos de los pacientes.



---



## CASO 142



Contexto:

Un ingeniero compite diseando un algoritmo para un robot de logstica en un almacn inteligente. El robot tiene una caja con una capacidad m¡xima de 15 kilogramos. Existen diferentes artculos de distintos pesos y valores monetarios nicos. El robot debe calcular y llevarse la combinacin matem¡tica exacta de artculos que sume el m¡ximo valor monetario posible, sin superar bajo ninguna circunstancia el peso permitido de la caja.



Pregunta:

¿A qu problema matem¡tico y algortmico cl¡sico de la programacin computacional ptima se est¡n enfrentando?



Opciones:

A) Problema de los Filsofos Comensales (Dining Philosophers)

B) Problema del Viajante de Comercio (Traveling Salesman)

C) El Problema de la Mochila (Knapsack Problem)

D) Las Torres de Hani Computacional



Respuesta correcta: C



Explicacin:

El Problema de la Mochila (Knapsack Problem 0/1) es uno de los m¡ximos exponentes de los retos matem¡ticos de optimizacin combinatoria. No se puede resolver a la ligera siendo avaro y escogiendo "el m¡s caro primero", porque podra ser muy pesado y arruinar el espacio del resto. Su solucin perfecta exige el despliegue del paradigma algortmico computacional avanzado de Programacin Din¡mica evaluando un mapa de memoria y sub-problemas.



---



## CASO 143



Contexto:

El equipo de ventas de la matriz requiere ejecutar el reporte mundial financiero de los ltimos diez aos, un an¡lisis exhaustivo que aglutina cincuenta tablas y suma miles de millones de filas en cruce. Al correrlo, el motor SQL sufre calculando todas las matem¡ticas al vuelo durante horas y colapsando el servidor completo. El DBA decide congelar los resultados y grabarlos fsicamente en un espacio separado en el disco, permitiendo que las lecturas y consultas subsiguientes sean casi instant¡neas.



Pregunta:

¿Qu tecnologa relacional avanzada aplic el Administrador de la Base de Datos para sanar y esquivar los cuellos de botella de esta demanda?



Opciones:

A) Vista Materializada (Materialized View)

B) Vista Est¡ndar Comn 

C) Disparador de Paginacin Recursiva 

D) Fragmentacin B-Tree de Indices Forzados



Respuesta correcta: A



Explicacin:

A diferencia de una Vista Comn (View normal de SQL, que solo acta como un alias y obliga a correr la consulta de nuevo matem¡ticamente), una Vista Materializada ejecuta la consulta infernal una sola vez y graba los resultados fsicos definitivos en una nueva tabla oculta del disco duro. Es el est¡ndar nmero uno en "Almacenes de Datos / Data Warehouses" donde las consultas son inmensamente largas pero se pueden programar para refrescar y regenerarse matem¡ticamente por la noche de manera invisible.



---



## CASO 144



Contexto:

Una plataforma gigantesca como Netflix o Spotify sufre problemas en el departamento de desarrollo. El equipo que gestiona y programa "La barra lateral del men web" retrasa constantemente la publicacin de actualizaciones por esperar a que el equipo que programa "El reproductor de video" termine, ya que ambos comparten y editan en el mismo archivo gigante monoltico de React/Angular.



Pregunta:

Para resolver y fragmentar la aplicacin del cliente final permitiendo que ambos equipos publiquen actualizaciones web y utilicen tecnologas independientes en la misma pantalla web al mismo tiempo sin colisionar lgicamente, ¿qu modelo de arquitectura y diseo debe emplearse?



Opciones:

A) Patrn MVC Estricto 

B) Despliegue de Aplicacin Web de P¡gina anica (SPA) nativa

C) Arquitectura de Microfrontends

D) Refactorizacin a Microservicios de Back-End Rest API



Respuesta correcta: C



Explicacin:

La Arquitectura de Microfrontends toma el mismo concepto salvador de los "Microservicios", pero lo aplica al lado del navegador e interfaz gr¡fica del cliente (Front-End). Consiste en dividir la p¡gina web visual inmensa en pequeas piezas estructurales separadas lgicamente; cada equipo puede desarrollar, probar y publicar su "pedazo" de la pantalla de forma totalmente independiente de la de sus compaeros de trabajo sin obligar a compilar un programa global inmanejable y pesado.



---



## CASO 145



Contexto:

En la programacin modular estricta de una tienda web, el arquitecto nota que las clases del "C¡lculo de Descuentos" llaman e importan rgidamente dentro de su interior a clases externas de bases de datos de bajo nivel para buscar los cat¡logos. El arquitecto rechaza el cdigo y exige inyectar una regla: Las reglas superiores de negocio jam¡s deben depender e importar archivos fsicos b¡sicos de la tecnologa del software, y ambos mdulos deben conectarse usando una abstraccin en su lugar funcional.



Pregunta:

Segn las normativas de SOLID y diseo modular, ¿qu principio fue violado de manera contundente y corregido estructuralmente?



Opciones:

A) Principio de Responsabilidad anica (SRP)

B) Principio de Sustitucin de Liskov (LSP)

C) Principio de Inversin de Dependencias (Dependency Inversion Principle - DIP)

D) Principio de Abierto y Cerrado (OCP)



Respuesta correcta: C



Explicacin:

La "D" de SOLID es el muro final arquitectnico. Dictamina formalmente que "Los mdulos de alto nivel (como la inteligencia o reglas de tu banco) nunca deben saber de la existencia ni estar encadenados a los mdulos b¡sicos de bajo nivel tecnolgico (cmo enviar un email o la marca de tu base de datos)". Ambos dominios deben depender e interactuar a travs de Interfaces (Contratos vacos abstractos), haciendo al software sumamente testeable, reemplazable e inyectable din¡micamente sin sufrimiento arquitectnico.



---



## CASO 146



Contexto:

El Sistema Operativo Linux moderno de un desarrollador cuenta con escasa memoria RAM. Cuando el usuario hace doble clic para abrir la suite completa pesada del paquete Office o LibreOffice, el sistema operativo no carga los 2 Gigabytes del programa de golpe en la memoria RAM, sino que engaa matem¡ticamente al programa dej¡ndolo en el disco duro, y va trayendo fragmentos de 4 Kilobytes a la memoria en el procesador estrictamente a medida que el programa avanza y los va requiriendo para funcionar lgicamente.



Pregunta:

¿Cmo se le denomina tcnicamente a esta funcionalidad vital propia de los sistemas de administracin de memoria y arquitectura contempor¡nea?



Opciones:

A) Carga Segmentada Lineal de Variables Directas

B) Memoria de Paginacin Estricta Asignada en ROM

C) Paginacin a Demanda (Demand Paging / Fallo de P¡gina)

D) Re-localizacin Din¡mica Secuencial Absoluta



Respuesta correcta: C



Explicacin:

La Paginacin a Demanda (Demand Paging) es la magia de los Sistemas Operativos modernos. El ncleo de Linux y Windows asume de manera perezosa (Lazy) que un usuario nunca usar¡ todas las funciones matem¡ticas de un gran software; por lo tanto, solo transfiere al procesador las "P¡ginas de memoria" especficas al momento exacto en el que el programa incurre en un "Page Fault" (Fallo de p¡gina: buscar un dato necesario que an no estaba cargado).



---



## CASO 147



Contexto:

El conmutador fsico principal (Switch) de un centro comercial administra las c¡maras de seguridad y paralelamente las computadoras pblicas de atencin al cliente. El administrador ordena la creacin de Redes Virtuales (VLANs) para que se mantengan incomunicadas lgicamente, pero ambos tr¡ficos deben fluir en el edificio a travs del mismo nico y grueso cable principal (Troncal / Trunk Link) sin revolver ni contaminar a qu grupo de red pertenecen los datos originados.



Pregunta:

¿Qu est¡ndar o protocolo de etiquetado a nivel Capa 2 manipula y estampa los paquetes introduciendo la firma de red al atravesar esta manguera troncal de hardware y switches?



Opciones:

A) Protocolo IPv6 IPsec Din¡mico Local

B) Est¡ndar IEEE 802.1Q (VLAN Tagging / Etiquetado)

C) Multiplexacin de Divisin CSMA/CD

D) Spanning Tree Protocol B¡sico Local



Respuesta correcta: B



Explicacin:

El IEEE 802.1Q (coloquialmente conocido en el gremio de redes como "dot1q") es la llave arquitectnica de las redes virtuales empresariales. Cuando la informacin de muchas redes debe viajar compartiendo un solo cable matriz (Puerto Trunk), el protocolo abre el paquete e inyecta una etiqueta (VLAN ID). El Switch receptor del otro lado lee el ID, reubica el paquete a su entorno y le retira la etiqueta sin que las computadoras finales perciban los cambios.



---



## CASO 148



Contexto:

Al ejecutar un SELECT SQL complicado, un proceso interno e invisible del servidor lee tus instrucciones relacionales e intenta inventar mltiples rutas y maneras matem¡ticas de buscar la informacin, calculando y evaluando cu¡l es la m¡s r¡pida o la que gastar¡ menos memoria RAM, para finalmente ejecutar la ganadora.



Pregunta:

¿Qu componente o sistema central algortmico interno reside en el corazn de todas las bases de datos funcionales contempor¡neas realizando esta ingeniera previa a favor del rendimiento relacional?



Opciones:

A) El Optimizador de Consultas (Query Optimizer) y el Plan de Ejecucin interno (Execution Plan)

B) El Demonio Compilador Sint¡ctico Secuencial de Variables de Entorno 

C) El Motor de Almacenamiento InnoDB Local

D) El rbol B B¡sico Paginado y Controlado en Memoria Heap Indexada



Respuesta correcta: A



Explicacin:

El Optimizador de Consultas de un Motor (Query Optimizer) asume que la instruccin SQL pudo haber sido estructurada ineficientemente por el usuario. Funciona analizando y ponderando los ndices con algoritmos estadsticos avanzados. El comando EXPLAIN expone a la vista del ingeniero la ruta final (Execution Plan) que la m¡quina invent. Un programador avanzado siempre usa este plano para descubrir los cuellos de botella exactos.



---



## CASO 149



Contexto:

Un ingeniero requiere programar un software detector de plagio textual como los de la Universidad, capaz de buscar y analizar cadenas de frases especficas dentro de enciclopedias gigantescas de libros sin ralentizarse. Descarta la bsqueda ordinaria secuencial, y aplica un algoritmo inteligente avanzado y comprobado que lee y compara el texto creando una pequea tabla matriz de coincidencias parciales, permitindole dar saltos largos y evitar releer segmentos para alcanzar una eficiencia inponente.



Pregunta:

¿Qu complejo e infalible algoritmo matem¡tico computacional implement en su bsqueda paralela?



Opciones:

A) El Algoritmo Backtracking Exhaustivo Universal

B) Algoritmo de Flujo Matem¡tico de Ford-Fulkerson en Grafos y Rutas

C) Algoritmo de Bsqueda de Cadenas Texto Knuth-Morris-Pratt (KMP String Matching Algorithm)

D) La Bsqueda Binaria de Matrices Dobles Complejas



Respuesta correcta: C



Explicacin:

El Algoritmo avanzado KMP (Knuth-Morris-Pratt) es el remedio frente a algoritmos de comparacin cl¡sicos ineficientes y lineales de "Fuerza Bruta" en textos (que retroceden desde cero ante cada error). El algoritmo KMP pre-procesa el texto clave creando y evaluando de antemano un sub-arreglo matriz de bordes y fallos, lo que le permite deslizarse a gran velocidad sobre miles de textos gigantes sin volver hacia atr¡s nunca.



---



## CASO 150



Contexto:

Un portal gubernamental ser¡ lanzado el prximo mes. El equipo de ingenieros en pruebas (QA) simula con software especializado inyectar el sistema web con 2,000 conexiones simuladas simult¡neas y regulares para verificar si el servidor y la arquitectura web pueden tolerar el nivel b¡sico promedio diario de usuarios con el que esperan trabajar cmodamente los primeros 3 aos funcionales tras publicarlo.



Pregunta:

¿Qu tipo de ciclo y pruebas de calidad de rendimiento sistem¡tico (Performance Testing) acaba de estructurar y realizar el equipo operativo?



Opciones:

A) Pruebas de Escalabilidad Local B¡sicas (Scalability Local Testing)

B) Pruebas de Tensin Estructural y Desbordamiento (Spike Testing Avanzado)

C) Pruebas Crticas de Carga (Load Testing)

D) Pruebas Formidables de Estrs Total (Stress Testing)



Respuesta correcta: C



Explicacin:

En los entornos arquitectnicos de Software Quality Assurance y Testing, se debe separar el an¡lisis en subcategoras. La "Prueba de Carga" (Load Test) mide si el software cumple establemente frente a los miles de usuarios que el servidor presupuest albergar cmodamente. Es vital diferenciarla de la famosa "Prueba de Estrs" (Stress Test), cuyo fin tcnico radica en ahogar al procesador arrojando millones de tr¡ficos exagerados sin sentido hasta ver a la infraestructura desvanecerse para entender sus lmites crticos finales.



---



## CASO 151



Contexto:

En la programacin modular de arquitecturas de componentes limpios y mantenibles, el Lder de Proyecto inspecciona el cdigo y decreta: "Las funciones de nuestras Clases Orientadas a Objetos deben siempre dedicarse estrictamente a una sola meta conjunta; pero tambin deben mantenerse estructuralmente separadas de otras clases para que, si un departamento actualiza su clase central general, a ningn otro desarrollador se le rompa su trabajo".



Pregunta:

¿Con qu dupla de trminos inquebrantables de ingeniera y estructura del diseo modular arquitectnico se est¡ guiando el requerimiento del director del proyecto?



Opciones:

A) Alto Acoplamiento Sistmico y Baja Cohesin Operativa

B) Alta Cohesin (High Cohesion) y Bajo Acoplamiento Modular (Low Coupling)

C) Alta Polimorfizacin Modular Local y Abstraccin Total Funcional Abstracta

D) Inversin Din¡mica Global y Herencia Profunda Extensa Simple



Respuesta correcta: B



Explicacin:

"Alta Cohesin y Bajo Acoplamiento" es el lema mundial de los ingenieros arquitectnicos del software global. La Cohesin mide que las partes dentro del mtodo sean afines entre s (no puedes agrupar funciones de "imprimir nmina" junto a mtodos para "renderizar gr¡ficos 3D" en un mismo componente). Un Bajo Acoplamiento persigue que una clase o servicio no quede encadenada a las particularidades internas secretas de otra, sino que ambas deben colaborar ciegamente mediante contratos (Interfaces).



---



## CASO 152



Contexto:

Se est¡ diseando el marcapasos mdico computarizado interno del corazn y la red computacional del freno (ABS) de la planta automotriz. Los arquitectos descartan instalarles el sistema operativo Windows o Linux comn, indicando categricamente que "si el sistema operativo llega a distraerse priorizando procesos internos sin valor, o si su kernel sufre un retraso en contestar e interrumpir el procesador, una vida estara en riesgo".



Pregunta:

Bajo requerimientos de velocidad determinista inalterable, ¿qu arquitectura base e instalacin de Sistema Operativo estructural global de la industria y bajo nivel deben utilizar para esta computadora?



Opciones:

A) Un Sistema Operativo Distribuido Basado en Mensajes y Microservicios Centralizados

B) Un Sistema Operativo Multiusuario Multitarea Segmentado en Paginacin Local (Timesharing OS Global)

C) Un Sistema Operativo Cl¡sico de Tiempo Real Estricto (Hard Real-Time Operating System / RTOS)

D) Un Sistema Operativo Simple y Monotarea Basado en Lotes Estructurales Secuenciales Din¡micos B¡sicos de Hardware



Respuesta correcta: C



Explicacin:

Un RTOS "Duro" (Real Time Operating System o SOTR) garantiza de forma extrema que las instrucciones enviadas a sus componentes vitales van a procesarse y dar la contestacin en un plazo estricto de tiempo prefijado y determinstico, en vez de un "plazo aproximado y variable sin urgencia como hace Windows al mover y cargar tu archivo pesado". Para la medicina y el sector aeroespacial, fallar la mtrica exacta de velocidad lmite equivale a fallar totalmente.



---



## CASO 153



Contexto:

El administrador nota que cuando cien computadoras del departamento logran acceder al mismo servidor externo de puerto web seguro cifrado (Puerto TCP 443 HTTPS corporativo seguro en la Nube), las cien computadoras reciben la respuesta simult¡nea correctamente cruzada sin enredar las ventanas del navegador con lo que otro usuario local pidi al mismo servidor global.



Pregunta:

Bajo las reglas de los modelos enrutados del sistema, ¿qu caracterstica esencial de la Capa de Transporte (TCP) es implementada por cada m¡quina cliente local para identificar de retorno individualmente a su pestaa especfica a pesar de dirigirse todas al mismo servidor y puerto universal mundial nico 443 HTTP central del destino final?



Opciones:

A) El Encapsulamiento Virtual Cclico Simple NAT y el Modelo IP din¡mico

B) La Asignacin de Puertos Origen (Ephemeral Source Ports locales)

C) El Control Paralelo Fsico Matem¡tico del Sumatorio Checksum Fijo Local Din¡mico Paralelo Cclico Global 

D) La Direccin Aleatoria MAC del Puerto General en Capa Din¡mica Central



Respuesta correcta: B



Explicacin:

El servidor externo seguro corporativo espera la peticin sentado pacficamente en su puerto "443 Est¡ndar Universal (Destination Port)". Pero la computadora cliente para diferenciarse, crea un "Socket de Red" combinando su IP con un puerto nmero nico asignado de manera aleatoria llamado "Puerto de Origen Efmero" o Ephemeral Source Port (ej. 50,422 o 56,128). Cuando el servidor de Amazon le contesta, enva la respuesta adjuntando y atando exactamente el resultado a ese Puerto individual exclusivo, asegurando que a tu pestaa le llegue tu video y no el de tu compaero.



---



## CASO 154



Contexto:

El volumen del juego de un celular colapsa tu servidor central relacional MySQL. Necesitan m¡s poder para aguantar las millones de partidas. El jefe ordena agregarle RAM, procesador, y cambiar el disco duro por un inmenso almacenamiento de estado slido NVMe ltimo modelo. Con este incremento nico a la m¡quina central actual local en la torre de seguridad, creen que aguantar¡n 3 aos antes de requerir un servidor superior.



Pregunta:

¿Qu mtodo e iniciativa tcnica estructural directa de arquitectura e ingeniera del Cloud Computing para crecimiento est¡ ejerciendo tu jefe con sus acciones corporativas internas ?



Opciones:

A) Escalabilidad Distribuida Din¡mica

B) Escalabilidad Horizontal Global (Scale-Out o Nodos Independientes Masivos)

C) Crecimiento por Microservicios Vertical Din¡mico Local Pldora

D) Escalabilidad Vertical Estructural (Scale-Up / Agrandamiento Monoltico de un nico Equipo)



Respuesta correcta: D



Explicacin:

La Escalabilidad Vertical (Scale-Up) de la nube moderna se fundamenta estrictamente en la antigua usanza directa: tomar al servidor central y hacerlo grande y gigante hasta exprimir el tope de la placa base incrementando RAM y CPU. Su limitante es que tiene un tope tecnolgico y requiere apagar el servidor. Su rival arquitectnico poderoso invencible es el Horizontal (Scale-Out): En vez de un sper servidor monstruo gigantesco, utilizas cientos de computadoras simples, baratas e independientes conectadas en paralelo formando un clster de alta disponibilidad.



---



## CASO 155



Contexto:

El ingeniero implementa una Tabla Hash para asignar correos. Como el espacio reservado es limitado, ocurre que la funcin matem¡tica designa que los datos de los usuarios "Ana" y "Carlos" ir¡n destinados al mismo ndice de casillero (Bucket). El programador salva esto permitiendo que el objeto final no se re-escriba mutuamente por colisin; en su lugar enlaza la variable mediante punteros formando en esa casilla interna una pequea lista entrelazada.



Pregunta:

¿Cmo se denomina formalmente a esta brillante e infalible solucin de arquitectura de colecciones implementada para sortear la anomala estructural de diccionario algortmico global?



Opciones:

A) Resolucin Din¡mica Aleatoria Lineal Central Fija

B) Resolucin Absoluta de Colisiones Por Encadenamiento Separado (Separate Chaining)

C) Resolucin Abierta y Exploracin por Sondeo Lineal de Capacidad Limitada

D) Hashing y Re-Hash Fractal Cclico Matem¡tico Din¡mico Absoluto Central 



Respuesta correcta: B



Explicacin:

El Encadenamiento (Chaining de diccionarios) en la algoritmia, absorbe tranquilamente la inevitable "Colisin" matem¡tica asignando la responsabilidad del orden matem¡tico estricto a una sub-lista secundaria (Linked List estricta). Su rival alternativo es el "Sondeo Lineal de Direccin Abierta (Probing)": Si un casillero fijo local est¡ lleno por colisin, salta algortmica y desesperadamente a los casilleros paralelos vecinos del arreglo matriz buscando un hueco libre para estacionar el valor.



---



## CASO 156



Contexto:

El equipo interviene la base de datos MySQL el fin de semana. No hay ningn ticket, error, fallo o queja levantada por los usuarios, pero ellos purgan la base, actualizan el motor y corren reconstruccin de ndices fragmentados para impedir que el sistema falle por ralentizacin en los prximos cuatro meses y asegurar el rendimiento.



Pregunta:

¿Qu categora del est¡ndar y modelo cl¡sico universal de mantenimiento de Ingeniera y ciclo de software est¡n efectuando anticipadamente?



Opciones:

A) Mantenimiento Evolutivo Local Din¡mico Paralelo General Directo Central

B) Mantenimiento Adaptativo Cclico Simple Lineal Abstracto 

C) Mantenimiento Preventivo y 

D) Mantenimiento Correctivo Directo Fijo Simple Paralelo Central



Respuesta correcta: C



Explicacin:

El Mantenimiento Preventivo ocurre proactivamente antes de un fallo. El "Correctivo" repara bugs que ya rompieron el sistema y generaron tickets. El "Adaptativo" modifica al sistema si el banco cambi sus normativas fiscales obligatorias, y el "Evolutivo o Perfectivo" agrega caractersticas nuevas, funciones extra y mejoras que el cliente pag por tener transaccionalmente en el cdigo futuro.



---



## CASO 157



Contexto:

Un cientfico codifica analticamente un c¡lculo en un script. Empieza declarando la variable en su cdigo fuente como: `edad = 5;`. El compilador del lenguaje no arroja ningn mensaje y arranca; pero treinta lneas m¡s abajo en pleno tiempo de procesamiento del programa, le asigna y modifica el valor escribiendo `edad = "Joven"`. El sistema procesa la orden, destruye el formato numrico interno y ajusta la variable cambi¡ndola din¡micamente como objeto de texto de manera natural en memoria.



Pregunta:

¿Bajo qu categora de paradigma de lenguaje arquitectnico estructurado en tipado oper el sistema sin abortar la ejecucin?



Opciones:

A) Lenguaje Estrictamente Tipado y Compilado (Statically Typed Language)

B) Lenguaje Universal Paradjico Multi Cclico Lineal Fijo Abierto 

C) Lenguaje de Tipado Dbil y Din¡mico Simple (Dynamically Typed Language)

D) Lenguaje Interpretado Por Bloques Fijos y Centrales Paralelos Simples



Respuesta correcta: C



Explicacin:

En Lenguajes formalmente de tipado estricto "" (como Java, C#), la declaracin obliga a firmar con sangre el molde: `int edad = 5;` es una muralla matem¡tica; si luego le metes un `edad = "Joven"`, explota en tiempo de compilacin y no corre. Lenguajes de tipado "Din¡mico" (Python, JavaScript cl¡sico) determinan el peso, forma y tipo del objeto sobre el camino al vuelo "en tiempo de ejecucin (runtime)", permitiendo a la variable mutar a voluntad.



---



## CASO 158



Contexto:

Un servicio clave que gestiona las peticiones del sistema de impresin Linux central no tiene ninguna ventana ni interfaz gr¡fica. Corre por meses enteros invisible bajo el agua y memoria RAM en segundo plano, esperando pacficamente a que un cliente enve un documento para ser procesado en la cola y puramente central de red din¡mica.



Pregunta:

¿Qu categora computacional estructural y trmino central Unix/Linux cl¡sico define globalmente a este programa que opera ininterrumpidamente en fondo?



Opciones:

A) Un Macro-Script Autom¡tico 

B) Una M¡quina Virtual 

C) Un Servicio Windows Cl¡sico Abstracto

D) Un Demonio de Segundo Plano (Background Daemon)



Respuesta correcta: D



Explicacin:

Los "Daemon" (Demonios) son las piezas vitales en arquitectura Linux. Son procesos y programas silenciosos que cobran vida al arrancar la computadora, desat¡ndose de cualquier consola (terminal), viviendo sin interfaz gr¡fica alguna, haciendo todo el trabajo pesado de fondo de manera y paralela (Ej. El Demonio cron de reloj, el servidor web Apache httpd, o el controlador dockerd).



---



## CASO 159



Contexto:

El proveedor ISP usa un canal de fibra ptica nica para la red metropolitana cruzada. Es fsicamente inviable lanzar y colocar un hilo separado para cada cliente. Los arquitectos toman los canales independientes de diez edificios diferentes y los mezclan y envan simult¡neamente empuj¡ndolos dentro del mismo hilo ptico al mismo tiempo separando las transmisiones con distintos colores de luz y frecuencias sin que interfieran entre ellas.



Pregunta:

¿Qu concepto pilar en la telecomunicacin y teora general de Capa 1 de redes computacionales permite interconectar y paralelizar mltiples canales de transmisin sobre y a lo largo de un mismo conducto fsico de hardware?



Opciones:

A) La Paginacin y Filtrado Cclico de Antenas y Canales Din¡micos

B) El Subneteo 

C) La Modulacin Unicast 

D) La Multiplexacin General (Multiplexing)



Respuesta correcta: D



Explicacin:

La Multiplexacin (Multiplexing) aglutina docenas de llamadas o flujos de datos independientes, codific¡ndolos y envi¡ndolos asncronamente mezclados sobre el mismo canal compartido fsico (cable o espectro de radio), para luego volverlos a desarmar o demultiplexar en el router de llegada sin que las conversaciones y tramas se crucen o interfieran lgicamente, multiplicando la capacidad del hardware.



---



## CASO 160



Contexto:

El administrador purista del sistema de ventas SQL no confa pasivamente en los programadores front-end web para cuidar que el negocio no asigne precios de cero pesos o precios matem¡ticamente negativos a una factura desde la interfaz visual. Para asegurarse a toda costa de que ningn registro falso corrompa las reglas, incrusta a nivel de la estructura de la base central una barrera de cdigo SQL relacional que rechazar¡ cualquier "INSERT" donde la columna del "Monto" sea menor numricamente a un peso.



Pregunta:

¿Qu mecanismo cl¡sico forzoso de modelado de integridad y arquitectura relacional SQL ha forjado directamente en la capa de la base de datos de manera definitiva?



Opciones:

A) Trigger DDL 

B) Secuencia de Generacin Cclica de Disparo

C) Llave For¡nea y Integradora Mutante Cclica

D) Restriccin de Integridad de Dominio o Verificacin de Limites (CHECK Constraint Estricto)



Respuesta correcta: D



Explicacin:

Las Restricciones "CHECK" (Restriccin de Dominio) te blindan a nivel de ncleo de base de datos. Al obligar a la columna a seguir una regla condicional (ej. `Monto > 0` o `Estado IN ('Activo', 'Pausado')`), ni siquiera el desarrollador o administrador del sistema con m¡ximos privilegios puede obligar y forzar a la tabla a guardar un estado o valor inv¡lido o numricamente inaceptable bajo las polticas matem¡ticas.

\newpage
# Bloque 9
## CASO 161



Contexto:

El administrador de redes requiere elegir un protocolo de enrutamiento interno. Desea que el algoritmo no solo cuente la cantidad de enrutadores, sino que considere estrictamente el ancho de banda del enlace y la velocidad fsica del cable para formar la ruta ptima basada en el costo.



Pregunta:

¿Qu protocolo din¡mico de estado de enlace (Link-State) utiliza esta mtrica en la industria?



Opciones:

A) RIP (Routing Information Protocol)

B) BGP (Border Gateway Protocol)

C) OSPF (Open Shortest Path First)

D) EIGRP (Enhanced Interior Gateway Routing Protocol)



Respuesta correcta: C



Explicacin:

El protocolo OSPF es el est¡ndar de redes corporativas. A diferencia de protocolos de Vector Distancia como RIP, OSPF mide el costo matem¡tico del enlace, prefiriendo dar saltos r¡pidos por fibra ptica en lugar de usar rutas cortas por cables de cobre lentos.



---



## CASO 162



Contexto:

En la arquitectura de un motor de bases de datos, los ndices se construyen frecuentemente bajo la estructura de un rbol B+. El DBA nota que en consultas de rangos (BETWEEN), el sistema no baja y sube repetidamente por las ramas, sino que localiza el primer valor y navega fluidamente en lnea recta por el fondo leyendo filas velozmente.



Pregunta:

¿Qu diferencia estructural clave del rbol B+ sobre el rbol B cl¡sico permite este rendimiento horizontal?



Opciones:

A) Los Nodos raz almacenan todas las ramas cruzadas.

B) En el rbol B+ los nodos hoja finales (donde residen todos los datos) est¡n vinculados mediante una Lista Enlazada secuencial.

C) El rbol B+ carece de races superiores.

D) Carga en memoria RAM todos los datos en estructuras Heap.



Respuesta correcta: B



Explicacin:

En el rbol B+, todos los datos residen exclusivamente en las hojas finales en el piso inferior del ¡rbol, y dichas hojas se conectan entre s con punteros formando un carril horizontal. Si buscas un rango, localiza el inicio y se desliza linealmente hacia la derecha leyendo sin volver a subir.



---



## CASO 163



Contexto:

Un programador necesita actualizar el salario del 10% de los empleados en una tabla masiva. En lugar de ejecutar una sola instruccin UPDATE, implementa un Cursor en SQL, recorriendo y procesando la tabla manualmente "fila por fila". El servidor sufre una cada de rendimiento.



Pregunta:

¿Cu¡l es el gran problema estructural con el uso de Cursores en motores relacionales pesados?



Opciones:

A) Generan Bloqueos de Tabla destruyendo el ACID.

B) Rompen el motor al no estar paginados.

C) Operan mediante un modelo Iterativo rompiendo la filosofa "Orientada a Conjuntos" (Set-Based) de la base de datos.

D) Generan vistas materializadas ocultas.



Respuesta correcta: C



Explicacin:

SQL es un lenguaje declarativo que opera nativamente sobre Conjuntos (Set-Based). Si usas un Cursor, lo degradas oblig¡ndolo a operar como un primitivo bucle secuencial (fila por fila), incurriendo en altos costos por Cambio de Contexto en el procesador y arruinando la velocidad.



---



## CASO 164



Contexto:

El equipo dise la arquitectura front-end donde el Cdigo Visual (Interfaz) enva directamente sus peticiones al Cdigo Controlador. Este Controlador contacta al Modelo para obtener datos. Posteriormente, el propio Controlador retorna para indicarle imperativamente a la Interfaz Visual qu gr¡ficos debe redibujar, sin que el Modelo participe.



Pregunta:

¿Bajo qu patrn de y capas arquitectnicas de front-end est¡n laborando?



Opciones:

A) Arquitectura RESTful Din¡mica Central

B) Patrn MVC Cl¡sico (Model-View-Controller)

C) Arquitectura SOA (Service Oriented Architecture)

D) Patrn Modelo-Vista-Presentador (Model-View-Presenter - MVP)



Respuesta correcta: D



Explicacin:

El patrn MVP se diferencia del cl¡sico MVC en que la Vista y el Modelo est¡n rgidamente incomunicados. Todo el poder fluye por el Presentador; si el usuario da clic en la Vista, el Presentador atiende, pide al Modelo el dato y es el propio Presentador quien inyecta visualmente la gr¡fica a la Vista.



---



## CASO 165



Contexto:

Un ingeniero desarrolla en C#. A una variable se le ingresa el texto literal `"100"` desde un formulario, pero al intentar ejecutar en el cdigo un `if (variable == 100)` para c¡lculos, el compilador arroja un error estructural marcando incompatibilidad.



Pregunta:

¿Cmo clasifica la ingeniera de lenguajes al modelo estructural C# que impide este cruce en el uso de memoria comparativa?



Opciones:

A) Lenguaje Din¡mico Orientado a Objetos 

B) Lenguaje de Tipado Fuerte y Estricto (Strongly Typed Language)

C) Lenguaje Adaptativo de Compilacin Temprana

D) Sistema de Intrprete Lineal



Respuesta correcta: B



Explicacin:

En los lenguajes de Tipado Fuerte (como C# o Java), el compilador es inflexible. Una variable que nace como cadena (String), es puramente de texto para siempre en su contexto, y no permitir¡ ser cruzada frente a un nmero entero sin que medie explcitamente un mtodo conversor previo (Parse o Cast).



---



## CASO 166



Contexto:

En un sistema hospitalario, existe una impresora global centralizada. Si cien computadoras mandan documentos al mismo tiempo, el sistema guarda los trabajos completos en el disco de manera inmediata simulando una impresin instant¡nea para liberar las pantallas, para luego pasarlos uno a uno a la impresora electromec¡nica en el orden correcto.



Pregunta:

¿Cmo se denomina histricamente a esta tcnica de simulacin con memoria intermedia en disco para desahogar la concurrencia r¡pida?



Opciones:

A) Paginacin Lineal en Clster (Paging Spool)

B) Interbloqueo de Procesador (Deadlock Spooling)

C) Tcnica de SPOOLING (Simultaneous Peripheral Operations On-Line)

D) Multiplexacin en Archivos FAT Cclicos



Respuesta correcta: C



Explicacin:

SPOOL (Operaciones en lnea de perifricos simult¡neos) intercepta y guarda el documento digital velozmente en una zona del disco (Cola de Impresin), devolviendo de inmediato el control y poder del cursor a la computadora, y dejando que un proceso daemon secundario lidie con el hardware real.



---



## CASO 167



Contexto:

El gerente corporativo busca deshacerse de docenas de enrutadores de marcas diferentes que requieren programarse en la consola uno por uno. Implementa un esquema donde todos los enrutadores fsicos actan como interruptores de cables, recibiendo estrictamente sus rutas y polticas de red a larga distancia desde una aplicacin de inteligencia y cerebro de software en un panel controlador maestro.



Pregunta:

Bajo este concepto arquitectnico en donde el plano de control se separa por completo del hardware fsico local, ¿qu tecnologa de redes est¡n inyectando en la empresa?



Opciones:

A) Redes Privadas Virtuales VPN Din¡micas

B) VLANs Segmentadas Hbridas Fsicamente

C) Redes Definidas por Software (Software Defined Networking - SDN)

D) BGP OSPF Din¡mico Autnomo



Respuesta correcta: C



Explicacin:

Las Redes Definidas por Software (SDN) revolucionaron el mundo corporativo separando al "Plano de Control" (El Cerebro) del "Plano de Datos" (Los cables y Switches locales fsicos). Permite orquestar remota y m¡gicamente toda la topologa del edificio usando reglas, software avanzado virtual y APIs.



---



## CASO 168



Contexto:

Un arquitecto de plataformas bancarias debe asegurar la coherencia completa mundial al actualizar fondos. Exige que un servidor principal en Mxico contacte a un servidor secundario en Espaa antes del cargo, ambos bloqueen y confirmen las disponibilidades, y nicamente si ambas partes asienten su voto por red confirmando estar listos, procedan al unsono a ejecutar de verdad la alteracin de los datos.



Pregunta:

¿Qu protocolo cl¡sico computacional y mecanismo distribuido para confirmacin en clster mundial est¡ instaurando para garantizar transaccionalidad de bases mltiples?



Opciones:

A) Escalabilidad Fragmentaria Vertical

B) Algoritmo de Aprobacin Token-Ring

C) Consenso Mltiple 

D) Protocolo de Confirmacin de Dos Fases (Two-Phase Commit Protocol / 2PC)



Respuesta correcta: D



Explicacin:

El Commit en Dos Fases (2PC) es la garanta extrema en bases de datos distribuidas. Como no puedes asegurar que el servidor remoto no se apague, la Fase 1 obliga y pregunta: "¿Est¡n listos?". Si todos envan un "S", se procede a la Fase 2 del "Commit General". Si uno solo falla, se aborta protegiendo la base.



---



## CASO 169



Contexto:

En la optimizacin de cdigo, un desarrollador detecta que su software cuenta el nmero de elementos de un arreglo de 1 milln de clientes iterando linealmente registro por registro. Decide refactorizar usando la funcin `.length` de Java. El compilador entrega la longitud total requerida matem¡ticamente salt¡ndose la iteracin al leer instant¡neamente un metadato preestablecido internamente.



Pregunta:

Tcnicamente usando el formalismo y Notacin de Ciencias de la Computacin, ¿a qu nivel de complejidad superior y matem¡tica se elev esta simple consulta?



Opciones:

A) Complejidad Optimizada Lineal: O(n)

B) Complejidad Logartmica: O(log n)

C) Complejidad Cuadr¡tica: O(n^2)

D) Complejidad Inmediata: O(1)



Respuesta correcta: D



Explicacin:

La notacin O(1) ("O ") significa que la accin del procesador tomar¡ matem¡ticamente siempre exactamente el mismo tiempo de procesamiento inamovible e inmediato, sin importar si la lista tiene un elemento o un milln. Consultar un metadato como `.length` toma tiempo inmediato.



---



## CASO 170



Contexto:

Durante un proyecto ¡gil, siete desarrolladores asisten por la maana a una reunin de quince minutos parados en crculo. Al iniciar el evento, un ingeniero despliega un archivo Excel y empieza a dar quejas, explicaciones, y reportes tcnicos visuales de un problema profundo que requiere resolver.



Pregunta:

Bajo la filosofa y el marco inquebrantable internacional de Scrum, ¿qu pilar clave procedimental rompi el programador durante su junta matutina?



Opciones:

A) Rompi el Sprint Backlog de refinamiento.

B) Rompi formalmente la regla del "Daily Stand-up" o "Daily Scrum", cuyo objetivo es sincronizacin rel¡mpago de quince minutos (Timebox) para reportar "Qu hice, Qu har y Qu me detiene", no para debatir ni resolver problemas profundos.

C) Alter el cdigo de Integracin gil.

D) Viol pasivamente el "Sprint Review" general de cierre.



Respuesta correcta: B



Explicacin:

El Daily Stand-up o Daily Scrum es para sincronizacin de equipo y alerta de estatus. Todo problema tcnico profundo que asome debe registrarse y solucionarse estrictamente terminando los quince minutos en una junta privada ("Offline / Estacionamiento"), garantizando no secuestrar el valioso tiempo de todos los programadores.



---



## CASO 171



Contexto:

Un Arquitecto de Software programa y disea el Sistema de Impresoras. Crea la clase `Impresora` con el mtodo operativo `imprimirDatos()`. Posteriormente, crea la clase `Escaner` con otro mtodo diferente pero llamado con el mismo ttulo exacto `imprimirDatos()`. Luego el becario programa la clase `ImpresoraMultifuncional` intentando hacerla heredar simult¡neamente de ambas clases madre, causando que el compilador enloquezca.



Pregunta:

¿Cmo se conoce a la anomala y conflicto arquitectnico general matem¡tico que caus el bloqueo mundial nativo que prohibi la Herencia Mltiple estricta de clases en Java y en C# moderno?



Opciones:

A) El Problema del Doble Bucle 

B) El Colapso de Encapsulamiento de Red

C) El Problema del Diamante (Diamond Problem)

D) La Anomala de Reubicacin de Metadatos



Respuesta correcta: C



Explicacin:

El Problema del Diamante es la gran tragedia terica que nace de la Herencia Mltiple directa. Si una clase hbrida hereda de dos padres y ambos padres programaron y comparten el mismo nombre de funcin, cuando ejecutes el comando final sobre la clase hbrida ni el procesador ni la m¡quina virtual tendr¡n manera de saber cu¡l de los dos cdigos paternos tiene prioridad local, generando un error insalvable.



---



## CASO 172



Contexto:

En un sistema central computacional, la memoria RAM est¡ pr¡cticamente ahogada de carga. Para mantener abiertos y vivos cuarenta programas, el Sistema Operativo usa todo el tiempo real computacional dedic¡ndose nicamente a mover las "P¡ginas de memoria virtual" desde la RAM hacia el Disco Duro (archivo Swap), y viceversa retornando otras, colapsando y deteniendo el avance real del procesamiento til.



Pregunta:

¿Qu nombre tcnico recibe esta crisis de sobre-paginacin extrema de saturacin y crculo tr¡gico intil de procesamiento?



Opciones:

A) Paginacin Secuencial Cclica

B) Condicin Paralela de Carrera

C) Thrashing (Hiperpaginacin o sobrecarga cclica del Swap de memoria)

D) Inanicin y Segmentacin Fija



Respuesta correcta: C



Explicacin:

El Thrashing (Hiperpaginacin) sucede inevitablemente en entornos inform¡ticos asfixiados cuando la CPU est¡ cien por ciento ocupada, pero no hace nada de trabajo til, porque el Kernel del Sistema Operativo invierte todos sus ciclos valiosos en "salvar y mover" datos temporalmente de la memoria fsica agotada al disco mec¡nico (Swap).



---



## CASO 173



Contexto:

Dentro del campus universitario con tres mil computadoras, el director desea conectar inteligentemente el tr¡fico de routers internos para que negocien tablas cruzadas y decidan velozmente enrutar el tr¡fico por caminos seguros internamente. Para esto instaura protocolos para organizar la red de forma interior, sin notificar ni enrutar tablas hacia los proveedores de internet mundiales externos.



Pregunta:

Bajo la normativa de divisin purista de enrutamiento TCP/IP, ¿qu categora general y denominacin estructural tcnica reciben estos protocolos de comunicacin topolgica intra-red?



Opciones:

A) Protocolos de Enrutamiento MAC Fijo

B) Protocolos BGP Excluyentes Mundiales

C) Exterior Gateway Protocols (EGP)

D) Interior Gateway Protocols de Ruteo (IGP - Protocolos de Puerta de Enlace Interior)



Respuesta correcta: D



Explicacin:

Las Redes y Ciencias de las Telecomunicaciones se segmentan en dos dominios centrales. Los Protocolos Interiores de Puerta de Enlace (IGP - como RIP, OSPF, EIGRP) rigen y viven nicamente para orquestar el tr¡fico contenido estrictamente dentro del mismo Sistema Autnomo corporativo y de la red local base. Lo opuesto son los EGP (Exterior Gateway como BGP), que orquestan las rutas que conectan continentes y proveedores ISPs a nivel de Internet global.



---



## CASO 174



Contexto:

Al crear la tabla de asignacin de "Guardias Especiales", el desarrollador usa la llave principal compuesta: `ID_Empleado` y `Fecha_Turno`. El diseo obedece las reglas de la 3FN. Aun as, la tabla muestra redundancia cruzada anmala porque existe una superposicin entre "Rol_Hospital" y "Area_Trabajo". Se exige aplicar una etapa extra avanzada especial para sanar estas llaves superpuestas en la tabla.



Pregunta:

¿Cu¡l forma rigurosa de normalizacin superior en matem¡ticas relacionales es la que rige formalmente la resolucin central y erradicacin de superposicin cruzada entre mltiples "Llaves Candidatas" de control?



Opciones:

A) La Primera Forma Normal Cl¡sica Multivaluada

B) La Cuarta Forma Normal Cruzada 

C) La Forma Normal de Boyce-Codd (BCNF)

D) La Quinta Forma Normal Simple



Respuesta correcta: C



Explicacin:

La Forma Normal de Boyce-Codd (BCNF) es una versin m¡s poderosa, paranoica y estricta de la tradicional Tercera Forma Normal. Interviene en la alta arquitectura cuando la tabla matem¡tica posee dos o m¡s columnas que est¡n superpuestas y ambas tienen capacidad estricta e independiente de funcionar como "Llaves Candidatas o Determinantes ".



---



## CASO 175



Contexto:

En la programacin de optimizacin de rutas, un ingeniero utiliza un algoritmo matem¡tico para detectar rutas de costo en grafos cruzados. Necesita una alternativa robusta para evitar que las variables con costo o de peso de distancia "negativa" rompan el c¡lculo de manera perjudicial como sucede nativamente si usa tradicionalmente el algoritmo de Dijkstra.



Pregunta:

Bajo este escenario de peso numrico matem¡tico destructivo de mtricas negativas de aristas, ¿qu algoritmo es la solucin inquebrantable de grafos de ruteo para encontrar distancias mnimas sin fallar?



Opciones:

A) Algoritmo de Flujo Din¡mico Matem¡tico DFS

B) El Algoritmo A* Estrella

C) El Algoritmo Din¡mico de Kruskal

D) El Algoritmo Matem¡tico de Ruteo de Bellman-Ford



Respuesta correcta: D



Explicacin:

El algoritmo cl¡sico del holands Dijkstra est¡ ante las distancias con peso negativo, provocando y generando bucles o mal-informacin y subestimando costos de manera letal. El algoritmo matem¡tico de Bellman-Ford no solo soporta a los grafos repletos de "Aristas de Costo Negativo", sino que adem¡s detecta como alerta de radar si existe oculto un ciclo negativo y bucle atascado infinito en la red relacional.



---



## CASO 176



Contexto:

El equipo comercial decide migrar de la metodologa estructural de Cascada (Waterfall), donde el proyecto tardaba lgicamente doce meses en analizarse, probarse e implementarse ciegamente hasta la entrega final, hacia un marco de Desarrollo gil (Scrum).



Pregunta:

En trminos empresariales, de control y de ingeniera moderna, ¿qu beneficio absoluto e insuperable aporta al cliente pasarse a una metodologa "gil" por encima del dinosaurio secuencial cl¡sico "Waterfall"?



Opciones:

A) Que gil carece ciegamente de arquitectura y documentacin tcnica, abaratando el software.

B) Garantiza el xito estructural de cdigo y sin bugs ni colisiones.

C) El beneficio supremo de las "Entregas Iterativas e Incrementales", las cuales aportan valor de producto utilizable por el cliente en ciclos cortos (Sprints), permitindole cambiar de opinin o moldear su direccin r¡pidamente.

D) El ahorro total de programadores al no necesitar servidores paralelos de Testing.



Respuesta correcta: C



Explicacin:

La Cascada es infalible si construyes un edificio donde cambiar planos al mes 9 significa un suicidio financiero. Pero para el entorno corporativo de software, el ciclo "gil" es superior al dividir al proyecto masivo en "Incrementos Iterativos Semanales". Esto le da vida al software desde el mes nmero uno permitiendo corregir el rumbo o abortar temprano asegurando el Retorno de Inversin.



---



## CASO 177



Contexto:

El lenguaje Java no tolera la "Mltiple Herencia de Clases", imposibilitando crear estructuras hbridas derivadas de dos ¡rboles diferentes. En lugar de esto, si la clase debe amoldarse implcitamente a un conjunto de promesas de comportamiento de distintos departamentos, implementa cascarones de accin sin mtodos construidos internos, firmando contratos arquitectnicos.



Pregunta:

Bajo la POO y programacin de diseo limpio, ¿cmo se les llama universalmente a estos "contratos de comportamiento" que exigen al programador implementar ciertos mtodos pero carecen de cdigo funcional interior?



Opciones:

A) Clases Abstractas de Alto Acoplamiento

B) Instancias Din¡micas Generales

C) Mtodos Sellados de Clster

D) Interfaces (Interfaces de POO / Interfaces de comportamiento)



Respuesta correcta: D



Explicacin:

Las *Interfaces* no tienen cdigo ni vida propia abstracta; son una especie de tratado obligatorio. Si t y tu clase firma la interfaz de contrato "ICalculable", autom¡ticamente el compilador te obligar¡ forzosamente a programar lgicamente y dotar de vida a un mtodo interno llamado "Calcular()", promoviendo flexibilidad sin padecer el problema de la herencia mltiple en cdigo.



---



## CASO 178



Contexto:

Una unidad USB ha sido formateada con Clsteres o Sectores en el disco duro del tamao colosal de 64 Kilobytes. Un desarrollador almacena un texto diminuto de solo 2 Kilobytes en un archivo. El Sistema Operativo lo asienta en un sector de 64KB, pero sella y prohbe formalmente que se pueda encadenar o guardar cualquier otra cosa distinta en el espacio fsico libre de ese mismo sector que sobr.



Pregunta:

¿Qu anomala matem¡tica de fragmentacin y desperdicio espacial de arquitectura computacional est¡ ocurriendo masivamente bajo esta ciencia de discos?



Opciones:

A) Fragmentacin Externa Central

B) Desperdicio Abstracto de Pila Secuencial

C) Fragmentacin Externa

D) Fragmentacin Interna (Internal Fragmentation de Memoria y Sectores)



Respuesta correcta: D



Explicacin:

La Fragmentacin Interna de Sectores es una calamidad en unidades de almacenamiento. Si el sistema divide la cuadrcula en cajas fijas inalterables (ej. de 64 KB), y t guardas una carta de texto que solo pesa 2 KB, al meterlo al cajn, el cajn completo se "cierra"; desperdiciando intilmente y bloqueando brutalmente en vaco computacional los 62 KB de espacio sobrante del clster fsico.



---



## CASO 179



Contexto:

Un empleado del ¡rea legal necesita trabajar remotamente usando internet en una cafetera insegura conect¡ndose lgicamente a la red de su corporativo. Su objetivo es operar como si estuviera sentado fsicamente dentro de las oficinas y acceder a la intranet interna de forma cifrada, sin que los hackers logren interceptar las contraseas que teclea.



Pregunta:

¿Qu tecnologa de seguridad criptogr¡fica de red y encapsulamiento deben proporcionarle para blindar sus comunicaciones?



Opciones:

A) Traduccin de Direcciones (NAT) Cclica

B) La Apertura Asignada de Puertos TCP/IP 

C) Protocolos de Red Privada Virtual y Tunelado Encapsulado (VPN y Protocolo IPsec en tnel matem¡tico)

D) Direccin Aleatoria MAC en Capa 2



Respuesta correcta: C



Explicacin:

Las Redes VPN corporativas (Virtual Private Networks) son el cimiento de seguridad de tnel seguro "extremo a extremo". Toman la informacin del empleado remoto, la envuelven lgicamente y de forma cifrada como una caja fuerte, y la empujan por el internet hostil usando protocolos como IPSec hasta ser recibida segura formalmente dentro del fuerte del enrutador de la empresa.



---



## CASO 180



Contexto:

El servidor central relacional MySQL de ventas colapsa los fines de semana. En lugar de aumentar su RAM ciegamente, los arquitectos separan fsicamente la base: designan una base paralela de hardware para realizar las r¡pidas inserciones de los clientes simult¡neas (ESCRITURA / Writes) y crean otra base espejo separada dedicada y afinada para entregar los pesados reportes estadsticos del gerente (LECTURA / Reads).



Pregunta:

¿Qu Arquitectura y Estrategia Central de segregacin de desarrollo se aplic?



Opciones:

A) Fragmentacin Horizontal (Sharding)

B) Arquitectura Distribuida de Microservicios Base

C) Segregacin de Clster Paralelo Multi-Master

D) Arquitectura y Patrn CQRS (Command Query Responsibility Segregation)



Respuesta correcta: D



Explicacin:

CQRS (Segregacin de Responsabilidad de Comandos y Consultas) separa el cerebro lgicamente de un motor de bases de datos central. Es ineficiente pedirle de manera simult¡nea al motor que guarde millones de boletos de Black Friday (Comandos / Writes veloces) y a la vez pedirle en paralelo que te devuelva el reporte financiero masivo de fin de ao (Queries / Reads pesados). Se crean y mantienen dos bases sincronizadas separadas, optimizadas arquitectnicamente para su respectivo objetivo.

\newpage
# Bloque 10
## CASO 181



Contexto:

Un hospital debe disear su arquitectura de red considerando que doctores utilizan tabletas mviles conectadas al WiFi de forma general. El equipo de seguridad tecnolgica descarta las tradicionales VLAN y dicta una regla estricta: "Aunque el dispositivo sea corporativo y est conectado a nuestro WiFi interno de gerencia, no asumiremos jam¡s que es seguro ni de confianza por omisin. Cada intento de acceso a los sistemas deber¡ revalidarse con factor doble y escaneo de integridad en el software, salto por salto".



Pregunta:

¿Qu modelo conceptual riguroso y actual de arquitectura en Ciberseguridad ha ordenado y priorizado el equipo en todo el espectro fsico?



Opciones:

A) El Protocolo Perimetral Firewall Cl¡sico (VPN Stateful)

B) El Filtro IPS de Deteccin en Base Fija

C) Arquitectura de Red de Confianza Cero (Zero Trust Network Access - ZTNA)

D) Implementacin de Zona Desmilitarizada Din¡mica (DMZ Completa)



Respuesta correcta: C



Explicacin:

Zero Trust asume una filosofa absoluta: "Nunca confes, siempre verifica". El diseo de red cl¡sico perimetral estipulaba que una vez dentro del muro fsico del corporativo (conectado al switch interno), eras "de confianza". Zero Trust destruye esto; exige verificacin minuciosa del dispositivo, ubicacin y credenciales de usuario en cada salto hacia cada servidor individual, impidiendo movimientos de intrusin laterales si la tableta sufre un hackeo remoto.



---



## CASO 182



Contexto:

Un ingeniero compite analizando algoritmos de bsqueda exhaustiva. Mientras que la Notacin "Big O" (O grande) le indica a la directiva qu tan psimo ser¡ el rendimiento algortmico frente a un volumen inmenso en el "peor caso posible" matem¡tico, a l tambin le solicitan calcular el comportamiento opuesto para entender lo que suceder¡ en el "mejor caso ideal de tiempo" para poder catalogarlo tcnicamente.



Pregunta:

¿Qu notacin y cientfica de an¡lisis de algoritmos dictamina el "Lmite Inferior o Mejor Caso Posible" de eficiencia matem¡tica?



Opciones:

A) La Notacin Omega () 

B) La Notacin Delta ( ) 

C) La Notacin Theta (Ü) estricta

D) La Notacin Gamma ( ) abstracta



Respuesta correcta: A



Explicacin:

En ciencias de la computacin y an¡lisis asinttico general, la *Notacin O Grande (Big O)* describe el lmite superior o el peor de los desastres en el procesamiento (Si buscas a una persona en una gua telefnica, el peor caso es O(n) si es la ltima). La *Notacin Omega ()* dicta el lmite inferior garantizando matem¡ticamente el tiempo en el "Mejor de los Casos Ideales" (Si es la primera persona de la gua, Omega es (1)). La *Notacin Theta (Ü)* representa el comportamiento central, promedio y ajustado.



---



## CASO 183



Contexto:

Una empresa analiza perfiles y detecta redes inmensas de "Amigos de los amigos que comparten intereses". Procesar esto en la base de datos MySQL tradicional usando `JOIN` paralelos entre cuatro tablas resulta insosteniblemente lento, generando tablas recursivas gigantes. Deciden migrar a una arquitectura donde las entidades (Personas) y las relaciones con direccin (A es amigo de B) son tratadas como elementos primarios indexables de la base de datos de manera autnoma.



Pregunta:

¿A qu modelo especfico de base de la nube moderna no relacional se orienta esta solucin abstracta?



Opciones:

A) Base de Datos NoSQL tipo Documental en JSON Cl¡sica

B) Base de Datos Orientada a Grafos (Graph Database como Neo4j)

C) Base de Datos Columnar Din¡mica 

D) Modelo Vectorial de Inteligencia Fija



Respuesta correcta: B



Explicacin:

Las Bases de Datos de Grafos (como Neo4j) est¡n matem¡ticamente estructuradas usando vrtices (Nodos de informacin) y aristas (Relaciones vinculantes) para navegar instant¡neamente por redes inmensas de datos sociales, as como operar en deteccin veloz de fraudes financieros abstractos. Hacen en milisegundos de rutas lo que un motor relacional tardara horas cruzando tablas mediante uniones (`JOINs`) mltiples.



---



## CASO 184



Contexto:

Los ingenieros del equipo QA de un corporativo ejecutan 1,000 pruebas unitarias en cdigo reportando "100% de Cobertura de Cdigo". Para estar seguros de que los programadores no engaaron la prueba (escribiendo asserts que siempre dan xito sin revisar de verdad la matem¡tica interna del bloque), instalan una herramienta especializada. Esta altera autom¡ticamente y rompe adrede condicionales del cdigo fuente (ej. cambiando temporalmente un signo `<` por un `>`), vigilando si la suite de pruebas falla y detecta la anomala introducida intencionalmente.



Pregunta:

¿Qu mtodo infalible de pruebas avanzadas est¡n empleando para auditar sus casos de pruebas ?



Opciones:

A) Prueba de Caja Gris

B) Pruebas Extremas Cclicas Modulares de Integracin

C) Fuzzing Testing Din¡mico

D) Pruebas de Mutacin Estricta y Funcional (Mutation Testing)



Respuesta correcta: D



Explicacin:

El Testing de Mutacin (Mutation Testing) es el auditor absoluto de las Pruebas Unitarias. Si la herramienta general inyecta un "Mutante" y corrompe un operador sumatorio del software adrede, el sistema espera confiado que los Unit Tests caigan en fallo y marquen rojo detectando la anomala tcnica. Si la prueba falsa Unit Test pasa en Verde a pesar del "Dao mutante", significa formalmente que el desarrollador escribi cdigo de pruebas intil y fr¡gil que no audita ni blinda ninguna del cdigo principal real.



---



## CASO 185



Contexto:

Un juego de estrategia en Java cuenta con el objeto central "Soldado". Este objeto debe calcular matem¡ticamente el dao de sus diferentes ataques segn lo que porte. En lugar de codificar todos los c¡lculos con un enorme `switch/case` inmodificable dentro de la clase Soldado general para resolver "Si dispara Escopeta", "Si usa Espada", el desarrollador extrae esos algoritmos de dao de armas en clases matem¡ticas separadas y los inyecta din¡micamente como diferentes comportamientos abstractos (Instancias intercambiables de dao).



Pregunta:

¿Qu patrn din¡mico de diseo de la POO implement para encapsular y delegar matem¡ticamente a estas familias de algoritmos y c¡lculos de armas de forma modular?



Opciones:

A) Patrn Observador 

B) Patrn Adaptador de Componentes Abstractos

C) Patrn Constructor Cclico 

D) Patrn Estrategia Din¡mico (Strategy Pattern o Patrn Strategy)



Respuesta correcta: D



Explicacin:

El Patrn Estrategia (Strategy Pattern) de comportamiento arquitectnico permite declarar y agrupar familias de algoritmos independientes matem¡ticos encapsul¡ndolos separadamente de la clase principal original, haciendo f¡cil su intercambio al vuelo en plena ejecucin del programa. En vez de rellenar asimtricamente a la clase "Soldado" con condicionales fijos puramente atados y complejos, el Soldado delega su funcin delegando y usando un objeto independiente (La Estrategia de ataque), lo que acata impecablemente el principio abierto/cerrado de SOLID.



---



## CASO 186



Contexto:

En un sistema central multi-hilos, ocurre un congelamiento del sistema. Dos transacciones chocan eternamente. Tras analizar los registros de software concurrente, descubres la materializacin forzosa de las cuatro reglas que deben cumplirse forzosamente en simult¡neo en un equipo para que el estancamiento de hilos concurrente y cruce catastrfico suceda inquebrantablemente (Condicin de Exclusin mutua, Espera y Retencin matem¡tica, Espera circular y No apropiacin o interrupcin del recurso).



Pregunta:

¿Cmo se denominan estas cuatro exigencias acadmicas de ciencias y sistemas operativos que marcan la ocurrencia del Bloqueo Mutuo general (Deadlock)?



Opciones:

A) Condiciones Mutantes Fijas de Turing Computacionales

B) Ecuaciones Din¡micas de Interbloqueo de Von Neumann

C) Condiciones Cl¡sicas de Deadlock y Exclusin de Coffman (Coffman Conditions)

D) Reglas Arquitectnicas de Concurrencia de Dijkstra y Moore 



Respuesta correcta: C



Explicacin:

Las Condiciones Cl¡sicas Formidables de Coffman establecen en ingeniera que, para que un bloqueo mutuo central (Deadlock de Hilos Concurrentes) se materialice tr¡gicamente en procesador y RAM, deben presentarse de manera estricta y conjunta las 4 en la m¡quina: 1) Exclusin Mutua estricta, 2) Retencin de recurso base y Espera, 3) Ausencia total de Expulsin o interrupcin del proceso por el Kernel, y 4) Circuito cerrado y cclico llamado Espera Circular matem¡tica.



---



## CASO 187



Contexto:

Cuando un celular y tableta se conecta a la nueva red de WiFi de la cafetera, enva un grito y ruego de red abierta (Broadcast) para que le arrienden una identidad. El servicio de red servidor le devuelve un contrato de renta, le ofrece formalmente una direccin IPv4 local y, finalmente, termina asign¡ndole de manera oficial y central el enrutamiento de puerta de enlace.



Pregunta:

Bajo la nomenclatura y arquitectura terica de redes cl¡sicas, ¿qu acrnimo mundial inamovible de cuatro letras modela y resume el ciclo de viaje de asignacin de un servidor DHCP para IPs din¡micas locales?



Opciones:

A) Protocolo de Identidad de DHCP Handshake

B) Secuencia INIT y ACK Central

C) Algoritmo Arquitectnico DORA (Discover, Offer, Request, Acknowledge)

D) El Acuerdo TCP de Triple Enlace 3-Way Handshake Din¡mico



Respuesta correcta: C



Explicacin:

El ciclo universal de la asignacin por servidores DHCP se modela mundialmente a travs del proceso paralelo y de la palabra acrnimo "DORA". Empieza formalmente con **Discover** (Buscando un servidor a gritos DHCP en capa 2 o broadcast), **Offer** (El servidor asoma en red local y ofrece formalmente un contrato), **Request** (El usuario cliente acepta y enva la solicitud pidiendo fijar est¡ticamente esa direccin ofrecida), y termina lgicamente con **Acknowledge** (Confirmacin absoluta y asienta registro del ruteador entregando los DNS y m¡scara a la estacin).



---



## CASO 188



Contexto:

En el backend bancario, el DBA debe decidir si para ejecutar c¡lculos matem¡ticos de usuarios va a escribir y compilar un "Procedimiento Almacenado de Base de Datos (Stored Procedure)" o si debe construir una pequea "Funcin Escalar (User Defined Function)". Necesita devolver un solo nmero que pueda invocar repetidamente incrustado dentro de instrucciones r¡pidas y din¡micas de `SELECT` masivas.



Pregunta:

¿Qu diferencia y restriccin arquitectnica tcnica puramente de SQL inclina obligatoriamente la decisin para usar una Funcin Escalar en vez del Procedimiento Almacenado general en la consulta matem¡tica?



Opciones:

A) El Procedimiento almacenado central es el nico que genera un plan de ejecucin.

B) La Funcin Escalar puede ejecutarse e integrarse ciegamente dentro del flujo normal de una peticin `SELECT / WHERE` devolviendo resultados en lnea; mientras que un Procedimiento Almacenado rechaza lgicamente integrarse de retorno y exige ejecucin exclusiva e independiente.

C) Los Procedimientos Almacenados no permiten inyectar e ingerir par¡metros din¡micos.

D) La Funcin Escalar central inserta transacciones destructivas en cascada alterando las restricciones.



Respuesta correcta: B



Explicacin:

Las Funciones Escalares SQL est¡n destinadas a funcionar para devolver e inyectar un valor (Ej. Calcular Promedio y devolver un tipo entero). Al estar prohibidas formalmente de daar o efectuar "UPDATE/INSERT/DELETE" (y al no tener derecho de invocar un Commit matem¡tico), el motor de base de datos las permite ejecutar y transitar amigablemente "dentro" y a la par de las sentencias SELECT comunes. Un Procedimiento Almacenado en SQL est¡ diseado para alterar el estado matem¡tico y tablas del disco, no para devolver lgicamente valores embebidos.



---



## CASO 189



Contexto:

Al programar de cero la cl¡sica secuencia recursiva de c¡lculo de "Fibonacci", un desarrollador emplea recursividad (La funcin matem¡tica se llama a s misma constantemente en el cdigo base). Al pasarle un nmero tan pequeo como el 50, la m¡quina se colapsa brutalmente, debido a que el ¡rbol y los hilos duplican exponencialmente llamadas que procesan ramas operativas que ya haban sido calculadas cien pasos antes temporalmente.



Pregunta:

Bajo la materia avanzada de diseo de optimizacin y ciencias de la computacin, ¿qu tcnica debe aplicar y aadir a la funcin para almacenar matem¡ticamente las respuestas viejas en un diccionario de cach local en el programa y as evadir el tener que repetir los c¡lculos ?



Opciones:

A) Abstraccin Algortmica Paralela 

B) Inversin Matem¡tica y Segmentacin Paralela Estricta 

C) La Tcnica Base de Memoizacin Matem¡tica (Memoization Central y Programacin Din¡mica Aplicada) -> Simplificado: (Memoization / Memoizacin Computacional)

D) Patrn de Diseo Flyweight Abstracto y 



Respuesta correcta: C



Explicacin:

La "Memoizacin" o Memoization es el pilar sagrado central que convierte y dota a los algoritmos destructivos y recursivos en reyes de la optimizacin y Programacin Din¡mica computacional. Implica atrapar o interceptar las rutinas. Si la operacin matem¡tica del procesador te exige formalmente y te fuerza a re-calcular "Fibonacci de 10" otra vez como rama, tu algoritmo inteligente y puente de memoria esquiva reescribir e inyectar el trabajo, leyendo y retornando de su cach en Memoria RAM instant¡neamente el antiguo resultado ya calculado.



---



## CASO 190



Contexto:

El equipo de calidad y pruebas (QA Testing) despliega el software actualizado a la nueva versin de base general de la semana dos. El desarrollador corrigi de manera impecable el error reportado en el mdulo frontal y din¡mico del "Carrito de Compras". Sin embargo, al pasarlo a revisin final, el equipo detecta que aunque arregl perfectamente el carrito de los productos, inexplicablemente el cdigo paralelo del "Botn de Recuperacin de Contraseas" que nunca debi verse involucrado en el cdigo, se rompi e inoperantemente en silencio de manera central y.



Pregunta:

¿Qu tipo de ciclo, estrategia y batera puramente estructurada de pruebas autom¡ticas (Testing) salva a la empresa de esta fatalidad forzando revisiones globales tras cualquier modificacin de la base ?



Opciones:

A) Pruebas Matem¡ticas Unitarias Modulares Locales 

B) Pruebas Din¡micas de Carga y Tensin 

C) Pruebas de Escalabilidad Modulares Arquitectnicas

D) Pruebas Autmatas Completas de Regresin y Revisin Continua (Regression Testing)



Respuesta correcta: D



Explicacin:

Las Pruebas de Regresin matem¡ticas autom¡ticas aseguran de manera estricta la supervivencia y calidad paralela. Se efectan y exigen ejecutarse centralmente en el ciclo cada vez que t reparas un bug estricto o incrustas una caracterstica en el cdigo. Es tu obligacin correr de nuevo sobre el sistema general toda la matriz y cdigo completo paralelo antiguo de pruebas, para as corroborar rigurosamente que tu reparacin local no haya roto ni "Regresado hacia atr¡s" los comportamientos funcionales del programa pasado que en ayer estaban perfectos.



---



## CASO 191



Contexto:

Un programador en lenguaje C# o Java de sintaxis estricta utiliza variables para guardar inmensas cadenas de texto (String cl¡sico). Aconseja que utilizar `String texto = "Data"` y luego estar sum¡ndole temporalmente en bucles concatenaciones de cdigo bruto (`texto += " Update"`) dentro de mil ciclos continuos destruir¡ el rendimiento y gastar¡ forzosamente la Memoria RAM. Esto ocurre porque cada que el usuario asume formalmente estar "modificando" lgicamente la variable y alter¡ndola, en la realidad tcnica de bajo nivel el objeto en el servidor jam¡s es alterado pasivamente en su casilla interna y.



Pregunta:

¿Qu concepto estructural y arquitectnico fundamental abstracto dictamina y obliga a que este comportamiento devorador de memoria RAM se detone obligando a fabricar e instanciar nuevos objetos intiles?



Opciones:

A) La Mutacin de Intercambio Central 

B) Inmutabilidad Estricta Absoluta y de la Clase String (Inmutabilidad de Objetos Computacionales)

C) Paginacin Interna Cclica del Motor de Garbage Collector 

D) Sobreescritura Din¡mica Abstracta



Respuesta correcta: B



Explicacin:

Los "Objetos Inmutables" (Como la clase matem¡tica y de texto String en Java cl¡sico estricto), garantizan blindaje estructural en procesamiento multi-hilo y. Como su estado es fijo, inquebrantable y permanentemente inalterable pasivamente, t formalmente en la memoria no puedes sobre-escribirle una nueva letra a la vieja cadena. En la realidad de la memoria y paralela central, el motor y m¡quina virtual destruye lgicamente y olvida en memoria el original, para fabricar internamente instanciado de cero y asimtricamente un Objeto nuevo completo cada vez que haces un parche.



---



## CASO 192



Contexto:

El Sistema Operativo Linux entra en alerta de saturacin. Tras enviar un comando de consola, el administrador mata forzosamente al "Proceso Padre" central. Sin embargo, la computadora sigue asfixiada est¡ticamente revelando que los diminutos "Sub-Procesos " (Procesos hijos) que fueron dados a luz por el Proceso Padre asesinado, continan corriendo a la deriva en la RAM y ejecutando recursos, sin nadie estructuralmente por encima de ellos pasivamente que los controle, asimile, recicle y entierre asiladamente asimtricamente.



Pregunta:

Bajo la materia estricta arquitectnica de Gestin de Hilos y Sistema Operativo, ¿cmo se les cataloga a estos pequeos sub-programas que quedan libres y sueltos al ejecutar asiladamente a su progenitor ?



Opciones:

A) Procesos y Bloques Zombis 

B) Procesos Suspendidos y Central 

C) Demonios Kernel 

D) Procesos Hurfanos y Paralelos (Orphan Processes Computacionales Centrales) -> Simplificado: (Procesos Hurfanos)



Respuesta correcta: D



Explicacin:

Existe una diferencia vital estricta y en el corazn del Kernel de OS: Un "Proceso Zombi " es un sub-proceso matem¡tico *muerto y finalizado asimtricamente*, en donde el padre y central estricto ha tardado, negado e ignorado est¡ticamente levantar y borrar en cdigo el "Cad¡ver numrico (PID)". En cambio, un "Proceso Hurfano", es donde el Padre fue fulminado en pleno trabajo, pero los procesos Hijos siguen *absolutamente vivos*, ejecut¡ndose transaccionalmente, corriendo e incontrolados como dueos del CPU y.



---



## CASO 193



Contexto:

El administrador de redes corporativo estricto disea y segmenta esquemas de direcciones IP para la red VLAN de gerencia central. Sabe que las m¡scaras y rangos de clase le indican la cuadrcula de computadoras y terminales totales posibles. Un estudiante emplea y paralelamente la vieja frmula de `2^n - 2` fijos para hallar la cifra til paralela y que s se puede encadenar a las PC.



Pregunta:

Considerando la teora inamovible de direccionamiento cl¡sico IP de enrutadores, ¿qu representan y exigen puramente sustraer y descontar fsicamente los dos espacios ("- 2") de la frmula y estricta matem¡tica paralela ?



Opciones:

A) Una para la Direccin MAC y otra para la Red Central 

B) Representan el Gateway de Central y el Firewall 

C) Quitan e imposibilitan utilizar la Primera IP y estricta matem¡tica reservada y nombrada a la Subred (IP de Red), y anula la altima IP de Difusin y grito masivo paralelo y central (IP Broadcast Central) -> Simplificado: (IP de Red e IP de Broadcast)

D) Representan reservas abstractas de NAT paralelo Central 



Respuesta correcta: C



Explicacin:

En IPv4 estructurado (Ej. Subred /24), jam¡s podr¡s utilizar el nmero matem¡tico completo de la potencia de hosts. La ecuacin inamovible estricta exige y te fuerza est¡ticamente y paralelo a descontar puramente dos nodos centrales centrales inquebrantables : La IP primera y puramente m¡s baja (Conocida como la IP de Identidad de Red y de la Subred) y restas paralela y y la ltima IP y m¡s alta matem¡tica (La clebre IP de Difusin Broadcast paralela central).



---



## CASO 194



Contexto:

El motor SQL principal alojado lgicamente en Mxico es modificado y rediseado por un arquitecto. Debido a la extrema lejana, y paralela entre su servidor y un nodo Esclavo y replicador secundario situado matem¡ticamente del otro lado de las redes globales asimtricamente en la ciudad espaola de Madrid, el experto decide no obligar al equipo de la ciudad matem¡tica de Amrica a pausarse asiladamente y esperando confirmacin remota central. En su lugar, Mxico ejecuta lgicamente el trabajo, lo consolida y devuelve el poder r¡pido y al usuario, y de inmediato y tras bambalinas, avienta la instruccin por internet paralelo central a Espaa y.



Pregunta:

En diseos de Clusters y Redes puramente paralelos centrales, ¿qu estrategia de control de rplicas en bases maestras y de duplicacin ha forzado el sistema y paralelo y ?



Opciones:

A) Replicacin Maestro-Esclavo y Multi-Mundo Paralela Central

B) Duplicacin Matem¡tica Cruzada Central 

C) Replicacin Activa Central 

D) Replicacin y de Bases de Datos Matem¡tica Total Central Paralela (Replicacin Central) -> Simplificado: (Replicacin Central)



Respuesta correcta: D



Explicacin:

En nodos globales paralelos centrales y de bases, intentar inyectar de replicacin estricta "Sncrona Central " en una distancia oce¡nica y sera el fin del corporativo. El usuario en Amrica paralelo y quedara congelado paralela hasta que el esclavo cruzando el ocano atienda. Implementar puramente y matem¡tica de Replicacin estricta le inyecta fluidez al sistema paralela y central.



---



## CASO 195



Contexto:

El robot rastreador y araa puramente paralelo de bsquedas de web y de algoritmos de lectura web necesita leer todos los dominios. El ingeniero disea el programa arquitectnico puramente matem¡tico empleando y creando una estructura y pilar de "Cola" (Queue estricta). Esta estructura matem¡tica define que la araa explore asiladamente y transaccionalmente todo lo adyacente a nivel central antes de adentrarse.



Pregunta:

Considerando la teora puramente de algoritmos y grafos, ¿qu tcnica paralelo central de red se invoc ?



Opciones:

A) Bsqueda Iterativa Central 

B) Optimizacin Matem¡tica 

C) Algoritmo de Flujo Central

D) Bsqueda Puramente en Red y de Anchura (Breadth-First Search / BFS Central Paralelo) -> Simplificado: (Bsqueda en Anchura / BFS)



Respuesta correcta: D



Explicacin:

En exploracin algortmica y gr¡fica, el diseo y pilar matem¡tico define tu rumbo. Al forzar al cdigo a portar una "Cola ", te adhieres y a un comportamiento de Exploracin transversal en Anchura o Breadth-First Search y paralela central. Evaluar¡ y todas y cada una de las hojas paralelas en un anillo lgicamente fijo, evitando saltar a niveles inferiores y.



---



## CASO 196



Contexto:

En la programacin y control modular central, un ingeniero utiliza el popular patrn "Singleton". Este diseo y estructura garantiza crear y aisladamente un solo objeto global nico para todo el programa. Sin embargo, en un sistema concurrente de hilos, descubre que la clase se est¡ inicializando, sobrescribiendo y colisionando asiladamente, porque varios hilos logran entrar paralelamente evaluando el "if (instancia == nula)" en el mismo milisegundo. El programador no usa el cl¡sico "synchronized" general bloqueando todo, sino que verifica y lgicamente primero, luego asegura y bloquea y vuelve a verificar antes de crear la entidad.



Pregunta:

Bajo este escenario de programacin multihilo y arquitectura, ¿qu concepto y algoritmo avanzado de diseo para bloqueo se aplica est¡ticamente en Java/C#?



Opciones:

A) Monitoreo Paralelo Simple Central

B) Exclusin de Bucle Paralela 

C) Inversin de Dependencia Central

D) El Algoritmo y Patrn Cclico de Bloqueo de Doble Comprobacin (Double-Checked Locking Paralelo) -> Simplificado: (Double-Checked Locking)



Respuesta correcta: D



Explicacin:

El Doble Chequeo (Double-Checked Locking Paralelo) es la salvacin en Concurrencia de hilos. Consiste asiladamente en un primer "if" r¡pido y barato para ahorrar CPU. Si detecta la instancia nula, entonces s dispara y usa pesadamente el "Synchronized". Una vez logrando cerrar el hilo y blindar, obliga a repetir un segundo "If" para ver si durante lo que le tard cerrar la puerta, algn hilo ya no fabric paralela el objeto antes de tiempo.



---



## CASO 197



Contexto:

En la programacin y y paralelo de POO en Java central, un desarrollador declara el mtodo estricto `obtenerSuma` en la clase base "Animal ". Posteriormente en otra clase, define asimtricamente el mtodo `obtenerSuma` con el nombre idntico, pero el programador altera y transaccionalmente y expande los argumentos de entrada. En lugar de mandar una variable, ahora declara y le pasa como base abstracta tres argumentos paralelos centrales y para que convivan en el mismo bloque.



Pregunta:

Considerando la teora puramente paralela de objetos, ¿qu herramienta o manipulacin de mtodos arquitectnicos y pilar se ejerci paralela ?



Opciones:

A) Mutacin Central 

B) Inyeccin Paralelo Central

C) Herencia y Ocultamiento de Pila Central

D) Tcnica Matem¡tica y Pilar de Sobrecarga de Mtodos (Overloading Central Paralela) -> Simplificado: (Sobrecarga de Mtodos o Overloading)



Respuesta correcta: D



Explicacin:

En lenguajes paralelos centrales, la Sobrecarga (Overloading) te provee el lujo de clonar y bautizar puramente al mismo nombre de cdigo de un mtodo matem¡tico varias veces en tu clase central. A cambio, t te comprometes y firmas que al menos cambias transaccionalmente paralelo el nmero de argumentos o el tipo paralelo de par¡metros que va a masticar, dejando que el procesador elija din¡micamente. No lo confundas y con Sobreescritura (Overriding central paralela), donde cambias est¡ticamente el contenido del cuerpo heredado.



---



## CASO 198



Contexto:

El ncleo del Sistema Operativo debe programar que dos procesos concurrentes simult¡neos, A y B, no vayan a estrellarse o daar y leer a medias lgicamente la variable y objeto "Cuenta Bancaria". Para evitarlo, crea un mecanismo en el CPU. Una primitiva funciona como si t cerraras la cerradura de un bao al entrar. Cuando un proceso entra a la Zona Crtica, "cierra y apaga" el sem¡foro para que otros hilos no interrumpan su edicin, y luego "levanta y prende " la bandera para que el hilo vecino pueda seguir.



Pregunta:

Bajo ciencias de concurrencia y de exclusin, ¿qu nombre se le otorga a esta barrera central paralela ?



Opciones:

A) Monitor de Tensin Central

B) Seal de Segmentacin Central Paralelo 

C) Paginacin Atmica Central Paralelo

D) Componente de Bloqueo Binario Sem¡foro Mutex (Mutex / Mutual Exclusion Central Paralelo) -> Simplificado: (Mutex o Sem¡foro de Exclusin Mutua)



Respuesta correcta: D



Explicacin:

Un Mutex central paralelo (De la sntesis y acrnimo Mutual Exclusion) ejerce la proteccin y exclusin matem¡tica y absoluta de la zona crtica en CPU. Representa la y bandera puramente binaria (Cero y Uno). Si un hilo formalgico entra a escribir asiladamente y la tabla SQL, bloquea analticamente la puerta ; ni el presidente de la red puede alterar la RAM hasta que el dueo devuelva y la bandera paralela de la Exclusin Mutua.



---



## CASO 199



Contexto:

El servidor de internet y la p¡gina web central del banco est¡n listos. El administrador de cortafuegos y el equipo de IT instalan su viejo Firewall cl¡sico de Red en el puerto 443. Un experto en auditora y ciberseguridad paralela le comenta est¡ticamente : "Como la web legtima requiere y fuerza el puerto TCP 443 paralela abierto, cualquier ataque o Hacker que me mande un virus y fragmento de Inyeccin SQL disfrazada en el campo de texto, va a poder cruzar f¡cilmente y el muro porque t dejaste y le aprobaste la entrada libre en tu Firewall cl¡sico para el Puerto ".



Pregunta:

Bajo la materia estricta paralela de Ciberseguridad, ¿qu equipo de proteccin de Capa 7 debes inyectar para escanear y desarmar ataques web en pleno texto ?



Opciones:

A) Un Filtro de Segmentacin Central 

B) IPSec Din¡mico Paralela

C) Balanceador Central 

D) Sistema Avanzado y Cortafuegos de Aplicaciones Web (Web Application Firewall o WAF Central Paralelo) -> Simplificado: (Web Application Firewall / WAF)



Respuesta correcta: D



Explicacin:

Un Firewall tradicional opera en puertos (Abre la puerta 443 y se olvida). El WAF (Web Application Firewall central) no solo abre el puerto, sino que revisa paralela el "Cuerpo y Payload " HTTP. Si tu atacante escribe asiladamente "OR 1=1--" en tu celda de contrasea paralela, el WAF central detecta y extirpa analticamente la inyeccin antes de que el motor de SQL sufra ciegamente el caos.



---



## CASO 200



Contexto:

El banco paralela reemplaza a la base relacional. El arquitecto dicta y asienta que t jam¡s debes sobrescribir ni destruir y alterar el saldo de "Cuenta ". A partir de hoy, en vez de alterar "100 menos 20 ", guardar¡s un diario cronolgico de eventos inmutables ("Evento Deposit 100", "Evento Retir 20 ").



Pregunta:

Bajo la materia y arquitectura, ¿qu patrn y estructura de inmutabilidad y registro cronolgico se est¡ implementando ?



Opciones:

A) Base Relacional Din¡mica Paralelo

B) Paginacin Central 

C) Segmentacin y Balanceo Mltiple Central

D) Aprovisionamiento de Eventos Inmutables y (Patrn Event Sourcing Central Paralelo) -> Simplificado: (Event Sourcing)



Respuesta correcta: D



Explicacin:

El Aprovisionamiento de Eventos (Event Sourcing central paralelo) revoluciona la forma de usar bases de datos. Te prohbe destructivamente sobreescribir el saldo de la base. Guardas eventos (Suma 5, Resta 3). Si maana quieres el saldo, sumas los miles de registros pasados, forjando y adquiriendo una auditora de base de datos absoluta impenetrable.

\newpage
# Estrategia para aprobar el EGEL
- Piensa como ingeniero
- No memorices, analiza
- Practica bajo presion

