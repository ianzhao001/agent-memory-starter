# Agent Memory Starter

A drop-in, file-based long-term memory starter kit for AI coding agents.

Agent Memory Starter gives a workspace a portable `.memory/` system for project context, decisions, conventions, glossary terms, and pending items. It is initialized with clean templates, so it does not include personal history, private project notes, or prior session logs.

## Descriptions

**English**  
A drop-in, file-based long-term memory starter kit for AI coding agents. Add it to any workspace to preserve project context, decisions, conventions, and pending items across sessions.

**简体中文**  
一个可直接放入工作区的文件化长期记忆启动模板，适用于 AI 编程代理。它可以帮助代理在多次会话之间保留项目上下文、决策记录、协作约定和待处理事项。

**繁體中文**  
一個可直接放入工作區的檔案化長期記憶啟動範本，適用於 AI 程式代理。它可以協助代理在多次會話之間保留專案脈絡、決策紀錄、協作約定與待處理事項。

**Français**  
Un kit de démarrage prêt à l'emploi pour ajouter une mémoire longue durée, basée sur des fichiers, aux agents de programmation IA. Ajoutez-le à n'importe quel espace de travail pour conserver le contexte du projet, les décisions, les conventions et les éléments en attente entre les sessions.

**Español**  
Un kit inicial, basado en archivos y listo para usar, que añade memoria a largo plazo a los agentes de programación con IA. Agrégalo a cualquier espacio de trabajo para conservar el contexto del proyecto, las decisiones, las convenciones y los elementos pendientes entre sesiones.

## Command-Line Install

Run this from the root of the workspace where you want memory enabled:

```bash
tmp_dir="$(mktemp -d)"
git clone --depth 1 https://github.com/ianzhao001/agent-memory-starter.git "$tmp_dir/agent-memory-starter"
cp -R "$tmp_dir/agent-memory-starter/AGENTS.md" \
  "$tmp_dir/agent-memory-starter/.memory" \
  "$tmp_dir/agent-memory-starter/.gitignore" \
  .
rm -rf "$tmp_dir"
```

If your workspace already has `AGENTS.md`, `.memory/`, or `.gitignore`, review and merge those files manually instead of overwriting them.

## Manual Install

1. Open the repository on GitHub.
2. Choose **Code** -> **Download ZIP**.
3. Unzip the archive.
4. Copy `AGENTS.md`, `.memory/`, and `.gitignore` into your workspace root.
5. Start a new agent session in that workspace.
6. Ask the agent to initialize the templates with your project context.

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
