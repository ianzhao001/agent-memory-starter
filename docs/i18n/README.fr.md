# Agent Memory Starter

**Langue :** [English](../../README.md) | [简体中文](README.zh-CN.md) | [繁體中文](README.zh-TW.md) | Français | [Español](README.es.md)

Un kit de démarrage prêt à l'emploi pour ajouter une mémoire longue durée, basée sur des fichiers, aux agents de programmation IA.

Agent Memory Starter ajoute à un espace de travail un système `.memory/` portable pour conserver le contexte du projet, les décisions, les conventions, le glossaire et les éléments en attente. Le kit est initialisé avec des modèles propres : il ne contient pas d'historique personnel, de notes de projet privées ni d'anciens journaux de session.

## Installation

Exécutez l'installation depuis la racine de l'espace de travail où vous voulez activer la mémoire.

### curl

macOS et Linux :

```bash
curl -fsSL https://raw.githubusercontent.com/ianzhao001/agent-memory-starter/main/install.sh | bash
```

Windows PowerShell :

```powershell
curl.exe -fsSL https://raw.githubusercontent.com/ianzhao001/agent-memory-starter/main/install.ps1 -o install.ps1
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

L'installateur s'arrête si `AGENTS.md`, `.memory/` ou `.gitignore` existe déjà. Pour écraser les fichiers existants, utilisez `AGENT_MEMORY_STARTER_FORCE=1` sur macOS/Linux ou `-Force` sur Windows.

### Homebrew

```bash
brew install ianzhao001/tap/agent-memory-starter
agent-memory-starter init
```

Homebrew est le canal de distribution prévu pour ce gestionnaire de paquets. La commande ci-dessus fonctionnera une fois le tap Homebrew publié.

### winget

```powershell
winget install ianzhao001.AgentMemoryStarter
agent-memory-starter init
```

winget est le canal de distribution Windows prévu. La commande ci-dessus fonctionnera une fois le manifeste publié dans une source winget.

## Contenu

- `AGENTS.md` : instructions de l'espace de travail qui indiquent à l'agent comment charger la mémoire.
- `.memory/INDEX.md` : index léger des entrées de mémoire.
- `.memory/rules.md` : règles de lecture, d'écriture, de confirmation et de maintenance de la mémoire.
- `.memory/profile.md` : modèle vide pour les préférences utilisateur.
- `.memory/projects/current-project.md` : modèle vide pour le contexte du projet courant.
- `.memory/conventions/` : modèles pour la pile technique, le flux de travail et les conventions de code.
- `.memory/pending.md` : suivi vide des décisions en attente.

## Confidentialité

Ce kit de démarrage est volontairement initialisé. Il ne contient aucune mémoire personnelle, décision historique, ancien élément en attente ni journal de session.

## Licence

Apache License 2.0.
