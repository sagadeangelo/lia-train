# GUIA DE PREPARACION EGEL: ADMINISTRACION
## BLOQUE 2: CASOS PRACTICOS (21-40) - NIVEL AVANZADO

---

## CASO 21: Finanzas - Evaluacion de Proyectos y Riesgo Pais

**Contexto:**
Una multinacional evalua abrir una planta en un mercado emergente con los siguientes datos:
* Inversion inicial: $5,000,000 USD
* Flujos anuales proyectados: $1,200,000 USD (6 años)
* TMAR base: 10%
* Riesgo Pais: 4% (400 puntos base)
* Inflacion anual: 5%
El CFO exige que la tasa de descuento refleje el riesgo pais y la inflacion para proteger el poder adquisitivo del capital invertido.

**Planteamiento del problema:**
Ajustar la tasa de descuento y determinar la viabilidad del proyecto mediante el Valor Presente Neto (VPN).

**Pregunta:**
Cual es la tasa de descuento ajustada (Fisher) y la decision financiera correcta?

**Opciones:**
A) Tasa de 10%; el proyecto es viable porque el VPN es positivo con flujos nominales.
B) Tasa de 14%; el proyecto es viable ya que la suma de flujos ($7.2M) supera la inversion.
C) Tasa de 19.7%; el proyecto se rechaza porque el VPN es negativo bajo estas condiciones.
D) Tasa de 15%; el proyecto es aceptable si se logra reducir la inversion inicial un 10%.

**Respuesta correcta:**
C

**Justificacion (clave):**
Aplicando la formula de Fisher [(1+0.10)*(1+0.04)*(1+0.05)-1], la tasa requerida es 19.7%. Al descontar los flujos de $1.2M a esta tasa, el valor presente es de ~$3.99M, cifra inferior a los $5M invertidos. El VPN negativo indica destruccion de valor. Ignorar el riesgo pais o la inflacion (opciones A y B) llevaria a una decision erronea de inversion.

---

## CASO 22: Estrategia - Integracion Vertical vs. Outsourcing

**Contexto:**
Una empresa de e-commerce destina el 25% de sus ingresos a logistica tercerizada (3PL). Los indicadores muestran:
* Retrasos en entregas: Subieron del 2% al 8%
* Impacto: Caida en la retencion de clientes (CLV)
* Costo flota propia: $2,000,000 USD (Inversion) + $150,000/mes (Fijo)
La integracion reduciria los costos variables logisticos en un 40% y los retrasos al 1%.

**Planteamiento del problema:**
Decidir entre el control operativo total (Integracion) o mantener la flexibilidad financiera (Outsourcing).

**Pregunta:**
Bajo que condicion financiera es superior la integracion vertical de la flota?

**Opciones:**
A) Siempre que el nivel de retrasos se mantenga controlado (menor al 5%).
B) Cuando el ahorro en costos variables absorba el incremento en costos fijos y el costo de capital.
C) Si la competencia directa adopta el mismo modelo para mantener la paridad.
D) Unicamente si se aumentan los precios de venta para financiar la nueva estructura fija.

**Respuesta correcta:**
B

**Justificacion (clave):**
La integracion vertical incrementa el apalancamiento operativo. Solo es rentable si el volumen de ventas genera un ahorro variable total superior a los nuevos costos fijos ($150k mensuales) y ofrece un retorno sobre los $2M superior a la TMAR. Ademas, debe considerarse el beneficio intangible pero cuantificable de recuperar la lealtad del cliente (CLV).

---

## CASO 23: Operaciones - Cantidad Economica de Pedido (EOQ)

**Contexto:**
Una ensambladora presenta los siguientes datos de suministro:
* Demanda anual: 24,000 unidades
* Costo de pedido (S): $200 USD
* Costo de mantenimiento (H): $5 USD/unidad al año
* Lead Time: 10 dias
* Año laboral: 360 dias
Actualmente se piden 1,000 unidades cada vez que el inventario se agota.

