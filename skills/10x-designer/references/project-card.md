# Project Card — frame a project for design review, in Figma

Goal: the card that travels with a project into design review. It answers,
before anyone opens the presentation: why this project exists, what design is
betting, and — critically — what feedback the room is being asked for.

**The card lives in Figma.** That's where reviews happen and where the team
keeps them, so create and update cards there via the Figma MCP tools.
Markdown is the fallback, not the default.

The card is question-driven: every section is a set of prompts, and the card
is done when the prompts are answered in one to three sentences each. It
shares DNA with the design brief (hypothesis, business problem, people
problem) but stays at card altitude — if an answer wants three paragraphs,
link the brief instead of inlining it.

## Process

1. **Mine before asking.** If a brief, sprint, thread, or deck about this
   project exists, pull answers from it — a card should never make the
   designer re-answer what's already written. Ask only for what's genuinely
   missing; most often that's the links (project tracker, design review
   presentation, explorations) and the feedback contract.
2. **Draft the answers first, in chat.** One to three sentences per prompt
   (structure below). Confirm or let the designer correct them *before*
   building in Figma — text edits are cheap in chat, tedious on canvas.
   `TBD — needs <who>` beats a silent blank.
3. **Create the card in Figma.** Load the `figma-use` skill first (mandatory
   before `use_figma`), then build the card in the file the designer names —
   or a new file if none exists. Check the Figma templates registry in
   `.10x-designer/config.md` for a `project-card` template first (instantiate
   flow in `templates.md`); duplicate and fill it when registered. Only
   build from scratch when nothing exists. Layout for scratch builds (matches the
   canonical card):
   - One tall frame per card, vertical auto-layout, ~1920 wide (height grows
     with content, roughly 2:1 tall), generous side padding (~120px), on a
     white card over a light page background.
   - **Top bar:** team name in small caps (muted, letter-spaced) on the
     left, the team's/company's logo on the right. Never a placeholder logo
     from another company.
   - **Header block:** project name as the large bold heading; below it a
     horizontal people row (avatar circle + name with role in small muted
     text under it, per person); then a LINKS block — small-caps label with
     an indented link list.
   - **Sections, separated by thin full-width dividers**, each opening with
     a small-caps muted section header. Content is a two-column grid: a
     narrow left column with the bold row label, a wide right column with
     the prompt questions (near-black) each followed by its answer (muted
     until filled). Keep the prompts visible — they are the card's
     structure. The Hypothesis answer is a single italic/placeholder line,
     not a Q/A stack.
   - Use the team's design-system text styles and colors when the library is
     available; otherwise neutral styles.
4. **Updating an existing card is the same workflow in reverse.** Read the
   card from Figma (get design context for the node), show the current
   answers, apply the requested changes as text edits in place — don't
   rebuild the frame, don't touch sections the designer didn't ask about,
   and refresh links/status wherever they're stale.
5. **Get the feedback contract right — it's the point of the card.**
   "Feedback needed" must be specific enough to act on ("is the checkout
   sheet's hierarchy trustworthy?" not "thoughts?"). "Not needed" fences off what's
   already decided or out of scope, so the review doesn't relitigate it.
   Push back if the designer leaves it generic.
6. **Self-check** (Discernment): Does the hypothesis match what the goals
   say design wants to demonstrate? Do business problem and people problem
   tell the same story from two altitudes? Would a reviewer who reads only
   this card give useful feedback on the presentation?

## Card structure

Text content template: `../assets/templates/project-card.md`. Sections, in
order:

- **Header** — team name (+ logo), project name, people + roles, links:
  project tracker, design review presentation, explorations, product.
- **CONTEXT**
  - *Why this project?* — why it's important, tie to roadmap/business
    goals, the general problem, the opportunity.
  - *Background* — how the effort started, prior work, the leadership
    strategy driving it, how the industry has changed.
  - *Hypothesis* — one falsifiable sentence; same bet as the brief if one
    exists.
- **GOALS**
  - *Goal* — what design wants to demonstrate with this effort; goal
    metrics if any.
  - *Business problem / People problem* — the two-altitude pair.
- **NEXT STEPS** — next steps after this review, plus the open questions
  that must be answered to complete the project.
- **DESIGN REVIEW FEEDBACK** — feedback needed / feedback not needed.

## No Figma connection?

Say so, then fall back: deliver the filled markdown template plus a styled
single-card HTML mock of the layout above, ready to rebuild in Figma by hand
— and note that connecting the Figma MCP makes this one step next time.

## Deliverable

- The card frame in Figma (link to the file/node), created or updated
- Fallback: `<project>-card.md` + `<project>-card.html`
- In-chat: the feedback contract restated, standard footer. "Next" is
  usually booking the review or tightening the linked presentation.
