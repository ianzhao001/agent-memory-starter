强制前置步骤：每次新会话开始或切换任务前，必须先读取 .memory/INDEX.md 与 .memory/rules.md，再按需读取相关条目。未读取不得作答。

# 工作区代理规则

## 长期记忆

- 本工作区的长期记忆位于 `.memory/`。
- 先读 `.memory/INDEX.md` 与 `.memory/rules.md`，再按任务关键词读取 Top-5 相关条目。
- 回答开头标注 `已加载记忆：<id1>, <id2>, ...`。
- 新增或更新记忆后，同步更新 `.memory/INDEX.md`。
- 若记忆条目仍为初始化模板，先提醒用户它尚未包含当前工作区的真实偏好或项目上下文。

## Skill 衔接

工作区内若新增或更新 `SKILL.md`，在文件顶部加入：

```markdown
> 执行本 skill 前，先检索 `.memory/` 中 tag 包含 `<skill-name>` 的条目并加载。
```

可复用规范放入 `.memory/conventions/`，由 skill 引用。
