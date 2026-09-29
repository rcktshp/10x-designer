# 10x-designer: an AI design toolkit for the whole product design lifecycle

10x-designer is an open-source plugin that turns a coding agent — Claude
Code, GitHub Copilot CLI, or OpenAI Codex — into a design teammate. It
covers the full arc of product design work: framing a problem, exploring
structure, building something clickable, pressure-testing it with the
stakeholders who will actually review it, and moving between Figma and code.

It is written entirely in Markdown. There is no server, no account, and
nothing to build. Install it, ask *"where should we start?"*, and go.

- Repo: <https://github.com/rcktshp/10x-designer>
- License: MIT
- Author: [Diego Martins](https://diegomartins.com)

---

## The idea: a teammate, not a vending machine

Most AI design tooling works like a vending machine. You compose the
perfect prompt, press the button, and get one take-it-or-leave-it output.
If it's wrong, you start over.

10x-designer is built on a different belief: **AI is a teammate.** A teammate
asks the one or two questions that actually change the work, restates the
task before doing it, says what they assumed, offers real options at real
decision points, and pushes back when the brief is wrong.

Every workflow follows the same four-step loop, called the **4D loop**:

| Step | What it means in practice |
| --- | --- |
| **Delegation** | Agree on what the AI owns end-to-end and what needs the designer's judgment. Say which is which. |
| **Description** | Restate the task before executing, so misunderstandings surface while they're cheap. |
| **Discernment** | Self-review the output against the brief before presenting it. Name the weakest part rather than making the designer find it. |
| **Diligence** | Close the loop: say what was *not* done, what was assumed, and what still needs a human decision. |

And every workflow ends with the same three-line footer, so you always know
where you stand:

```
**Done:** what was produced, in one line
**Not done / assumed:** the honest list
**Next:** the single most useful next step
```

---

## What's inside

### Ten workflows

Each workflow is a "golden path": a repeatable way to get from a rough ask
to a shippable design artifact, with the judgment calls made explicit.
Each has a direct command in Claude Code, and triggers from plain
conversation on every host ("mock up a checkout flow", "tear down Linear's
onboarding", "write a brief for search v2").

| Workflow | Command | What you get |
| --- | --- | --- |
| Prototype | `/10x-designer:prototype` | A single-file, interactive, hi-fi HTML prototype |
| Wireframe | `/10x-designer:wireframe` | Three structurally different lo-fi options with a recommendation |
| Design Brief | `/10x-designer:brief` | A review-grade problem-framing document |
| Design Sprint | `/10x-designer:sprint` | Map → sketch → decide → prototype → test kit, compressed |
| Project Card | `/10x-designer:project-card` | A design-review framing card, built in Figma |
| Teardown | `/10x-designer:teardown` | Competitive analysis that ends in steal / adapt / avoid |
| Design Crit | `/10x-designer:crit` | Multi-persona stakeholder feedback before the real review |
| Design Eval | `/10x-designer:design-eval` | Nielsen scorecard, cognitive walkthrough, accessibility check |
| Templates | `/10x-designer:templates` | Nine pre-filled artifact templates |
| Design-to-Code | `/10x-designer:design-to-code` | Figma ⇄ code bridge and drift audit |

Plus **Configure** (`/10x-designer:configure`), which adapts everything above
to your team, and **Start** (`/10x-designer:start`), the front door that
routes you to the right one.

#### Prototype: rapid, hi-fi, interactive

For when you need something a stakeholder can click *today*. It asks at
most two questions (which flow, and who sees it), restates the bet as
"this prototype exists to prove ___", then builds one self-contained HTML
file: inline CSS and JS, no build step, opens from a double-click. Real
copy and realistic data, design-system tokens if you have them, motion only
where it carries meaning, and dead ends stubbed visibly so testers can tell
"out of scope" from "broken". It self-crits before handing over. If the
real question turns out to be structural, it says so and recommends
wireframes instead.

#### Wireframe: structure fast, options first

For exploring information architecture before anyone falls in love with
pixels. It asks for the flow (start state, end state, steps), then produces
three genuinely different structures for the key screens, each with a
one-line thesis ("A: search-first, B: browse-first, C: task-first"). All
options render on a single grayscale HTML page with real labels and
numbered annotations, deliberately low-fi so the conversation stays on
structure. It ends with a recommendation, because a teammate has an
opinion.

#### Design Brief: frame before you draw

Most bad designs are good solutions to unframed problems. This workflow
produces a brief that aligns design, PM, engineering, and leadership, and
that survives an executive review. Two tiers: a full brief for roadmap
fights and cross-team alignment, or a lite brief for framing a sprint. It
interviews briefly, drafts from a structured template (metric-first TLDR,
belief statement, business problem and people problem at two altitudes, a
falsifiable hypothesis, before → after, guiding principles with teeth, an
assumptions-and-validation table), then stress-tests its own draft before
you see it. Briefs are living documents: ask for an update and it refreshes
the validation table and changelog rather than rewriting.

#### Design Sprint: problem to tested direction, compressed

The useful core of a design sprint with the mechanical parts compressed.
Choose solo-compressed (designer plus AI, hours) or facilitated (a real
team, AI prepares materials). Five stages, each producing an artifact:
**Map** the challenge as a sprint question; **Sketch** four to six divergent
concepts including one conservative, one ambitious, one weird; **Decide**
with a scoring matrix and a recommended winner; **Prototype** the winner via
the prototype workflow; **Test** with a five-user test kit (screener, task
script, results grid, and a debrief that forces persevere / pivot / kill).

#### Project Card: frame a project for design review

The card that travels with a project into review. It answers, before anyone
opens the deck: why this project exists, what design is betting, and what
feedback the room is being asked for. It mines existing briefs and threads
so you never re-answer what's already written, drafts the answers in chat
where edits are cheap, then builds the card in Figma through the Figma MCP,
using your registered team template if you have one. The part it refuses to
let you leave generic is the feedback contract: "feedback needed" specific
enough to act on, and "not needed" fencing off what's already decided.

#### Teardown: learn from someone else's shipped decisions

A structured analysis of a competitor's flow that produces decisions, not
screenshots with captions. It scopes to a flow and a lens ("Linear's
onboarding through first issue, lens: empty states"), gathers evidence
labelled by strength (observed > documented > inferred), walks the flow step
by step, and extracts three to seven named design moves with their
mechanics, costs, and transferability. It ends with steal / adapt / avoid
lists. Multi-competitor mode compares up to four in one matrix.

#### Design Crit: the review before the review

Most crit pain is predictable: PM asks about scope, engineering asks about
edge cases, legal asks about data. This workflow rehearses it. It takes
whatever exists (files, screenshots, a Figma link, a description), casts
three to five personas from a panel (design director, PM, engineer,
researcher, legal/privacy, accessibility, marketing), arms them with the
knowledge layer, and runs three rounds: gut reactions, the hardest questions
each persona would ask (with suggested answers or an honest "gap"), and a
synthesis with a ranked fix list: blockers, should-fix, polish. Configure it
with your real stakeholders' roles and concerns and it rehearses *your*
review.

#### Design Eval: objective scoring, not vibes

Where the crit is voices, the eval is a rubric. It scores the design
against Nielsen's ten heuristics (0–4, with evidence pointing at a specific
element, or "not assessable" rather than a guess), runs a cognitive
walkthrough of your one to three critical tasks using the four classic
questions, and does an accessibility spot-check against WCAG AA (contrast,
focus, targets, labels, one keyboard-only pass). Findings are grounded in
the knowledge layer with principle IDs and thresholds. Re-eval mode diffs a
revision against the previous report and calls out regressions first.

#### Templates: the artifact library

Nine ready-to-fill templates, delivered pre-filled from session context
rather than blank: design brief, project card, design one-pager, crit
report, eval scorecard, user test kit, competitive teardown, design decision
record, and design handoff note. Teams can drop house versions into their
project and they override the defaults. The same module manages a registry
of your team's Figma templates, so "create a crit page in my Figma"
duplicates and fills *your* template instead of building generic.

#### Design-to-Code: the Figma bridge, both directions

One invariant: the design system is the source of truth, not the pixels and
not the code. **Figma → code** reads the design via MCP, produces a mapping
table first (exact match / needs a variant / gap), then generates on-system
code with real states. **Code → Figma** inventories what the code truly
renders and mirrors it into Figma with matching names and variant axes, or
produces a spec kit when there is no write access. **Audit mode** answers
"are Figma and code in sync?" with a drift report and a fix direction per
item.

### A knowledge layer, so feedback argues from principles

Under the hood is a synthesized UX knowledge base across **14 clusters**:
core principles, foundational named heuristics (Nielsen, Shneiderman, Fitts,
Hick, Gestalt, and more), visual/typography/data viz, interaction patterns,
accessibility and inclusive design, information architecture, content and
UX writing, mobile and responsive, onboarding, behavior and persuasion,
systems and service patterns, research and testing, process and strategy,
and specialized domains (kids, healthcare, sustainability, industrial).

Each cluster holds three files: `principles.md` (the why), `heuristics.md`
(if X → problem Y → fix Z), and `critique.md` (scoreable checks with
severity). A router index maps any task to the right clusters and enforces
loading discipline: never load everything, only what the task needs. Evals,
crits, and wireframes ground their judgments here and cite the principle,
so feedback comes from established UX knowledge instead of taste.

### An independent design critic

A separate `design-critic` agent runs the crit workflow as a fresh reviewer
with no authorship stake. It matters most when the design was produced in
the same session: an agent that just built something is a poor judge of it.

### Universal rules

A few rules hold across every workflow:

- **Load the team config first**, if one exists.
- **Anchor in the design system.** Never invent a parallel visual language
  when one exists; without one, stay neutral and token-ready.
- **Real content over lorem ipsum.** Fake-but-real copy exposes layout
  problems that placeholder text hides.
- **Accessibility is not a pass.** Contrast, focus order, touch targets,
  and labels are checked in every visual workflow, not just evals.
- **Assumptions as a block, not inline**, so they can be scanned in ten
  seconds.
- **Predictable file names:** `<project>-<workflow>-v<N>`.

---

## Make it yours

The plugin is deliberately generic: no company branding, nothing
proprietary. Configuration lives in *your* project, not in the plugin, so
you never fork it.

`/10x-designer:configure` (or "configure 10x-designer for my team") writes
`.10x-designer/config.md` into your repo. Commit it and the whole team
shares it. It captures:

- **Design system:** name, where tokens and components live in code and in
  Figma, available MCP servers.
- **Crit panel:** your real stakeholder roles and their known concerns.
- **Conventions:** what a brief or card is called internally, required
  sections, where artifacts get filed, review cadence names.
- **Product context:** the product, its users, the metrics that matter.
- **Per-workflow notes:** teach any workflow team-specific behavior ("our
  evals also check motion guidelines") without editing the plugin.

Drop house versions of any template into `.10x-designer/templates/` and they
override the defaults. Share a Figma template link once ("this is our crit
template") and it's registered; from then on, workflows that build that
artifact in Figma duplicate and fill your template.

Precedence, highest first: your request > your templates > your config >
plugin defaults. Config never removes a capability; it re-skins and
re-anchors.

---

## Install

One repo serves three hosts. The skill — workflows, knowledge base,
templates — is identical everywhere; only the entry points differ.

### Claude Code

```
/plugin marketplace add rcktshp/10x-designer
/plugin install 10x-designer
```

You get the `/10x-designer:*` slash commands, the skill, and the
`design-critic` subagent. `/10x-designer:start` greets you with *"Hey! Where
should we start?"* and clickable options.

### GitHub Copilot CLI

```
copilot plugin marketplace add rcktshp/10x-designer
copilot plugin install 10x-designer@10x-designer
```

You get the skill (it triggers from plain conversation) and two custom
agents: `10x-designer`, the front door that asks where to start, and
`design-critic`. Copilot CLI has no user-defined slash commands, so select
the agent (`/agent`, or `copilot --agent 10x-designer`) or just describe the
task.

### OpenAI Codex

```
codex plugin marketplace add rcktshp/10x-designer
codex plugin add 10x-designer@10x-designer
```

You get the skill: mention it as `$10x-designer` or describe the task. Two
optional extras, because Codex does not install them from a plugin:

- **Slash commands:** `sh scripts/install-codex-prompts.sh` copies each
  workflow into `~/.codex/prompts/` as `/prompts:10x-designer-<name>`.
- **The critic agent:** copy `com.openai.codex/agents/design-critic.toml`
  to `~/.codex/agents/`.

### Anything else

Any host that reads Agent Skills can use `skills/10x-designer` directly, and
the root `plugin.json` follows the Agent Plugins 1.0 open standard.

Optional on every host: connect the Figma MCP server for full project-card
and Design-to-Code fidelity. Everything else runs with core tools only.

### Staying up to date

Hosts pull; nothing is pushed. Each release bumps the `version` field in the
manifests, and that field is what your host compares.

- **Claude Code:** `claude plugin update 10x-designer`, or enable
  auto-update for the marketplace under `/plugin` → Marketplaces.
- **Copilot CLI:** `copilot plugin update 10x-designer`, or set
  `autoUpdate: true` on the marketplace in your user settings.
- **Codex:** `codex plugin marketplace upgrade`, then re-add the plugin.

---

## A first session

```
you   › /10x-designer:start

10xd  › Hey! Where should we start?
        🧭 Frame it · 🎨 Explore it · 🔍 Pressure-test it · 🚀 Ship it

you   › Pressure-test it → Design crit

10xd  › What should I crit, and who will be in the real review?

you   › checkout-prototype-v2.html — my design director, the payments PM,
        and the tech lead.

10xd  › [reads the prototype and the brief, casts three personas,
         runs reactions → hardest questions → synthesis]

        Blockers (2) · Should-fix (4) · Polish (3)
        The question most likely to derail the review: "What happens when
        the saved card is expired?"

        ---
        Done: crit of checkout-prototype-v2 against the v1 brief
        Not done / assumed: no mobile pass; assumed guest checkout is out of scope
        Next: fix the two blockers, then /10x-designer:design-eval before Friday
```

Some prompts that work without any command:

- "Mock up a settings page with three structural options."
- "Write a lite brief for search v2; we think it lifts conversion 3%."
- "Tear down Notion's onboarding through first page created, lens: empty
  states."
- "Score this Figma frame against Nielsen and walk through 'add a
  teammate'."
- "Are our Figma buttons and code buttons in sync?"
- "Create a project card in Figma for Friday's review."

---

## Repository layout

```
skills/10x-designer/
  SKILL.md                     the skill: philosophy, routing, universal rules
  references/<workflow>.md     one file per workflow
  references/knowledge/        the UX knowledge base, 14 clusters
  assets/templates/            the artifact templates
commands/                      Claude Code slash commands (also Codex prompts)
agents/                        Claude Code subagents
com.github.copilot/agents/     GitHub Copilot agents
com.openai.codex/agents/       Codex agent
.claude-plugin/  plugin.json  .codex-plugin/     manifests, one per host
```

The skill is the single source of truth; every host wrapper is thin.

---

## Contributing

Team-specific behavior belongs in your `.10x-designer/config.md`, not in a
fork. Improvements that would help every team — a sharper heuristic, a
better template, a missing workflow — are welcome as pull requests. The
repo's `AGENTS.md` explains the layout and the release checklist.

MIT licensed: free to use, adapt, and share, keeping the copyright notice
intact. Created and developed by [Diego Martins](https://diegomartins.com).
