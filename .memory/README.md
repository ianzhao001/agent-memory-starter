---
id: mem-template-001
title: Agent Memory Starter 说明
tags: [memory, protocol, onboarding]
created: 2026-05-14
updated: 2026-05-14
status: active
supersedes: null
confidence: high
---

## 背景

Agent Memory Starter 使用 `.memory/` 作为文件化长期记忆系统，用于让 Codex 或其他 AI coding agents 在新会话或切换任务时恢复必要上下文。

本版本是初始化模板，不包含任何个人历史记忆、会话日志、用户画像或旧项目决策。

## 内容

### 使用协议

1. 新会话开始或切换任务前，Codex 必须先读取 `.memory/INDEX.md` 与 `.memory/rules.md`。
2. Codex 从用户输入抽取关键词，在 `INDEX.md` 中按 `title` 与 `tags` 匹配候选记忆。
3. Codex 默认只读取 Top-5 最相关正文，避免一次性加载整个 `.memory/`。
4. 回答开头应标注 `已加载记忆：<id1>, <id2>, ...`。
5. 新增或更新记忆后，必须同步更新 `.memory/INDEX.md`。

### 首次初始化建议

新工作区首次使用时，建议按顺序补齐：

1. `.memory/profile.md`：用户偏好与协作方式。
2. `.memory/projects/current-project.md`：当前项目目标、边界、技术栈和关键路径。
3. `.memory/conventions/`：代码、流程、依赖、测试、发布等约定。
4. `.memory/glossary.md`：项目术语。

写入用户偏好或项目决策前，Codex 必须先向用户确认。

### 记忆文件格式

所有 `.memory/**/*.md` 文件使用 YAML front matter：

```markdown
---
id: mem-YYYY-MM-DD-001
title: 记忆标题
tags: [tag-a, tag-b]
created: YYYY-MM-DD
updated: YYYY-MM-DD
status: active
supersedes: null
confidence: high
---
```

## 关联

- 规则：`.memory/rules.md`
- 索引：`.memory/INDEX.md`
- 用户画像模板：`.memory/profile.md`
- 当前项目模板：`.memory/projects/current-project.md`
