# 10x-designer — repository guide for coding agents

This repository is a plugin, not an application: it is Markdown and JSON
only, with no build, tests, or runtime. Everything an assistant executes
comes from the `10x-designer` skill.

- `skills/10x-designer/SKILL.md` — the skill: philosophy, routing table, and
  universal rules. `references/` holds one file per workflow;
  `references/knowledge/` is the UX knowledge base (start at `INDEX.md`);
  `assets/templates/` holds the artifact templates.
- `commands/` — Claude Code slash commands. Each one loads the skill and a
  reference file. They double as Codex custom prompts
  (`scripts/install-codex-prompts.sh`).
- `agents/` — Claude Code subagents. `com.github.copilot/agents/` holds the
  GitHub Copilot versions, `com.openai.codex/agents/` the Codex version.
- Manifests: `.claude-plugin/` (Claude Code), `plugin.json` (Agent Plugins
  1.0, used by Copilot CLI, the Copilot app, and VS Code), `.codex-plugin/`
  (Codex).
  Marketplaces: `.claude-plugin/marketplace.json`,
  `.github/plugin/marketplace.json`, `.agents/plugins/marketplace.json`.

When editing: keep the skill as the single source of truth and keep the
per-platform wrappers thin. Validate with `claude plugin validate .`. Files
are UTF-8 with no trailing whitespace.

## Every change ships with

- A README update when anything user-visible changed: a workflow, a
  template, an install step, a host. `docs/10x-designer-overview.md` is the
  long-form tour and needs the same edit.
- A version bump in all four manifests (`.claude-plugin/plugin.json`,
  `.claude-plugin/marketplace.json`, `plugin.json`, `.codex-plugin/plugin.json`
  and the entry in `.github/plugin/marketplace.json`). Hosts detect updates
  by comparing that field, so a change without a bump never reaches
  installed users. The project is in alpha: versions are `0.x.y-alpha`
  until the 1.0 release. Patch for fixes, minor for new workflows, hosts,
  or anything that changes a command name or the config layout.
- A git tag `v<version>` on the merge commit in `main`.
