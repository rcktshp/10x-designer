# 10xdesigner — repository guide for coding agents

This repository is a plugin, not an application: it is Markdown and JSON
only, with no build, tests, or runtime. Everything an assistant executes
comes from the `10xdesigner` skill.

- `skills/10xdesigner/SKILL.md` — the skill: philosophy, routing table, and
  universal rules. `references/` holds one file per workflow;
  `references/knowledge/` is the UX knowledge base (start at `INDEX.md`);
  `assets/templates/` holds the artifact templates.
- `commands/` — Claude Code slash commands. Each one loads the skill and a
  reference file. They double as Codex custom prompts
  (`scripts/install-codex-prompts.sh`).
- `agents/` — Claude Code subagents. `com.github.copilot/agents/` holds the
  GitHub Copilot versions, `com.openai.codex/agents/` the Codex version.
- Manifests: `.claude-plugin/` (Claude Code), `plugin.json` (Agent Plugins
  1.0, used by Copilot CLI and VS Code), `.codex-plugin/` (Codex).
  Marketplaces: `.claude-plugin/marketplace.json`,
  `.github/plugin/marketplace.json`, `.agents/plugins/marketplace.json`.

When editing: keep the skill as the single source of truth and keep the
per-platform wrappers thin. Bump `version` in all four manifests together.
Validate with `claude plugin validate .`. Files are UTF-8 with no trailing
whitespace.
