---
id: mem-template-002
title: Codex 记忆读写规则
tags: [memory, rules, protocol]
created: 2026-05-14
updated: 2026-05-14
status: active
supersedes: null
confidence: high
---

## 背景

本文件是 Codex 在当前工作区读写长期记忆的强制规则。

## 内容

### 强制前置步骤

每次新会话开始或切换任务前，必须先读取 `.memory/INDEX.md` 与 `.memory/rules.md`，再按需读取相关条目。未读取不得作答。

### 会话开闭协议

- 每次会话开始时，在读取 `.memory/INDEX.md` 与 `.memory/rules.md` 后，必须检查 `.memory/pending.md`，并提醒用户当前未决事项。
- 每次会话结束前，必须维护 `.memory/pending.md`，新增本轮悬置事项，并关闭本轮已获用户确认、用户拒绝或超时关闭的事项。
- pending 事项只记录“已起草但未写入”或“等待用户审批”的事项。

### 读优先级

1. `.memory/profile.md`
2. 当前 `.memory/projects/current-project.md`
3. 相关 `.memory/conventions/*`
4. 相关 `.memory/decisions/*`

### 写时机

出现以下情形之一时，必须主动追加或更新记忆条目：

- 用户明确表达偏好，例如“我喜欢……”“不要……”“以后都……”。
- 做出影响后续工作的技术、产品或流程决策。
- 引入新术语、新依赖、新约定。
- 修正了之前记忆中的错误。

### 写入前确认

写入“用户偏好”或“决策”类记忆前，用一句话向用户确认，例如：

> 要把“默认使用 pnpm”写入 `.memory/conventions/stack.md` 吗？

用户确认后再写入正文，并同步更新 `.memory/INDEX.md`。

### 初始化模板处理

- 若某条记忆仍是模板内容，不得把它当作真实项目事实。
- 首次为新工作区写入真实记忆时，应优先更新模板条目，而不是追加大量重复条目。
- 分享记忆系统给他人时，只能分享初始化模板包，不能直接分享含真实用户画像、会话日志或项目历史的 `.memory/`。

### 诚实优先原则

- 当用户指令的某个步骤因状态已满足而无需实际操作时，必须如实声明“本步无需操作”并解释原因。
- 当某个指令因技术原因无法执行时，必须如实告知。
- 当对某条记忆的检索结果存疑时，必须如实报告而不是猜测填补。

### 冲突处理

当新记忆与旧记忆冲突时：

- 保留旧条目，不删除。
- 将旧条目的 `status` 改为 `deprecated`。
- 在旧条目正文顶部标注 `~~deprecated~~` 和停用原因。
- 在新条目 front matter 的 `supersedes` 填旧条目路径。

### 不可记内容

以下内容一律拒绝写入记忆：

- 密码。
- API key、token、secret、私钥。
- 身份证号、银行卡号等敏感身份或金融信息。
- 其他高风险个人敏感信息。

遇到这类内容时，提示用户改用环境变量、系统钥匙串或专门的密钥管理工具。

### INDEX 维护

`.memory/INDEX.md` 必须用表格维护所有记忆条目，字段为：

`id | title | path | tags | status | updated`

每次新增或更新条目，必须同步更新 `INDEX.md`。

### 轻量 RAG 检索

1. 接到任务后，从用户输入中抽取关键词，例如项目名、技术栈、动作词。
2. 在 `.memory/INDEX.md` 中按 `tags` 与 `title` 做字符串匹配。
3. 列出候选条目路径。
4. 默认只读取 Top-5 最相关条目的正文。
5. 回答开头注明：`已加载记忆：<id1>, <id2>, ...`。

### Skill 库衔接

工作区内每个 `SKILL.md` 顶部应加入：

```markdown
> 执行本 skill 前，先检索 `.memory/` 中 tag 包含 `<skill-name>` 的条目并加载。
```

当某个 skill 反复用到同一类规范，应把可复用片段抽到 `.memory/conventions/` 下，由 skill 引用。

## 关联

- README：`.memory/README.md`
- 索引：`.memory/INDEX.md`
- 工作流：`.memory/conventions/workflow.md`
