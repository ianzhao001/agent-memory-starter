# Agent Memory Starter

**語言：** [English](../../README.md) | [简体中文](README.zh-CN.md) | 繁體中文 | [Français](README.fr.md) | [Español](README.es.md)

一個可直接放入工作區的檔案化長期記憶啟動範本，適用於 AI 程式代理。

Agent Memory Starter 會為工作區提供一套可攜的 `.memory/` 系統，用於保存專案脈絡、決策紀錄、協作約定、術語表和待處理事項。這個啟動範本已經初始化，不包含個人歷史、私有專案筆記或舊會話日誌。

## 安裝

請在你想啟用記憶系統的工作區根目錄執行安裝命令。

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

如果目前目錄已經存在 `AGENTS.md`、`.memory/` 或 `.gitignore`，安裝腳本會停止。若需要覆蓋現有檔案，macOS/Linux 可設定 `AGENT_MEMORY_STARTER_FORCE=1`，Windows 可使用 `-Force`。

### Homebrew

```bash
brew install ianzhao001/tap/agent-memory-starter
agent-memory-starter init
```

Homebrew 是計畫中的套件管理器分發管道。對應 tap 發布後，上面的命令才會生效。

### winget

```powershell
winget install ianzhao001.AgentMemoryStarter
agent-memory-starter init
```

winget 是計畫中的 Windows 套件管理器分發管道。套件清單發布到 winget source 後，上面的命令才會生效。

## 包含內容

- `AGENTS.md`：工作區層級代理規則，告訴代理如何載入記憶。
- `.memory/INDEX.md`：用於發現記憶條目的輕量索引。
- `.memory/rules.md`：記憶讀取、寫入、確認和維護規則。
- `.memory/profile.md`：空的使用者偏好範本。
- `.memory/projects/current-project.md`：空的目前專案脈絡範本。
- `.memory/conventions/`：技術棧、工作流和程式碼風格約定範本。
- `.memory/pending.md`：空的待決事項追蹤表。

## 隱私

這個啟動包是初始化範本，不包含個人記憶、歷史決策、舊 pending 事項或會話日誌。

## 授權

Apache License 2.0。
