# 10xdesigner

An AI design toolkit for the full product design lifecycle.

**Created and developed by [Diego Martins](https://diegomartins.com).**

Built on one belief: **AI is a teammate, not a vending machine.** Every
workflow asks the questions that matter, states its assumptions, offers
options at real decision points, and closes the loop on what was and wasn't
done (the 4D loop: Delegation, Description, Discernment, Diligence).

## What's inside

**10xdesigner is the orchestrator.** `/10xdesigner:start` greets you with
*"Hey! Where should we start?"* and routes you to the right
workflow — or takes your task directly (`/10xdesigner:start crit my checkout
flow`). Already know what you need? Call the workflow itself:
`/10xdesigner:project-card`, `/10xdesigner:prototype`, …

| Workflow | Direct command | What you get |
| --- | --- | --- |
| Prototype | `/10xdesigner:prototype` | Single-file interactive hi-fi HTML prototype |
| Wireframe | `/10xdesigner:wireframe` | 3 structural options, lo-fi, with a recommendation |
| Design Brief | `/10xdesigner:brief` | Design brief — problem framing doc |
| Design Sprint | `/10xdesigner:sprint` | Compressed map → sketch → decide → prototype → test |
| Project Card | `/10xdesigner:project-card` | Design-review framing card, built in Figma |
| Teardown | `/10xdesigner:teardown` | Competitive analysis → steal / adapt / avoid |
| Design Crit | `/10xdesigner:crit` | Multi-persona stakeholder pre-feedback |
| Design Eval | `/10xdesigner:design-eval` | Nielsen scorecard + cognitive walkthrough + a11y |
| Templates | `/10xdesigner:templates` | Pre-filled artifact templates (9 in the library) |
| Design-to-Code | `/10xdesigner:design-to-code` | Figma ⇄ code bridge and drift audit |

Plain conversation works too — "create a project card in Figma for my Friday
review" triggers the right workflow without any command.

## Make it yours

The plugin is deliberately generic — no company branding, nothing
proprietary. `/10xdesigner:configure` adapts it to your team without forking
anything: it writes `.10xdesigner/config.md` into *your* project (commit it
so the team shares it) with your design system, real crit personas, naming
conventions, writing voice, and per-workflow notes that teach any workflow
team-specific behavior. Drop house versions of any artifact template into
`.10xdesigner/templates/` and they override the plugin's defaults.
Precedence: your request > your templates > your config > plugin defaults.

Figma templates work the same way: share your team's crit page, review
deck, or card template link once ("this is our crit template") and it's
registered in the config — from then on, "create a crit page in my Figma"
duplicates and fills *your* template instead of building generic.

Improvements that would help everyone (not just your team) are welcome as
pull requests to this repo.

**One agent** (`agents/design-critic.md`): an independent review panel that
crits work without authorship bias — useful when the design was produced in
the same session.

**A UX knowledge layer** (`skills/10xdesigner/references/knowledge/`):
a synthesized design knowledge base across 14 clusters — core principles,
foundational named heuristics, visual/typography/dataviz, interaction
patterns, accessibility, information architecture, content/writing, mobile,
onboarding, behavior/persuasion, systems/service patterns, research/testing,
process/strategy, and specialized domains (kids, healthcare, sustainability,
industrial). Each cluster holds `principles.md` (the why), `heuristics.md`
(if X → problem Y → fix Z), and `critique.md` (scoreable checks) — start at
`knowledge/INDEX.md`, which routes a task to the right cluster(s) and warns
against loading more than the task needs. Evals, crits, and wireframes
ground their findings here, so feedback argues from established UX
knowledge instead of taste.

The skill also triggers naturally without commands: "mock up a checkout flow",
"tear down Linear's onboarding", "write a brief for search v2".

## Install

10xdesigner ships in one repo for three hosts. The skill (workflows, knowledge
base, templates) is identical everywhere; only the entry points differ.

**Claude Code**

```
/plugin marketplace add rcktshp/10xdesigner
/plugin install 10xdesigner
```

You get the `/10xdesigner:*` slash commands, the skill, and the
`design-critic` subagent.

**GitHub Copilot CLI**

```
copilot plugin marketplace add rcktshp/10xdesigner
copilot plugin install 10xdesigner@10xdesigner
```

You get the skill (triggers from plain conversation) and two custom agents:
`10xdesigner`, the front door that asks where to start, and `design-critic`.
Copilot CLI has no user-defined slash commands, so pick the agent
(`/agent`, or `copilot --agent 10xdesigner`) or just describe the task.

**OpenAI Codex**

```
codex plugin marketplace add rcktshp/10xdesigner
codex plugin add 10xdesigner@10xdesigner
```

You get the skill: mention it as `$10xdesigner` or describe the task. Two
optional extras, because Codex does not install them from a plugin:

- Slash commands: `sh scripts/install-codex-prompts.sh` copies each
  workflow into `~/.codex/prompts/` as `/prompts:10xdesigner-<name>`.
- The `design-critic` agent: copy `com.openai.codex/agents/design-critic.toml`
  to `~/.codex/agents/`.

**Any other host** that reads Agent Skills can use `skills/10xdesigner`
directly; the root `plugin.json` follows the Agent Plugins 1.0 standard.

Or point straight at this directory from a local clone.

### Staying up to date

Releases are tagged `v<version>` and bump the `version` field in every
manifest; that field is what each host compares, so a plain `git pull` on
this repo is not an update. Hosts pull, nothing is pushed:

- **Claude Code:** `claude plugin update 10xdesigner`, or turn on
  **Enable auto-update** for this marketplace under `/plugin` →
  Marketplaces and Claude Code refreshes it in the background.
- **Copilot CLI:** `copilot plugin update 10xdesigner` (or `--all`), or
  set `autoUpdate: true` on the marketplace entry in your user settings.
- **Codex:** `codex plugin marketplace upgrade`, then re-add the plugin.
  Re-run `scripts/install-codex-prompts.sh` if you installed the prompts.

Optional: connect the [Figma MCP server](https://www.figma.com/) for full
Design-to-Code fidelity; everything else runs with core tools only.

## Learn more

[`docs/10xdesigner-overview.md`](docs/10xdesigner-overview.md) is the full
tour — every workflow, the knowledge layer, configuration, and install for
each host — written to be shared with a team or in a post.

## Author & license

Created and developed by **Diego Martins** —
[diegomartins.com](https://diegomartins.com). MIT licensed: free to use,
adapt, and share, keeping the copyright notice intact.
