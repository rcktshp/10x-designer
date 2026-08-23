# 10xdesigner — Team Configuration

<!-- Lives at .10xdesigner/config.md in your project. Every 10xdesigner
workflow reads this before running. Delete any section you don't need —
empty sections cost nothing. Hand-editing is encouraged. -->

## Team & product

- **Team / org name:**
- **Product:** what it is, in one sentence
- **Primary users:**
- **Metrics that matter:** the 2–3 numbers the business watches
- **Logo / wordmark:** (path or Figma component, used on project cards)

## Design system

- **Name:**
- **Tokens live at:** (code path and/or Figma variables)
- **Components live at:** (code path and/or Figma library link)
- **MCP servers available:** (Figma, internal design-system server, …)
- **Accessibility bar:** (default: WCAG AA)

## Figma templates

<!-- The team's canonical Figma templates. Register one by sharing its link
("this is our crit template") — any workflow that creates that artifact in
Figma will duplicate the registered template and fill it, instead of
building from scratch. "Fill notes" tell Claude which layers/sections get
content. -->

| Template | Figma link (file + node) | Fill notes |
| --- | --- | --- |
| project-card | | |
| crit-page | | |
| design-review-deck | | |
| brief | | |

## Crit panel

<!-- The roles that show up in your real reviews. Used by the crit workflow
and the design-critic agent instead of the generic panel. Describe roles
and their known concerns — not any person's private style. -->

| Persona / role | Reliably asks about |
| --- | --- |
| | |

## Conventions

- **Brief is called:** (e.g. "Design Doc", "Design Brief") · required sections:
- **Project card is called:** · where cards live:
- **Review cadence names:** (e.g. "Design Crit Tuesdays", "Product Review")
- **Where artifacts get filed:** (repo dir, Drive folder, wiki)
- **Naming pattern for files:** (default: `<project>-<workflow>-v<N>`)
- **Writing voice:** (e.g. terse and metric-led; friendly and plain)

## Per-workflow notes

<!-- Teach any workflow team-specific behavior. Each workflow reads its own
subsection and folds these into its process. -->

### brief
### project-card
### wireframe
### prototype
### sprint
### teardown
### crit
### design-eval
### design-to-code
### templates
