# Agent Memory Starter

**Idioma:** [English](../../README.md) | [简体中文](README.zh-CN.md) | [繁體中文](README.zh-TW.md) | [Français](README.fr.md) | Español

Un kit inicial, basado en archivos y listo para usar, que añade memoria a largo plazo a los agentes de programación con IA.

Agent Memory Starter añade a un espacio de trabajo un sistema `.memory/` portátil para conservar el contexto del proyecto, las decisiones, las convenciones, el glosario y los elementos pendientes. El kit está inicializado con plantillas limpias, por lo que no incluye historial personal, notas privadas de proyectos ni registros de sesiones anteriores.

## Instalación

Ejecuta el instalador desde la raíz del espacio de trabajo donde quieras activar la memoria.

### curl

macOS y Linux:

```bash
curl -fsSL https://raw.githubusercontent.com/ianzhao001/agent-memory-starter/main/install.sh | bash
```

Windows PowerShell:

```powershell
curl.exe -fsSL https://raw.githubusercontent.com/ianzhao001/agent-memory-starter/main/install.ps1 -o install.ps1
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

El instalador se detiene si `AGENTS.md`, `.memory/` o `.gitignore` ya existe. Para sobrescribir archivos existentes, usa `AGENT_MEMORY_STARTER_FORCE=1` en macOS/Linux o `-Force` en Windows.

### Homebrew

```bash
brew install ianzhao001/tap/agent-memory-starter
agent-memory-starter init
```

Homebrew es el canal de distribución previsto para este gestor de paquetes. El comando anterior funcionará cuando el tap de Homebrew esté publicado.

### winget

```powershell
winget install ianzhao001.AgentMemoryStarter
agent-memory-starter init
```

winget es el canal de distribución previsto para Windows. El comando anterior funcionará cuando el manifiesto se publique en una fuente de winget.

## Contenido

- `AGENTS.md`: instrucciones del espacio de trabajo que indican al agente cómo cargar la memoria.
- `.memory/INDEX.md`: índice ligero para descubrir entradas de memoria.
- `.memory/rules.md`: reglas para leer, escribir, confirmar y mantener la memoria.
- `.memory/profile.md`: plantilla vacía para preferencias de usuario.
- `.memory/projects/current-project.md`: plantilla vacía para el contexto del proyecto actual.
- `.memory/conventions/`: plantillas para stack, flujo de trabajo y convenciones de código.
- `.memory/pending.md`: registro vacío de decisiones pendientes.

## Privacidad

Este paquete inicial está intencionalmente inicializado. No contiene memoria personal, decisiones históricas, elementos pendientes antiguos ni registros de sesiones.

## Licencia

Apache License 2.0.