**Planteamiento del problema:**
Optimizar la gestion de inventarios para minimizar el costo total y evitar rupturas de stock.

**Pregunta:**
Cual es la Cantidad Economica de Pedido (EOQ) y el Punto de Reorden (ROP)?

**Opciones:**
A) EOQ: 1,386 unidades; ROP: 667 unidades.
B) EOQ: 1,000 unidades; ROP: 1,000 unidades.
C) EOQ: 2,000 unidades; ROP: 500 unidades.
D) EOQ: 980 unidades; ROP: 200 unidades.

**Respuesta correcta:**
A

**Justificacion (clave):**
EOQ = raiz[(2 * 24,000 * 200) / 5] = 1,385.6 unidades. El ROP se calcula multiplicando la demanda diaria (24,000 / 360 = 66.6) por el Lead Time (10 dias) = 666.6 unidades. La gestion actual (pedir 1,000) genera costos de pedido excesivos frente al ahorro en mantenimiento, alejandose del optimo economico.

---

## CASO 24: Recursos Humanos - ROI en Desarrollo de Talento

**Contexto:**
Un banco detecta que su cierre de ventas es del 12% (promedio sector: 20%). 
* Costo capacitacion: $300,000 USD
* Beneficio estimado: Subida al 16% de cierre ($450,000 USD extra en ingresos netos)
Finanzas propone usar el presupuesto en Marketing Digital para generar mas leads.

**Planteamiento del problema:**
Determinar la eficiencia de la inversion en capital humano frente a estrategias de captacion de demanda.

**Pregunta:**
Cual es el ROI de la capacitacion y cual es la justificacion estrategica para priorizarla?

**Opciones:**
A) ROI: 50%; resuelve una falla en la conversion que el Marketing (leads) no soluciona.
B) ROI: 150%; la capacitacion es una inversion fija mientras el marketing es gasto variable.
C) ROI: 33%; el Marketing tiene un retorno mas rapido y medible que la conducta humana.
D) ROI: 12%; se elige Marketing por su menor costo operativo inicial.

**Respuesta correcta:**
A

**Justificacion (clave):**
ROI = ($450k - $300k) / $300k = 50%. Priorizar la capacitacion es correcto porque si el equipo no sabe cerrar ventas (12%), inyectar mas leads mediante Marketing solo aumentara el costo de adquisicion por cliente. Primero se optimiza el proceso de conversion (talento) para luego escalar la demanda.

---

## CASO 25: Marketing - Elasticidad Precio de la Demanda

**Contexto:**
Un SaaS de $100 USD/mes tiene 10,000 usuarios. Datos clave:
* Elasticidad precio: -1.5 (Elastica)
* Propuesta: Subir precio a $120 USD (+20%) para financiar I+D.

**Planteamiento del problema:**
Predecir el impacto financiero del cambio de precio en la base de usuarios y el ingreso total.

**Pregunta:**
Cual sera el resultado proyectado en usuarios e ingresos mensuales?

**Opciones:**
A) 8,500 usuarios; Ingreso: $1,020,000 USD (Crecimiento leve).
B) 7,000 usuarios; Ingreso: $840,000 USD (Perdida de facturacion).
C) 12,000 usuarios; Ingreso: $1,440,000 USD (Escenario optimista).
D) 9,000 usuarios; Ingreso: $1,080,000 USD (Impacto controlado).

**Respuesta correcta:**
B

**Justificacion (clave):**
Con una elasticidad de -1.5, un alza del 20% en precio provoca una caida del 30% en la demanda (1.5 * 20). Los usuarios bajan a 7,000. El nuevo ingreso (7,000 * $120 = $840k) es inferior al original ($1M). Cuando la demanda es elastica, subir precios reduce el ingreso total; se debe trabajar en diferenciacion antes de ajustar tarifas.

---

## CASO 26: Calidad - Capacidad de Proceso (Cpk)

