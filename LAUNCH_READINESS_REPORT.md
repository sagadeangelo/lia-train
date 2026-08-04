# LIA Train — Launch Readiness Report

**Fecha de auditoría:** 2026-08-02
**Auditor:** CTO / PM Lens (comercial-first)
**Pregunta norte:** ¿Qué falta para que un usuario compre hoy mediante Mercado Pago, obtenga acceso automáticamente y comience a estudiar?

---

## 1. Resumen Ejecutivo

| Indicador | Valor |
|---|---|
| **Estado general** | Prototipo funcional de simulador + Landing estética, sin capa comercial |
| **% de avance estimado** | **35%** (core de simulación listo, 0% comercial) |
| **¿Compila?** | ✅ Sí (0 errores de compilación) |
| **¿Puede ejecutarse?** | ✅ Sí (modo simulador + demo + práctica funcionan en local) |
| **¿Puede vender hoy?** | ❌ **NO** (no hay pasarela, no hay auth, no hay acceso automático) |
| **¿Puede vender esta semana?** | ⚠️ Solo con un MVP extremo (pasarela manual + acceso manual), no automático |
| **Tiempo estimado MVP vendible (automático)** | **3–5 días hábiles** (ver Plan de Ataque) |

---

## 2. Auditoría Funcional

### 2.1 Frontend / UX

| Módulo | Existe | Compila | Funciona | Terminado | Estado |
|---|---|---|---|---|---|
| **Landing** | ✅ | ✅ | ✅ | 🟡 Parcial | 🟡 |
| **Catálogo (7 carreras)** | ✅ | ✅ | ✅ | 🟡 Parcial | 🟡 |
| **Página de producto (detalle)** | ❌ | — | — | — | 🔴 |
| **Marketplace** | ❌ | — | — | — | 🔴 |
| **Productos / SKUs (3 tiers)** | ✅ (hardcoded) | ✅ | 🟡 (sin checkout) | 🔴 No implementado | 🟡 |

