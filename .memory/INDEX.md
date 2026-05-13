---
id: mem-index
title: 长期记忆索引
tags: [memory, index, rag]
created: 2026-05-14
updated: 2026-05-14
status: active
supersedes: null
confidence: high
---

# 长期记忆索引

| id | title | path | tags | status | updated |
|---|---|---|---|---|---|
| mem-template-001 | Agent Memory Starter 说明 | `.memory/README.md` | memory, protocol, onboarding | active | 2026-05-14 |
| mem-template-002 | Codex 记忆读写规则 | `.memory/rules.md` | memory, rules, protocol | active | 2026-05-14 |
| mem-template-003 | 用户画像初始化模板 | `.memory/profile.md` | profile, preference, template | active | 2026-05-14 |
| mem-template-004 | 当前工作区项目记忆模板 | `.memory/projects/current-project.md` | project, template, current-workspace | active | 2026-05-14 |
| mem-template-005 | 代码风格与注释约定模板 | `.memory/conventions/coding-style.md` | convention, coding-style, template | active | 2026-05-14 |
| mem-template-006 | 协作流程与提交约定模板 | `.memory/conventions/workflow.md` | convention, workflow, git, template | active | 2026-05-14 |
| mem-template-007 | 默认技术栈与依赖管理约定模板 | `.memory/conventions/stack.md` | convention, stack, template | active | 2026-05-14 |
| mem-template-008 | ADR：采用文件化长期记忆系统 | `.memory/decisions/ADR-initial-memory-system.md` | decision, adr, memory | active | 2026-05-14 |
| mem-template-009 | 项目术语表初始化模板 | `.memory/glossary.md` | glossary, terminology, template | active | 2026-05-14 |
| mem-template-010 | 待用户决策事项清单 | `.memory/pending.md` | memory, pending, decision, workflow | active | 2026-05-14 |

## 维护说明

- 每次新增或更新条目，必须同步更新本表。
- 检索时先在本表做字符串匹配，再读取 Top-5 相关正文。
- 不要把敏感信息写入索引或正文。
- 本索引为初始化模板，不包含任何个人历史记忆。