**Contexto:**
Produccion de pernos: 10mm +/- 0.05mm (Especificacion).
* Desviacion estandar (s): 0.01mm
* Media actual: 10.01mm
* Requisito cliente: Cpk minimo de 1.33

**Planteamiento del problema:**
Evaluar la capacidad real del proceso para cumplir contratos de largo plazo.

**Pregunta:**
Cual es el Cpk actual y que ajuste garantiza un margen de seguridad superior?

**Opciones:**
A) Cpk 1.33; el proceso ya es optimo y no requiere intervencion.
B) Cpk 1.66; se puede aumentar la velocidad de la linea sin riesgo.
C) Cpk 1.33; se debe centrar la media en 10.00mm para subir el Cpk a 1.66.
D) Cpk 1.50; se debe reducir la tolerancia del cliente para mejorar el indice.

**Respuesta correcta:**
C

**Justificacion (clave):**
El Cpk actual es 1.33 [(10.05 - 10.01) / 0.03]. El proceso esta al limite porque la media esta desplazada hacia el limite superior. Al centrar la produccion exactamente en 10.00mm, el Cpk mejora a 1.66 [0.05 / 0.03], reduciendo drasticamente la probabilidad de producir piezas defectuosas ante variaciones naturales.

---

## CASO 27: Liderazgo - Crisis de Gobernanza Familiar

**Contexto:**
En una empresa familiar, el Director de Operaciones (familia) y el de Finanzas (externo) chocan:
* Operaciones: Urge nueva bodega para crecer un 15%.
* Finanzas: Niega inversion por riesgo de insolvencia y falta de liquidez.
La Junta Directiva se encuentra bloqueada por la tension personal entre ambos.

**Planteamiento del problema:**
Resolver el conflicto de vision estrategica asegurando la objetividad en la toma de decisiones.

**Pregunta:**
Cual es el estilo de liderazgo mas efectivo para destrabar la situacion?

**Opciones:**
A) Liderazgo Directivo: Apoyar a la familia para evitar fracturas emocionales internas.
B) Liderazgo Laissez-faire: Dejar que el mercado decida el destino de la empresa.
C) Liderazgo Colaborativo: Usar analisis de sensibilidad y buscar alternativas como el Leasing para mitigar el riesgo financiero.
D) Liderazgo Coercitivo: Exigir resultados inmediatos bajo amenaza de remocion.

**Respuesta correcta:**
C

**Justificacion (clave):**
La colaboracion integra ambas posturas: la necesidad de crecimiento y la prudencia financiera. Al proponer soluciones tecnicas (como el Leasing o Renta con opcion a compra), se satisface la necesidad de espacio (Operaciones) sin comprometer el flujo de caja inmediato (Finanzas), eliminando el conflicto subjetivo mediante datos y flexibilidad.

---

## CASO 28: Toma de Decisiones - Evaluacion de Riesgo (App Fintech)

**Contexto:**
Una Fintech decide su ruta de lanzamiento:
* Opcion A (Masivo): Inversion $1M; 60% exito (Gana $3M), 40% fracaso (Gana $0).
* Opcion B (Piloto): Inversion $200k; 80% exito (Permite expansion con $800k para ganar $3M totales).

**Planteamiento del problema:**
Maximizar el Valor Monetario Esperado (VME) minimizando el riesgo de perdida total.

**Pregunta:**
Cual es la opcion con mayor VME y menor exposicion al riesgo?

**Opciones:**
A) Opcion Masiva; tiene un retorno bruto mas alto desde el dia uno.
B) Opcion Piloto; ofrece un VME superior (~$1.7M) y limita la perdida inicial a $200k.
C) Opcion Masiva; el VME es de $2M netos, superando al piloto.
D) Opcion Piloto; el VME es bajo pero es la unica opcion segura.

**Respuesta correcta:**
B