**Notas Landing/Catálogo:**
- HomePage ([home_page.dart](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/features/home/home_page.dart)) integra Landing + Catálogo en una sola pantalla con UI premium (glassmorphism, animaciones, hero section, CTA).
- 7 carreras definidas con precios: `Acceso Básico $149` / `Entrenador Inteligente $499` / PDF guía.
- **Break:** Los botones de compra llaman a `_showPurchaseSnack()` que solo muestra un SnackBar `"Iniciando flujo de compra seguro..."`. No inicia flujo real. [home_page.dart#L548-L560](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/features/home/home_page.dart#L548-L560)
- El botón `Iniciar sesión` del navbar tiene `onPressed: () {}` (vacío). [home_page.dart#L177-L184](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/features/home/home_page.dart#L177-L184)
- Solo Sistemas/TI tiene link PDF funcional (`pdfUrl` asignado). Las demás carreras abren el snack de compra.

### 2.2 Autenticación / Usuarios

| Módulo | Existe | Compila | Funciona | Terminado | Estado |
|---|---|---|---|---|---|
| **Registro** | ❌ | — | — | — | 🔴 |
| **Login** | ❌ | — | — | — | 🔴 |
| **Auth Page** | ✅ (archivo) | ⚠️ Vacío | ❌ | — | 🔴 |
| **Perfil de usuario** | ❌ | — | — | — | 🔴 |
| **Dashboard** | ❌ | — | — | — | 🔴 |
| **Firebase Service** | ✅ (archivo) | ⚠️ Vacío | ❌ | — | 🔴 |

**Notas Auth:**
- [auth_page.dart](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/features/auth/auth_page.dart) — **archivo VACÍO**
- [firebase_service.dart](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/data/services/firebase_service.dart) — **archivo VACÍO**
- `pubspec.yaml` incluye `firebase_core`, `firebase_auth`, `cloud_firestore` pero **nunca se inicializan** en `main.dart` (no hay `Firebase.initializeApp()`).
- No existe `google-services.json` ni `GoogleService-Info.plist` en android/ios.
- **Conclusión:** La autenticación es 0% implementada.

### 2.3 Simulador / Core Educativo

| Módulo | Existe | Compila | Funciona | Terminado | Estado |
|---|---|---|---|---|---|
| **Pre-Exam (config + countdown)** | ✅ | ✅ | ✅ | ✅ | 🟢 |
| **Simulador Page (120 reactivos)** | ✅ | ✅ | ✅ (Sistemas/TI) | 🟡 Parcial | 🟡 |
| **Resultados Page (análisis)** | ✅ | ✅ | ✅ | ✅ | 🟢 |
| **Demo Rápida (5 reactivos)** | ✅ | ✅ | ✅ | ✅ | 🟢 |
| **Shuffle Challenge** | ✅ | ✅ | ✅ | ✅ | 🟢 |
| **Práctica por categoría** | ✅ | ✅ | ✅ | ✅ | 🟢 |
| **Modo Enfoque (audio)** | ✅ | ✅ | ✅ | ✅ | 🟢 |
| **Tutor IA** | ❌ | — | — | — | 🔴 |
| **Historial de intentos** | 🟡 (Solo SharedPreferences) | ✅ | 🟡 (sin usuario) | 🟡 | 🟡 |
| **Panel alumno** | ❌ | — | — | — | 🔴 |
| **Panel docente** | ❌ | — | — | — | 🔴 |
| **Administración** | ❌ | — | — | — | 🔴 |

**Notas críticas Simulador:**
- **Solo Sistemas/TI funciona bien.** En [exam_provider.dart#L78-L90](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/features/simulador/providers/exam_provider.dart#L78-L90), el `generateExam()` filtra Sistemas por 4 categorías hardcodeadas. Para las demás 6 carreras, el filtro es `q.category == career` (nombre completo de carrera como categoría). Dado que las categorías reales en `allQuestions` son temáticas (Derecho Civil, Contabilidad Financiera, etc.), **no hay match** → `available` quedará vacío → se reciclarán preguntas incorrectas de Sistemas/Administración para las demás carreras. **Riesgo alto de vender simuladores con preguntas equivocadas.**
- Bancos de preguntas:
  - [questions.dart](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/data/questions.dart) — ~4,000+ preguntas multi-carrera
  - [questions_admin_new.dart](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/data/questions_admin_new.dart) — ~700 preguntas Administración
- Persistencia local: [persistence_service.dart](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/data/services/persistence_service.dart) usa `SharedPreferences` y guarda únicamente el último resultado. Sin histórico multisesión, sin sincronización nube.

### 2.4 Comercial / Pagos

| Módulo | Existe | Compila | Funciona | Terminado | Estado |
|---|---|---|---|---|---|
| **Mercado Pago SDK** | ❌ | — | — | — | 🔴 |
| **Checkout** | ❌ | — | — | — | 🔴 |
| **Preferencias de pago** | ❌ | — | — | — | 🔴 |
| **Webhook / IPN** | ❌ | — | — | — | 🔴 |
| **Callback de éxito** | ❌ | — | — | — | 🔴 |
| **Confirmación `approved`** | ❌ | — | — | — | 🔴 |
| **Entrega automática de acceso** | ❌ | — | — | — | 🔴 |
| **Notificaciones** | ❌ | — | — | — | 🔴 |
| **Correos transaccionales** | ❌ | — | — | — | 🔴 |
| **Ordenes / Facturas** | ❌ | — | — | — | 🔴 |

### 2.5 Infraestructura / Backend

| Módulo | Existe | Compila | Funciona | Terminado | Estado |
|---|---|---|---|---|---|
| **Backend API** | ❌ | — | — | — | 🔴 |
| **Base de datos (Firestore)** | ✅ (dependencia) | — | ❌ (vacío) | — | 🔴 |
| **Cloudflare** | ❌ | — | — | — | 🔴 |
| **Sincronización nube** | ❌ | — | — | — | 🔴 |
| **Persistence (local)** | ✅ | ✅ | ✅ | ✅ | 🟢 |

---

## 3. Flujo Comercial — Dónde se rompe

```
Landing (HomePage)
    ↓ ✅ EXISTE (Hero + NavBar + CTA)
Catálogo (7 CareerItem cards)
    ↓ ✅ EXISTE (precios hardcodeados $149 / $499)
Página del producto (detalle guía)
    ↓ 🔴 NO EXISTE — se rompe AQUÍ. Actualmente el card es el "producto".
    ↓ Workaround: se puede saltar este paso y comprar directo desde el card.
Registro
    ↓ 🔴 NO EXISTE. auth_page.dart está VACÍO.
    ↓ Workaround: registro anónimo por email con Firebase Auth (30 min).
Login
    ↓ 🔴 NO EXISTE
    ↓ Workaround: mismo que registro.
Comprar
    ↓ 🔴 LOS BOTONES SOLO MUESTRAN SNACKBAR. _showPurchaseSnack() no hace nada.
Mercado Pago
    ↓ 🔴 NO EXISTE INTEGRACIÓN. SDK NO INSTALADO.
Pago aprobado
    ↓ 🔴 NO EXISTE CALLBACK ni WEBHOOK
Acceso automático
    ↓ 🔴 NO EXISTE LÓGICA. Nadie marca al usuario como "paid".
Dashboard
    ↓ 🔴 NO EXISTE. Después del pago, ¿a dónde va el usuario?
Simulador
    ↓ ✅ EXISTE (funciona para Sistemas/TI; para demás carreras necesita fix)
Tutor IA
    ↓ 🔴 NO EXISTE (fuera del scope de venta inmediata)
```

**Punto exacto de ruptura del flujo real:** Botón "Entrenador Inteligente $499" → llama `_onBundleTap()` → llama `_showPurchaseSnack()` → fin. No pasa de ahí.

---

## 4. Mercado Pago — Auditoría Específica

| Item | Estado | Detalle |
|---|---|---|
| **SDK instalado** | 🔴 No | No hay `mercado_pago_mobile_checkout` ni `mercadopago_sdk` ni HTTP client dedicado en `pubspec.yaml`. |
| **SDK backend Node/Cloudflare** | 🔴 No | No hay backend. |
| **Checkout (UI)** | 🔴 No | No existe pantalla de checkout ni redirect. |
| **Preferencias (`/checkout/preferences`)** | 🔴 No | No se crea preferencia con items, title, unit_price, quantity. |
| **Payer info** | 🔴 No | Sin usuario registrado → no hay payer email/identificación. |
| **Webhook / IPN listener** | 🔴 No | Sin endpoint Cloudflare Worker/Firebase Function. |
| **Callback `return_url`** | 🔴 No | No hay ruta `/pago/exito` ni `/pago/fallo`. |
| **Estado `approved` handling** | 🔴 No | Sin lógica que escuche `status: approved` y actualice perfil. |
| **Entrega automática** | 🔴 No | Sin `access_granted` flag ni relación `user → products[]`. |
| **Errores conocidos** | — | Ninguno aún (no hay código). |
| **Riesgos** | 🔴🔴🔴 | Ausencia total = cero ventas automáticas posibles. |

---

## 5. Estado Técnico

### 5.1 `flutter analyze` — Resumen

```
112 issues found.
  0 errores
 14 warnings (unused_import, unused_field, unused_element, unused_local_variable)
 98 info (deprecated_member_use, avoid_print, prefer_const*, no_leading_underscores)
```

### 5.2 Warnings (14) — Impacto variable

| Archivo | Issue | ¿Impide venta hoy? |
|---|---|---|
| [app.dart#L2](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/app.dart#L2) | unused_import riverpod | No |
| [persistence_service.dart#L2](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/data/services/persistence_service.dart#L2) | unused_import dart:convert | No |
| [demo_exam_page.dart#L8](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/features/demo/pages/demo_exam_page.dart#L8) | unused_import home_page | No |
| [home_page.dart#L7-L9](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/features/home/home_page.dart#L7-L9) | 3x unused_import (simulador, demo, shuffle) | No |
| [home_page.dart#L495,499](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/features/home/home_page.dart#L495) | _isHoveredPdf, _isPressedPdf sin usar | No |
| [home_page.dart#L531](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/features/home/home_page.dart#L531) | _onPdfTap sin referenciar | No |
| [home_page.dart#L830](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/features/home/home_page.dart#L830) | _buildSimpleButton sin usar | No |
| [resultados_page.dart#L6](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/features/resultados/resultados_page.dart#L6) | unused_import simulador_page | No |
| [exam_provider.dart#L95](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/features/simulador/providers/exam_provider.dart#L95) | unused_local_variable `total` | No |
| [exam_provider.dart#L152](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/features/simulador/providers/exam_provider.dart#L152) | _safePick sin referenciar | No |

### 5.3 Pantallas / Providers sin uso (código muerto)

| Elemento | Ubicación | ¿Se usa? |
|---|---|---|
| `quiz_provider.dart` (QuizNotifier) | [lib/features/simulador/providers/quiz_provider.dart](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/features/simulador/providers/quiz_provider.dart) | ❌ Duplicado lógico de exam_provider + practica |
| `timer_provider.dart` (TimerNotifier) | [lib/features/simulador/providers/timer_provider.dart](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/features/simulador/providers/timer_provider.dart) | ❌ Duplicado de exam_timer_provider |
| `quiz_repository.dart` (MockQuizRepository) | [lib/data/repositories/quiz_repository.dart](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/data/repositories/quiz_repository.dart) | ❌ 4 preguntas hardcodeadas, sin uso |
| `quiz_state.dart` | [lib/data/models/quiz_state.dart](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/data/models/quiz_state.dart) | Probablemente sin uso |
| `helpers.dart` | [lib/core/utils/helpers.dart](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/core/utils/helpers.dart) | ❌ Archivo VACÍO |
| `focus_toggle_button.dart` | Widget | Sin verificar import |
| `progress_header.dart` | Widget | Sin verificar import |
| `app_theme.dart` | Tema | Se usa pero `background` está deprecado |

### 5.4 Rutas muertas

- `app_router.dart` solo define `/` y `/challenge`. Todas las demás pantallas se navegan por `Navigator.push` imperativo → sin deep-linking, sin rutas nombradas para webhooks/retorno de pago.

### 5.5 Archivos vacíos / sin implementar

- [auth_page.dart](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/features/auth/auth_page.dart) — VACÍO 🔴
- [firebase_service.dart](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/data/services/firebase_service.dart) — VACÍO 🔴
- [helpers.dart](file:///d:/PROYECTOS_FLUTTER/lia_train/lib/core/utils/helpers.dart) — VACÍO

### 5.6 `avoid_print` en producción

17 llamadas `print()` dispersas en:
- home_page.dart, practica_provider.dart, exam_provider.dart, focus_provider.dart

No son bloqueantes pero ensucian consola en producción.

### 5.7 Deprecated APIs (98 info)

La gran mayoría son `withOpacity` deprecado → reemplazar por `withValues()`. No rompen compilación ni UX hoy. No son prioridad pre-venta.

---

## 6. Riesgos que IMPIDEN lanzar

> Solo lo que impide que un cliente pague y reciba acceso HOY.

| # | Riesgo | Severidad | Impacto si no se resuelve |
|---|---|---|---|
| R1 | **Sin integración Mercado Pago** | 🔴 CRÍTICO | No se puede cobrar. Punto de venta cero. |
| R2 | **Sin autenticación de usuarios** | 🔴 CRÍTICO | No hay quién pagó. No se entrega acceso a persona correcta. Imposible venta automática. |
| R3 | **Sin lógica de "acceso concedido"** | 🔴 CRÍTICO | Aun con MP y auth resueltos, nadie actualiza un flag `hasAccess: true` ni registra la compra. El usuario paga y se queda sin acceso. |
| R4 | **Sin ruta de retorno de pago** | 🔴 ALTO | Después del checkout de MP, el usuario vuelve a la app y no sabe si pagó o no. No hay pantalla de confirmación. |
| R5 | **Simulador roto para 6/7 carreras** | 🔴 ALTO | Si alguien compra Derecho/Contaduría/Admin/Industrial/Psicología/Enfermería, le salen preguntas de Sistemas recicladas → devolución inmediata + review negativa. |
| R6 | **Sin dashboard post-login** | 🟡 MEDIO | Usuario logueado + pago aprobado → ¿a qué pantalla entra? Hoy no hay ruta. Necesita mínimo una pantalla que liste productos comprados y botón "Iniciar Simulador". |
| R7 | **Sin backend / webhook para IPN** | 🟡 MEDIO | MP puede aprobar un pago y la app no se entera (el usuario cerró la pestaña). Necesitamos webhook serverless (Cloudflare Worker / Firebase Function) para confirmación server-to-server. |
| R8 | **Sin base de datos de órdenes** | 🟡 MEDIO | Sin historial de compras. Imposible soporte, reembolsos, auditoría. |

---

## 7. Bloqueadores (ordenados por criticidad)

| Prioridad | Item | Severidad |
|---|---|---|
| 🔴 P0 | **Mercado Pago (preferencias + checkout + status approved)** | Bloqueante total |
| 🔴 P0 | **Autenticación (Firebase Auth: email/Google)** | Bloqueante total |
| 🔴 P0 | **Acceso automático (Firestore: user → products purchased)** | Bloqueante total |
| 🔴 P0 | **Fix filtro de preguntas por carrera (6/7 carreras con banco incorrecto)** | Bloqueante de calidad mínima |
| 🟡 P1 | **Ruta de retorno + pantalla de confirmación de pago** | Alto (UX post-pago) |
| 🟡 P1 | **Dashboard mínimo (mis productos + iniciar simulador)** | Alto (sin esto el usuario no hace nada después de pagar) |
| 🟡 P1 | **Webhook IPN (confirmación server-side)** | Medio (evita pérdidas por cierre de pestaña) |
| 🟡 P1 | **Rutas (GoRouter): /login, /register, /dashboard, /pago/exito** | Medio (deep-link + navegación limpia) |
| 🟢 P2 | **Página detalle de producto** | Bajo (se puede comprar directo del card) |
| 🟢 P2 | **Tutor IA** | Fuera de scope de venta |
| 🟢 P2 | **Panel docente / admin** | Fuera de scope de venta |
| 🟢 P2 | **Notificaciones push / emails** | Pospuesta (bienvenida manual) |

---

## 8. Plan de Ataque (≤ 10 pasos)

> Cada paso desbloquea ventas. Menos es más.

| Paso | Acción concreta | Tiempo est. | Impacto comercial | Dependencias |
|---|---|---|---|---|
| **1** | **Firebase inicialización + Auth** → `Firebase.initializeApp()` en main.dart + `auth_page.dart` con Email/Password (register + login) + Google Sign-in opcional. Crear colección `users/{uid}` en Firestore. | 3h | Permite identificar quién paga | Ninguna |
| **2** | **Fix banco por carrera** → Mapear cada carrera (Derecho, Contaduría, etc.) a sus categorías reales dentro de `allQuestions` en `exam_provider.generateExam()`. Si no hay banco para una carrera, OCULTARLA del catálogo. | 2h | Evita devoluciones por contenido erróneo | Paso 0 |
| **3** | **Mercado Pago (Checkout Pro vía URL)** → No usar SDK mobile. Crear preferencia de pago con HTTP REST (`dio` o `http`) llamando a `api.mercadopago.com/checkout/preferences` desde un backend ligero. 3 SKUs hardcodeados ($149, $499, PDF). Redirect del navegador a `init_point`. | 4h | **DESBLOQUEA EL COBRO.** | Paso 1 (necesita user email para `payer`) |
| **4** | **Flag de acceso en Firestore** → Cuando MP retorna `status=approved` (tanto en callback frontend como en webhook), escribir en `users/{uid}/purchases/{purchaseId}` + `hasActiveAccess: true` + `products: [idProducto]`. | 2h | **DESBLOQUEA ENTREGA AUTOMÁTICA.** | Pasos 1 + 3 |
| **5** | **Rutas + Dashboard mínimo** → Agregar a `app_router.dart`: `/login`, `/register`, `/dashboard`. Dashboard = listado de `products` comprados + botón "Iniciar Simulador Completo" que llama `generateExam(career)` y navega a `PreExamPage`. Guardar `careerElegida` en Firestore/user. | 3h | Sin dashboard, usuario pagado no sabe qué hacer. | Pasos 1 + 2 |
| **6** | **Pantalla retorno de pago** → Ruta `/pago/resultado?status=approved&payment_id=xxx`. Lee query params, muestra "✅ Pago confirmado" o "❌ Falló". Si approved, navega a `/dashboard`. | 1h | Cierra el loop mental del usuario. | Pasos 3 + 5 |
| **7** | **Webhook IPN simple** → Cloudflare Worker (o Firebase Function si el proyecto tiene Blaze) que escuche POST de MP `/webhook/mercadopago`, valide `x-signature`, consulte `/v1/payments/:id` para confirmar `approved`, y escriba en Firestore. Garantiza que aunque el usuario cierre la pestaña, el acceso se entrega. | 3h | Elimina pérdidas por abandono. | Pasos 3 + 4 |
| **8** | **Gating de acceso** → En los botones de `CareerItem`, si el usuario NO ha comprado el SKU, sí lanzar el flujo MP. Si SÍ lo compró, lanzar directo `PreExamPage`. Sin paywall en rutas hard por ahora. | 1h | Cierra el ciclo compra → consumo. | Pasos 4 + 5 |
| **9** | **SharedPreferences → Firestore sync (opcional)** → Sincronizar últimos resultados a `users/{uid}/results/{date}` para persistencia cross-device. | 2h | Mejora retención (no bloqueante). | Paso 1 |
| **10** | **QA end-to-end** → Registro → Compra sandbox MP → Aprobado → Entra a dashboard → Inicia simulador → Termina → Ve resultados. Loguearse en otro device: misma data. | 2h | Confirma que todo funciona antes de cobrar de verdad. | Todos los anteriores |

**Tiempo total estimado:** ~23 horas efectivas → **3 días hábiles** (1 dev full stack).

---

## 9. Quick Wins (< 1 hora cada uno)

| # | Tarea | Impacto |
|---|---|---|
| QW1 | **Eliminar carreras sin banco** del array `careers` en home_page si no se puede hacer el fix del paso 2 hoy. Reduce devoluciones. | 15 min |
| QW2 | **Quitar `onPressed: () {}`** del botón "Iniciar sesión" → apuntar a `/login` (aunque sea una página "Próximamente" por ahora). Evita clicks muertos. | 10 min |
| QW3 | **Cambiar `_showPurchaseSnack()`** por un `AlertDialog` que diga: *"Regístrate primero para comprar"* y lleve a login (QW2). Hoy el usuario cree que va a comprar y no pasa nada. | 20 min |
| QW4 | **Inicializar Firebase** en `main.dart` (aun sin auth funcionando, evita que al agregar el código después reviente por falta de `initializeApp`). | 10 min |
| QW5 | **Agregar `url_launcher`** ya está en pubspec — usarlo para abrir Checkout Pro del paso 3 en navegador externo hasta tener ruta de retorno. | 15 min |
| QW6 | **Limpiar imports no usados** de los 14 warnings. Sin impacto funcional pero quita ruido en analyze. | 15 min |
| QW7 | **Imagen logo Mercado Pago** ya existe en `assets/images/mercado_pago.png`. Agregarla en el footer del card de compra como "Pago seguro por Mercado Pago". Aumenta confianza → +conversión. | 15 min |
| QW8 | **Agregar FAQs mínimas** en el HomePage: "¿Cómo recibo el acceso? (inmediato después de pago)". Reduce dudas pre-compra. | 45 min |
| QW9 | **Definir SKU IDs** constantes para los 3 productos: `sku_basic_<career> = $149`, `sku_premium_<career> = $499`, `sku_pdf_<career> = $X`. Evita inconsistencias. | 20 min |
| QW10 | **Hardcodear cuenta Sandbox MP** en un archivo `.env` (aunque sea manual) + testear creación de preferencia con `postman/curl` sin tocar Flutter. Prueba de vida de la pasarela. | 30 min |

---

## 10. Estado de Lanzamiento

# ❌ NO LISTO

### Explicación (por qué)

LIA Train tiene un **core educativo MUY sólido y bien ejecutado** (simulador de 120 reactivos, temporizador, dificultad progresiva, análisis por categoría, modo enfoque con audio, demo rápida, práctica por áreas, shuffle gamificado). Ese 60% del producto ya está hecho y con calidad premium.

**Pero el 40% comercial/identificación está en 0%, y ese 40% es TODO lo que se necesita para cobrar:**

1. 🔴 **Sin Mercado Pago** → no hay forma de recibir dinero de forma automática
2. 🔴 **Sin autenticación** → no hay forma de saber *a quién* darle acceso
3. 🔴 **Sin lógica de acceso concedido** → el que paga no obtiene nada automáticamente
4. 🔴 **6 de 7 carreras no tienen banco de preguntas correcto** → vender hoy = devoluciones masivas = reputación destruida
5. 🟡 **Sin ruta de retorno ni dashboard** → el usuario aprobado no sabe qué hacer

### ¿Se puede vender esta semana de forma MANUAL?

SÍ (como workaround mientras se implementa el plan):
- Paso A: Pedirle al cliente que pague a una cuenta CLABE/alias manual (Transferencia / Mercado Pago link generado a mano desde el panel de MP)
- Paso B: Recibir WhatsApp/email de comprobante
- Paso C: Crear usuario a mano / darle un access code hardcodeado
- Paso D: Enviar link del simulador por WhatsApp

Pero esto **no es lanzamiento automático**, requiere intervención humana 24/7 y no escala. No es SaaS. Para venta automática esta misma semana, ejecutar los 8 primeros pasos del Plan de Ataque.

---

*Fin del informe. Volver a [README.md](file:///d:/PROYECTOS_FLUTTER/lia_train/README.md)*
