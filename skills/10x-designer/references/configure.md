# Configure — make 10x-designer yours

Goal: adapt the toolkit to a team or a whole company without forking the
plugin. The plugin stays generic; everything team-specific lives in config
the team owns. Someone runs this once and every workflow speaks their
language from then on.

## How customization works

Config has two layers, each a directory with the same shape: a `config.md`
(the team-config template) and an optional `templates/` folder holding team
versions of any artifact template, same filenames as the plugin's
`assets/templates/`.

| Layer | Location | Who it reaches | How it travels |
| --- | --- | --- | --- |
| **Shared** | `~/.10x-designer/`, or the directory in `$TENX_DESIGNER_HOME` | Every project the person opens | Like dotfiles: a setup script, a dotfiles repo, a device-management profile, or a clone of a company "design-config" repo with the variable pointing at it |
| **Project** | `.10x-designer/` in the project root | Everyone who clones that repo | Committed to the repo |

Project layers on top of shared, section by section. A section the project
config defines replaces the shared one; a section it omits is inherited.
Two sections merge instead: **Per-workflow notes** (shared notes first,
then project notes) and the **Figma templates** table (rows combine,
project wins on a name collision). Templates resolve by filename: project
`templates/` > shared `templates/` > plugin. A typical company keeps the
design system, brand voice, accessibility bar, and the default crit panel
in the shared layer, and lets each product repo add its product, metrics,
stakeholders, and workflow notes.

Every workflow reads both layers before running (see SKILL.md universal
rules). Missing config at either layer is fine — workflows fall back to
whatever the next layer or the generic defaults say. Config never
*removes* a capability; it re-skins and re-anchors.

## Process

### First-time setup

1. **Offer two paths:** a 5-minute interview, or "point me at your docs" —
   ingest whatever exists (design principles doc, design-system README,
   brand guide, review process page) and draft the config from it. Mixed is
   fine; drafting from docs and confirming beats a long questionnaire.
2. **Interview only for what matters.** The config template
   (`../assets/templates/team-config.md`) is the question list. Skip freely:
   an empty section costs nothing. Priorities, in order of impact:
   - Design system: name, where tokens/components live (code + Figma
     library), MCP servers available.
   - Crit panel: the real stakeholder roles and their known concerns
     (roles and concerns — never a real person's private style; names are
     fine if the team wants them).
   - Conventions: what a brief/card is called internally, required
     sections, where artifacts get filed, review cadence names.
   - Product context: the product, its users, the metrics that matter.
3. **Pick the layer.** Ask once: is this for *this project* or for *your
   whole team or company*? Project → `.10x-designer/config.md` in the
   project root. Shared → `~/.10x-designer/config.md` (or the
   `$TENX_DESIGNER_HOME` directory when set). When both exist, put only
   what differs for this product in the project file and leave the rest to
   inherit. Write the file, show it, and point out the two or three
   defaults that changed most ("your crits will now include a Brand voice
   persona; briefs will use 'Design Doc' naming").
4. **Offer template overrides** only if they mentioned having house formats:
   copy the plugin template into that layer's `templates/<name>.md`, apply
   their changes there.

### Registering a Figma template

"This is our crit template <link>" — at any time, config or not — goes into
the **Figma templates** table: name, link, and fill notes (read the node via
the Figma MCP and draft which layers receive content; confirm with the
user). From then on, workflows that create that artifact in Figma duplicate
this template. Details: the Figma templates section of `templates.md`.

### Updating ("our design system changed", "add a persona")

Read the existing config, apply the change surgically, show the diff.
Never regenerate the whole file — teams hand-edit these, and their edits
are the point. When both layers exist, change the layer that owns the
section: a design-system change belongs in shared, a new stakeholder for
one product belongs in that project. Say which file you touched.

### Rolling out to a team or company

The process that scales past one repo:

1. **Pilot on one product.** Run first-time setup from the team's own docs,
   then run two or three workflows on live work and add per-workflow notes
   for whatever keeps getting corrected.
2. **Split the config.** Move what is true company-wide — design system,
   brand voice, accessibility bar, the default crit panel, naming — into
   the shared layer, kept in a small "design-config" repo. Leave product,
   metrics, stakeholders, and product-specific notes in each project's
   `.10x-designer/`.
3. **Distribute the shared layer** the way the company already distributes
   dotfiles: a setup script that clones the design-config repo and sets
   `TENX_DESIGNER_HOME`, or a copy into `~/.10x-designer/`. Give it an
   owner (design ops or a staff designer) and change it by pull request.
4. **Distribute the plugin** per host — Claude Code project settings or
   managed settings, Copilot's enterprise-managed plugins, a Codex
   marketplace entry — and pin the version so upgrades are deliberate.
5. **Route improvements two ways.** Company-specific → the shared config.
   Universal (would help every company) → a pull request upstream.

### Improving a workflow with team knowledge

When someone wants to *teach* a workflow something ("our evals also check
motion guidelines"): add it to the config's per-workflow notes section —
each workflow reads its own notes and folds them into its process. This is
how a team extends a skill without editing the plugin. If the improvement is
genuinely universal (would help every company), suggest contributing it
upstream to the plugin repo instead.

## Precedence

1. What the user says in the current request (always wins)
2. `.10x-designer/templates/<name>.md` (project template override)
3. Shared `templates/<name>.md` (team or company template override)
4. `.10x-designer/config.md` (project context and per-workflow notes)
5. Shared `config.md` (team or company context and per-workflow notes)
6. Plugin defaults (generic)

## Deliverable

- `config.md` created or updated in the chosen layer (+ any template
  overrides), with the path stated
- In-chat: what changed and which workflows it affects, standard footer.
  "Next" is usually running a workflow to feel the difference.