**Justificacion (clave):**
El VME del lanzamiento masivo es de $800k netos ($3M * 0.6 - $1M). El piloto permite validar el mercado con solo $200k; si tiene éxito (80%), la expansion lleva a un beneficio neto superior con mucho menos riesgo de capital hundido en la fase inicial de incertidumbre.

---

## CASO 29: Indicadores - Eficiencia del Margen EBITDA

**Contexto:**
Datos actuales de una cadena hotelera:
* Ingresos: $5,000,000 USD
* Utilidad Neta: $1,000,000 USD
* D&A: $400k | Intereses: $200k | Impuestos: $300k
Propuesta: Descuento del 10% para subir ingresos a $5.5M, pero costos variables suben $300k.

**Planteamiento del problema:**
Evaluar si el incremento en ventas compensa el sacrificio en el margen operativo (EBITDA).

**Pregunta:**
Cual es el EBITDA actual y que ocurre con el margen si se aplica el descuento?

**Opciones:**
A) EBITDA: $1.9M (38%); el margen cae al 29% aprox. La estrategia destruye valor.
B) EBITDA: $1.0M (20%); el margen sube al 25%. La estrategia es rentable.
C) EBITDA: $1.5M (30%); el margen se mantiene igual. Es indiferente.
D) EBITDA: $1.9M (38%); el margen sube al 40%. La estrategia es excelente.

**Respuesta correcta:**
A

**Justificacion (clave):**
EBITDA actual = 1M + 0.3M + 0.2M + 0.4M = $1.9M (38%). Con el descuento del 10%, el ingreso marginal de $500k se anula por el descuento mismo aplicado a la base, y el aumento en costos variables de $300k reduce el EBITDA real a $1.6M. El margen cae al 29% sobre los nuevos ingresos de $5.5M.

---

## CASO 30: Cultura y RSE - Integridad en la Marca

**Contexto:**
Marca "Premium Consciente" descubre que su principal proveedor asiatico incurre en practicas de insalubridad. 
* Solucion: Proveedor europeo certificado (+25% costo).
* Riesgo: Filtracion de la noticia destruiria el valor de la marca.
* Dilema: Subir precios o sacrificar margen para mantener la etica.

**Planteamiento del problema:**
Alinear la cadena de suministro con la propuesta de valor de marca para asegurar la sostenibilidad a largo plazo.

**Pregunta:**
Cual es la decision mas coherente con un modelo de RSE estrategico?

**Opciones:**
A) Firmar un codigo de conducta con el proveedor actual para deslindar responsabilidad legal.
B) Transicion programada al proveedor certificado, absorbiendo parte del costo para proteger la reputacion.
C) Negar la relacion con el proveedor y buscar uno nuevo solo si la prensa lo reporta.
D) Descontinuar la linea de productos para evitar cualquier inversion adicional.

**Respuesta correcta:**
B

**Justificacion (clave):**
Para una marca cuyo valor reside en la "consciencia", el riesgo reputacional es una amenaza existencial. Cambiar al proveedor certificado no es un gasto, sino una inversion en el "equity" de marca. La transparencia y la accion proactiva fortalecen la lealtad del cliente premium, superando el impacto financiero del mayor costo de produccion.

---

## CASO 31: Finanzas - Apalancamiento Financiero Negativo

**Contexto:**
Constructora con alta deuda:
* Ratio Endeudamiento: 0.75
* Costo Deuda: 12% | ROA (Rendimiento Activos): Bajo al 9%
* Cobertura de Intereses: 1.1x

**Planteamiento del problema:**
Analizar el riesgo de insolvencia y la rentabilidad del accionista ante el entorno actual.

**Pregunta:**
Que diagnostico financiero es correcto y que accion es urgente?

**Opciones:**
A) Apalancamiento positivo; se debe contratar mas deuda para liquidez.
B) Apalancamiento negativo; se debe desinvertir en activos para reducir deuda.
C) Situacion estable; la cobertura de 1.1x es suficiente para el sector.
D) Solvencia alta; se deben pagar dividendos para dar confianza.

