# Agent Memory Starter

**语言：** [English](../../README.md) | 简体中文 | [繁體中文](README.zh-TW.md) | [Français](README.fr.md) | [Español](README.es.md)

一个可直接放入工作区的文件化长期记忆启动模板，适用于 AI 编程代理。

Agent Memory Starter 会为工作区提供一套可迁移的 `.memory/` 系统，用于保存项目上下文、决策记录、协作约定、术语表和待处理事项。这个启动模板已经初始化，不包含个人历史、私有项目记录或旧会话日志。

## 安装

请在你想启用记忆系统的工作区根目录运行安装命令。

### curl

macOS 和 Linux：

```bash
curl -fsSL https://raw.githubusercontent.com/ianzhao001/agent-memory-starter/main/install.sh | bash
```

Windows PowerShell：

```powershell
curl.exe -fsSL https://raw.githubusercontent.com/ianzhao001/agent-memory-starter/main/install.ps1 -o install.ps1
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

如果当前目录已经存在 `AGENTS.md`、`.memory/` 或 `.gitignore`，安装脚本会停止。若需要覆盖现有文件，macOS/Linux 可设置 `AGENT_MEMORY_STARTER_FORCE=1`，Windows 可使用 `-Force`。

### Homebrew

```bash
brew install ianzhao001/tap/agent-memory-starter
agent-memory-starter init
```

Homebrew 是计划中的包管理器分发渠道。对应 tap 发布后，上面的命令才会生效。

### winget

```powershell
winget install ianzhao001.AgentMemoryStarter
agent-memory-starter init
```

winget 是计划中的 Windows 包管理器分发渠道。包清单发布到 winget source 后，上面的命令才会生效。

## 包含内容

- `AGENTS.md`：工作区级代理规则，告诉代理如何加载记忆。
- `.memory/INDEX.md`：用于发现记忆条目的轻量索引。
- `.memory/rules.md`：记忆读取、写入、确认和维护规则。
- `.memory/profile.md`：空的用户偏好模板。
- `.memory/projects/current-project.md`：空的当前项目上下文模板。
- `.memory/conventions/`：技术栈、工作流和代码风格约定模板。
- `.memory/pending.md`：空的待决事项追踪表。

## 隐私

这个启动包是初始化模板，不包含个人记忆、历史决策、旧 pending 事项或会话日志。

## 许可证

Apache License 2.0。
