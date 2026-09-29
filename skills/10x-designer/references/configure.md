# Configure — make 10x-designer yours

Goal: adapt the toolkit to a team without forking the plugin. The plugin
stays generic; everything team-specific lives in a config the team owns,
inside their own project. A designer at any company runs this once and every
workflow speaks their language from then on.

## How customization works

Team context lives at **`.10x-designer/config.md`** in the project root
(committed to the team's repo, so the whole team shares it). Optionally,
**`.10x-designer/templates/`** holds team versions of any artifact template —
same filenames as the plugin's `assets/templates/`; a team file always wins
over the plugin's default.

Every workflow checks for this config before running (see SKILL.md universal
rules). Missing config is fine — workflows fall back to the generic
defaults. Config never *removes* a capability; it re-skins and re-anchors.

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
3. **Write `.10x-designer/config.md`**, show it, and point out the two or
   three defaults that changed most ("your crits will now include a Brand
   voice persona; briefs will use 'Design Doc' naming").
4. **Offer template overrides** only if they mentioned having house formats:
   copy the plugin template into `.10x-designer/templates/<name>.md`, apply
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
are the point.

### Improving a workflow with team knowledge

When someone wants to *teach* a workflow something ("our evals also check
motion guidelines"): add it to the config's per-workflow notes section —
each workflow reads its own notes and folds them into its process. This is
how a team extends a skill without editing the plugin. If the improvement is
genuinely universal (would help every company), suggest contributing it
upstream to the plugin repo instead.

## Precedence

1. What the user says in the current request (always wins)
2. `.10x-designer/templates/<name>.md` (team template override)
3. `.10x-designer/config.md` (team context and per-workflow notes)
4. Plugin defaults (generic)

## Deliverable

- `.10x-designer/config.md` created or updated (+ any template overrides)
- In-chat: what changed and which workflows it affects, standard footer.
  "Next" is usually running a workflow to feel the difference.