**Respuesta correcta:**
B

**Justificacion (clave):**
Existe apalancamiento negativo cuando el costo de la deuda (12%) es superior al rendimiento generado por los activos (9%). Esto erosiona el capital de los socios (ROE). Con una cobertura de apenas 1.1x, la empresa esta al borde del default ante cualquier variacion de ingresos. Urge reducir la deuda mediante la venta de activos no estrategicos.

---


## CASO 32: Operaciones - Teoria de Colas en Servicio

**Contexto:**
Ventanilla única de atencion:
* Tiempo atencion: 10 min/cliente (Capacidad: 6/hr)
* Llegada: 5 clientes/hr (Demanda)
Clientes se quejan de esperas de 30 min, aunque el empleado tiene periodos sin actividad.

**Planteamiento del problema:**
Analizar la relacion entre utilizacion y tiempos de espera en sistemas con variabilidad.

**Pregunta:**
Cual es la utilizacion de la ventanilla y que explica la insatisfaccion del cliente?

**Opciones:**
A) Utilizacion 83%; la variabilidad en las llegadas causa filas a pesar de la capacidad extra.
B) Utilizacion 100%; la ventanilla esta saturada de forma constante.
C) Utilizacion 50%; las quejas son infundadas y el proceso es eficiente.
D) Utilizacion 120%; el diseño del proceso es insuficiente para la demanda.

**Respuesta correcta:**
A

**Justificacion (clave):**
La utilizacion es alta (83.3%). En teoria de colas, a medida que la utilizacion supera el 80%, el tiempo de espera crece exponencialmente debido a que las llegadas no son uniformes. Aunque el empleado tiene "tiempos muertos" totales del 17%, la concentracion de clientes en ciertos momentos genera esperas prolongadas.

---

## CASO 33: Estrategia - Sinergias en Adquisiciones (M&A)

**Contexto:**
Fusion entre Software Medico y Dispositivos:
* Costo adquisicion: $10M | Integracion: $1.5M
* Sinergia esperada: $3M anuales ($1M ahorro + $2M ventas extra)

**Planteamiento del problema:**
Evaluar la viabilidad de la fusion basandose en la creacion de valor post-integracion.

**Pregunta:**
Cual es el principal riesgo estrategico y como se debe medir el exito?

**Opciones:**
A) Riesgo de canibalizacion; medir por el tamaño de la oficina central.
B) Riesgo de choque cultural; medir por el Flujo de Caja incremental neto.
C) Riesgo legal; medir por el numero de demandas resueltas.
D) Riesgo de marca; medir por la inversion en publicidad realizada.

**Respuesta correcta:**
B

**Justificacion (clave):**
El exito de una fusion depende de la integracion cultural para que las sinergias se materialicen. Si el personal clave renuncia por el choque de culturas, las ventas proyectadas no ocurriran. La metrica real de exito es el flujo de caja adicional que la union genera frente a la suma de las partes operando por separado.

---

## CASO 34: Marketing - Atribucion Omnicanal (Efecto ROPO)

**Contexto:**
Tienda de muebles detecta que el 70% de clientes investigan online (web) antes de comprar en tienda fisica. El Gerente Web pide mas presupuesto pese a bajas ventas directas online (5%). El Gerente de Tienda afirma que la web no ayuda al cierre.

**Planteamiento del problema:**
Asignar presupuesto de marketing basandose en el viaje real del cliente.

**Pregunta:**
Cual es la accion mas avanzada para resolver este conflicto de atribucion?

**Opciones:**
A) Cerrar la web para medir cuanto caen las ventas fisicas.
B) Usar cupones digitales canjeables en tienda para medir la conversion asistida por la web.
C) Dar todo el presupuesto a la tienda fisica por ser el canal de cierre real.
D) Subir precios online para evitar que la gente use la web como catalogo.

