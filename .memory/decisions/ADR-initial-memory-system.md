---
id: mem-template-008
title: ADR：采用文件化长期记忆系统
tags: [decision, adr, memory]
created: 2026-05-14
updated: 2026-05-14
status: active
supersedes: null
confidence: high
---

## 背景

Agent Memory Starter 需要一种透明、可审计、可迁移的长期记忆方案，帮助 Codex 或其他 AI coding agents 在新会话或切换任务时恢复必要上下文。

## 内容

### 决策

采用 `.memory/` 文件化长期记忆系统，使用 Markdown + YAML front matter 存储条目，使用 `.memory/INDEX.md` 作为轻量检索入口。

### 原因

- 可直接版本化与审阅。
- 不依赖外部数据库或私有服务。
- 方便用户手动新增、停用和查询。
- 适合 Codex 在新会话中先读索引，再按需深读。

### 后果

- 需要 Codex 和用户共同维护索引。
- 检索能力基于标题与标签字符串匹配，不具备向量语义检索。
- 写入用户偏好和决策前必须确认，降低误记风险。

## 关联

- 规则：`.memory/rules.md`
- 索引：`.memory/INDEX.md`
