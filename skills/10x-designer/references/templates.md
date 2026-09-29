# Templates — the artifact library

Goal: give the designer a ready-to-fill starting point for any common design
artifact, consistent with the rest of this toolkit, in seconds. Templates are
how one designer's good format becomes the whole team's default.

## Process

1. **Match the ask to a template.** The library lives in `../assets/templates/`:

   | Template | File | Use when |
   | --- | --- | --- |
   | Design brief | `design-brief.md` | Framing a problem before design work |
   | Project card | `project-card.md` | Pitching or tracking a project on one page |
   | Design crit report | `crit-report.md` | Writing up a crit (live or AI-run) |
   | Design eval scorecard | `eval-scorecard.md` | Heuristic eval / walkthrough results |
   | User test kit | `user-test-kit.md` | Planning a 5-user test |
   | Competitive teardown | `teardown.md` | Analyzing a competitor flow |
   | Design decision record | `decision-record.md` | Capturing a contested design decision |
   | Design handoff note | `handoff-note.md` | Handing a design to engineering |
   | Design one-pager | `design-one-pager.md` | Sharing a design broadly — problem, idea, visual, next — lighter than a brief, wider than a review card |

2. **Deliver filled, not blank.** When context exists (a project discussed in
   session, a linked doc, a repo), pre-fill every section you can and mark the
   rest `TBD — needs <who>`. A blank template is a form; a pre-filled one is a
   head start. Only hand over a blank copy when explicitly asked for "the
   blank template".
3. **Adapt, don't fork silently.** Teams may rename sections or add fields —
   follow their existing docs' conventions when visible. If you change a
   template's structure for a good reason, say what you changed and why, so
   the improvement can flow back into the library.
4. **No match? Compose one.** For an artifact with no template (e.g. a
   research plan), draft a structure in the same voice — short sections, hard
   word budgets where padding is a risk, an "Assumptions & open questions"
   block at the end — and offer to save it into the library for next time.

## Figma templates — register once, instantiate forever

Teams keep artifact templates in Figma too: a crit page, a design review
deck, a card frame. This module manages that registry so "create a crit page
in my Figma" lands on *their* template, not a generic build.

**Register.** When someone shares a Figma template ("this is our crit
template"), add a row to the **Figma templates** table in
`.10x-designer/config.md`: template name, the file + node link, and fill
notes (which layers or sections receive content — read the node's structure
via the Figma MCP and draft the fill notes yourself, then confirm). No
config file yet? Create one with just that section — registering a template
is a fine first configuration.

**Instantiate.** When a workflow needs to create an artifact in Figma:
1. Check the registry for a matching template. Match by artifact, not exact
   wording — "crit page", "review board", and "feedback frame" all hit
   `crit-page`.
2. Load the `figma-use` skill, then duplicate the registered node into the
   user's target file (ask which file if unknown; never edit the template
   file itself).
3. Fill the duplicate per the fill notes and the content the workflow
   produced — text into the mapped layers, links into link rows. Leave the
   template's structure and styling alone; the template is the team's
   design decision, not yours to improve unasked.
4. No registered template → fall back to the workflow's generic layout spec,
   and mention once that sharing a team template link will register it for
   next time.

This registry is how the crit, project-card, brief, and review workflows
know where their Figma output should come from — they all check it before
building anything on canvas.

## Relationship to other workflows

The brief, card, crit, eval, sprint, and teardown workflows already use these
templates internally — this module exists for when the designer wants the
artifact directly ("give me a handoff note for this", "start a decision
record") without running the full workflow around it.

## Deliverable

- `<project>-<template>.md` in the working directory, pre-filled where possible
- Standard footer (Done / Not done / Next); "Next" often points at the full
  workflow that would strengthen the weakest section.