**Respuesta correcta:**
B

**Justificacion (clave):**
Se trata del efecto ROPO (Research Online, Purchase Offline). Ignorar la influencia de la web es un error de atribucion. Los cupones permiten "trackear" al cliente desde el canal digital hasta la caja fisica, demostrando que la web es un motor de ventas indirectas y justificando cientificamente su presupuesto.

---

## CASO 35: Recursos Humanos - Sucesion de Conocimiento Critico

**Contexto:**
El CTO (Director Tecnologico) se jubila en 12 meses. Posee el conocimiento de los algoritmos base. No hay sucesor interno claro. El talento joven es alto pero le falta experiencia directiva. Un externo tardaria 6 meses en adaptarse y es 40% mas caro.

**Planteamiento del problema:**
Garantizar la continuidad operativa y la proteccion de la propiedad intelectual.

**Pregunta:**
Cual es el plan de accion mas robusto para gestionar esta sucesion?

**Opciones:**
A) Grabar videos tecnicos y liquidar al CTO inmediatamente para ahorrar.
B) Identificar candidatos internos para un programa de Mentoría y Shadowing de 12 meses.
C) Ofrecer un bono infinito para que el CTO nunca se retire.
D) Contratar al externo hoy mismo y despedir al CTO para evitar duplicidad.

**Respuesta correcta:**
B

**Justificacion (clave):**
El conocimiento tacito (el "saber hacer") no se transfiere con manuales o videos. El Shadowing permite que el sucesor aprenda la logica y cultura detras de la tecnologia bajo la guia del experto. Ademas, motiva al talento interno y reduce el riesgo de fuga de informacion sensible a la competencia.

---

## CASO 36: Calidad - Eficiencia del Ciclo Lean

**Contexto:**
Analisis de Valor (VSM) en planta de alimentos:
* Tiempo de proceso (valor): 15 minutos
* Lead Time total (pedido a entrega): 12 dias
El producto pasa la mayor parte del tiempo en esperas, transportes o aduanas internas.

**Planteamiento del problema:**
Mejorar la agilidad de entrega eliminando los desperdicios (Muda) del flujo.

**Pregunta:**
Cual es el diagnostico de eficiencia y que accion es prioritaria?

**Opciones:**
A) Eficiencia aceptable; mejorar la velocidad de las maquinas de empaque.
B) Eficiencia menor al 1%; rediseñar el layout y agilizar procesos administrativos.
C) Eficiencia del 50%; contratar mas personal operativo para mover la carga.
D) Eficiencia total; los 12 dias son necesarios por normas de seguridad.

**Respuesta correcta:**
B

**Justificacion (clave):**
La eficiencia del ciclo es bajisima (15 min / 17,280 min). Atacar el tiempo de proceso (15 min) tendria un impacto nulo en el cliente. El verdadero beneficio esta en reducir los 12 dias de espera. Rediseñar el flujo para eliminar traslados y cuellos de botella burocraticos reducira el Lead Time drasticamente sin inversion en maquinaria.

---

## CASO 37: Toma de Decisiones - Sensibilidad e Inflacion

**Contexto:**
App de Lealtad en Cafeterias:
* Inversion: $100k | Beneficio esperado: +$10/ticket
* Riesgo: Si el cafe sube 10% (probabilidad 70%), el margen neto cae de $30 a $22.

**Planteamiento del problema:**
Evaluar la robustez de la inversion ante variables externas fuera de control.

**Pregunta:**
Cual es la decision mas prudente considerando la alta sensibilidad del margen?

**Opciones:**
A) No invertir; el riesgo inflacionario es demasiado alto.
B) Invertir confiando en que el volumen compensara la caida de margen.
C) Invertir asegurando el precio del cafe mediante contratos de futuros (hedging).
D) Invertir y subir precios un 20% antes de lanzar la App.

**Respuesta correcta:**
C

