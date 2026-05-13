# Agent Memory Starter

**Language:** English | [简体中文](docs/i18n/README.zh-CN.md) | [繁體中文](docs/i18n/README.zh-TW.md) | [Français](docs/i18n/README.fr.md) | [Español](docs/i18n/README.es.md)

A drop-in, file-based long-term memory starter kit for AI coding agents.

Agent Memory Starter gives a workspace a portable `.memory/` system for project context, decisions, conventions, glossary terms, and pending items. It is initialized with clean templates, so it does not include personal history, private project notes, or prior session logs.

## Install

Run the installer from the root of the workspace where you want memory enabled.

### curl

macOS and Linux:

```bash
curl -fsSL https://raw.githubusercontent.com/ianzhao001/agent-memory-starter/main/install.sh | bash
```

Windows PowerShell:

```powershell
curl.exe -fsSL https://raw.githubusercontent.com/ianzhao001/agent-memory-starter/main/install.ps1 -o install.ps1
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

The installer stops if `AGENTS.md`, `.memory/`, or `.gitignore` already exists. To overwrite existing files, run with `AGENT_MEMORY_STARTER_FORCE=1` on macOS/Linux or `-Force` on Windows.

### Homebrew

```bash
brew install ianzhao001/tap/agent-memory-starter
agent-memory-starter init
```

Homebrew distribution is the intended package-manager channel. The command above will work after the Homebrew tap is published.

### winget

```powershell
winget install ianzhao001.AgentMemoryStarter
agent-memory-starter init
```

winget distribution is the intended Windows package-manager channel. The command above will work after the package manifest is published to a winget source.

## What's Included

- `AGENTS.md`: workspace-level instructions that tell the agent how to load memory.
- `.memory/INDEX.md`: a lightweight index for discoverable memory entries.
- `.memory/rules.md`: rules for reading, writing, confirming, and maintaining memory.
- `.memory/profile.md`: an empty user preference template.
- `.memory/projects/current-project.md`: an empty current-project context template.
- `.memory/conventions/`: templates for stack, workflow, and coding conventions.
- `.memory/pending.md`: an empty pending-decision tracker.

## Privacy

This starter package is intentionally initialized. It does not contain personal memory, historical decisions, old pending items, or session journals.

## License

Apache License 2.0.
