# Versionado de Infraestructura con Terraform

El equipo de DevOps necesita versionar la infraestructura del servicio de notificaciones utilizando Terraform. El servicio de notificaciones se compone de una red y un sistema de computo. La infraestructura debe ser aprovisionada de manera que sea reproducible y versionable.

## Informacion General

| Campo | Valor |
|-------|-------|
| **Tema** | Infraestructura como codigo con Terraform |
| **Nivel** | advanced-l2 |
| **Tipo** | practical |
| **Tiempo estimado** | 8 horas |

## Fases del Reto

### Fase 0: Configuración del Proyecto

**Objetivo:** Obtener el proyecto base funcional enviando el Código Base a un asistente de IA, que lo analizará, corregirá errores y entregará cada archivo con su ruta.

**Tiempo estimado:** 15-30 minutos

**Instrucciones:**

- Asegúrate de tener instalado para ejecutar el proyecto: Un IDE o editor de código.
- Copia todo el contenido del campo **Código Base** de este reto — incluyendo el texto de instrucciones que aparece al inicio.
- Abre un asistente de IA (Claude en claude.ai, ChatGPT o Gemini — se recomienda Claude), pega el contenido copiado en el chat y envíalo.
- El asistente analizará los archivos, corregirá errores y entregará cada archivo con su ruta. Guárdalos en la carpeta donde quieras trabajar, respetando las rutas.
- Verifica que el proyecto arranca sin errores.

**Entregable:** El proyecto compila/arranca sin errores.

<details>
<summary>Pistas de conocimiento</summary>

- Copia el Código Base completo incluyendo el texto de instrucciones al inicio — esas instrucciones le indican al asistente exactamente qué hacer con los archivos.
- Si el asistente no entrega todos los archivos al terminar el análisis, escríbele: "entrégame todos los archivos con su ruta".
- Si el proyecto tiene errores al arrancar, comparte el mensaje de error con el mismo asistente para que lo corrija.

</details>

### Fase 1: Exploración del Servicio de Notificaciones

**Objetivo:** Comprender la arquitectura actual del servicio de notificaciones y sus dependencias.

**Tiempo estimado:** 2 horas

**Instrucciones:**

- Identificar los componentes clave de la infraestructura del servicio de notificaciones.
- Documentar las dependencias y relaciones entre los componentes.

**Entregable:** Documentación de la arquitectura actual del servicio de notificaciones.

<details>
<summary>Pistas de conocimiento</summary>

- Utilizar Terraform para explorar la configuración existente.
- Identificar los recursos de red y computo necesarios.

</details>

### Fase 2: Configuración de Terraform para el Servicio de Notificaciones

**Objetivo:** Configurar Terraform para versionar la infraestructura del servicio de notificaciones.

**Tiempo estimado:** 3 horas

**Instrucciones:**

- Crear un archivo de configuración de Terraform para el servicio de notificaciones.
- Definir los recursos de red y computo necesarios en el archivo de configuración.
- Asegurar que la configuración sea reproducible y versionable.

**Entregable:** Archivo de configuración de Terraform para el servicio de notificaciones.

<details>
<summary>Pistas de conocimiento</summary>

- Utilizar módulos de Terraform para organizar la configuración.
- Asegurar que la configuración sea idempotente.

</details>

### Fase 3: Ejecución y Verificación de la Configuración

**Objetivo:** Ejecutar la configuración de Terraform y verificar que la infraestructura se aprovisione correctamente.

**Tiempo estimado:** 3 horas

**Instrucciones:**

- Ejecutar el plan de Terraform para aprovisionar la infraestructura.
- Verificar que los recursos de red y computo se creen correctamente.
- Documentar cualquier problema encontrado y cómo se solucionó.

**Entregable:** Informe de ejecución y verificación de la configuración de Terraform.

<details>
<summary>Pistas de conocimiento</summary>

- Utilizar comandos de Terraform para ejecutar y verificar la configuración.
- Documentar los problemas encontrados y las soluciones aplicadas.

</details>

## Dimensiones Evaluadas

- **queEs**: ¿Qué es Terraform y cómo se utiliza para versionar la infraestructura?
- **paraQueSirve**: ¿Para qué sirve versionar la infraestructura con Terraform?
- **comoSeUsa**: ¿Cómo se configura Terraform para versionar la infraestructura del servicio de notificaciones?
- **erroresComunes**: ¿Cuáles son los errores comunes al configurar Terraform y cómo se pueden evitar?
- **queDecisionesImplica**: ¿Qué decisiones implica la configuración de Terraform para versionar la infraestructura?

## Criterios de Evaluacion

- Comprender la arquitectura actual del servicio de notificaciones.
- Configurar Terraform para versionar la infraestructura.
- Ejecutar y verificar la configuración de Terraform.

## Como trabajar con un asistente de IA

Hay dos caminos, elegi uno:

- **AGENTS.md** (recomendado) — instrucciones nativas del repo. Abri esta carpeta con tu agente local (Claude Code, Cursor, Codex, Copilot, Gemini) y las carga solo. Sabe que archivos faltan y con que comando se verifica, y completa el scaffold escribiendo en disco.
- **PROMPT_MEJORA.md** — para copiar y pegar en un chat (claude.ai, ChatGPT) si no tenes un agente en el IDE. Declara lo mismo que AGENTS.md; los archivos que te devuelva el chat los guardas en esta carpeta respetando las rutas.

Ninguno de los dos resuelve las fases del reto: eso es tu trabajo.

## Herramientas

- **Terraform**: Herramienta de trabajo del candidato: usala en la fase donde se depura o se prueba la solucion (no es una dependencia del proyecto).

## Verificacion

El proyecto esta listo para trabajar cuando este comando corre sin errores:

```bash
docker build -t reto:local . && terraform -chdir=terraform init -backend=false && terraform -chdir=terraform validate
```

---

*Reto generado automaticamente por Challenge Generator - Pragma*