**Justificacion (clave):**
La gestion profesional de riesgos implica neutralizar las variables externas que amenazan el exito de una estrategia comercial. Al asegurar el costo de los insumos (futuros), se protege el margen de $30 y se permite que el programa de lealtad cumpla su objetivo de rentabilidad sin ser saboteado por la inflacion del grano.

---

## CASO 38: Productividad - Labor Efficiency Ratio (LER)

**Contexto:**
Empresa de servicios:
* Ingresos: $1,000,000 | Nomina total: $600,000
* Propuesta: Despedir al 20% del personal para "mejorar la eficiencia".

**Planteamiento del problema:**
Analizar la productividad del capital humano evitando el deterioro del servicio y el agotamiento del equipo.

**Pregunta:**
Cual es el LER actual y que riesgo corre la empresa con el recorte propuesto?

**Opciones:**
A) LER 1.66; riesgo de burnout y caida en la calidad del servicio al cliente.
B) LER 0.60; la empresa pierde dinero por cada empleado y debe recortar.
C) LER 1.00; productividad neutra; el recorte es indiferente.
D) LER 2.50; eficiencia maxima; el recorte es una oportunidad de oro.

**Respuesta correcta:**
A

**Justificacion (clave):**
LER = Ingresos / Costo Labor = 1.66. Significa que por cada peso en nomina se generan $1.66. Recortar personal sin cambiar procesos aumentara la carga de trabajo de los que se quedan, elevando el LER artificialmente a corto plazo pero arriesgando la perdida de contratos por fallas de calidad y rotacion no deseada.

---

## CASO 39: Liderazgo - Modelo ADKAR y ERP

**Contexto:**
Nuevo ERP instalado hace 3 meses. El 40% del equipo sigue usando hojas de Excel paralelas porque "no encuentran los datos en el sistema". TI dice que el manual de 200 paginas es suficiente.

**Planteamiento del problema:**
Diagnosticar la falla en la adopcion tecnologica para asegurar la integridad de los datos.

**Pregunta:**
En que etapa del modelo ADKAR esta fallando el proceso?

**Opciones:**
A) Awareness; no saben para que sirve el ERP.
B) Desire; hay un sabotaje consciente por parte de los lideres.
C) Ability; el manual no desarrolla la destreza practica necesaria.
D) Reinforcement; no se ha celebrado el exito del proyecto.

**Respuesta correcta:**
C

**Justificacion (clave):**
El personal tiene la informacion (manual), pero no la "Habilidad" (Ability) para ejecutar la tarea en el nuevo entorno. La brecha entre leer un manual y operar un software complejo requiere talleres practicos y acompañamiento. Sin la destreza real, el usuario regresa a su zona de confort (Excel) para cumplir con su trabajo.

---

## CASO 40: Etica - Conflicto de Interes en Compras

**Contexto:**
Director de Compras debe elegir proveedor de cemento. La mejor oferta (precio y calidad) es de la empresa donde su cuñado es Gerente de Ventas. El Director teme acusaciones de nepotismo si elige la opcion objetivamente superior.

**Planteamiento del problema:**
Resolver el dilema etico protegiendo el beneficio de la empresa y la reputacion del directivo.

**Pregunta:**
Cual es la accion correcta bajo estandares de Gobierno Corporativo?

**Opciones:**
A) Elegir la segunda mejor opcion para evitar sospechas.
B) Elegir al cuñado sin avisar a nadie para no generar ruido.
C) Declarar el conflicto de interes y abstenerse de la votacion, delegando en el Comite.
D) Pedirle al cuñado que no participe en esa licitacion especifica.

**Respuesta correcta:**
C

**Justificacion (clave):**
La transparencia es la mejor proteccion contra el conflicto de interes. Al declarar el vinculo y dejar que un comite independiente valide la oferta, se asegura que la empresa obtenga el mejor contrato (beneficio economico) sin que la integridad del Director sea cuestionada (beneficio reputacional).
