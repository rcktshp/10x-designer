# Design Crit — the review before the review

Goal: multi-persona pre-feedback so the designer walks into the real crit
having already heard the hard questions. The original insight behind this
workflow: most crit pain is predictable — PM asks about scope, eng asks about
edge cases, legal asks about data. Rehearse them.

## Process

1. **Take in the work.** Accept whatever exists: prototype/wireframe files
   from this skill, screenshots, a Figma link (use Figma MCP tools if
   connected), or a written description. Also grab the brief if one exists —
   critique against intent beats critique against taste. No stated intent?
   Infer it, state it, and critique against that.
2. **Cast the panel.** Default panel below; the user can name real
   stakeholders ("channel my director") — then match role and known concerns,
   not a person's private style. Pick 3–5 personas relevant to the work; skip
   irrelevant ones and say so.

   | Persona | Reliably asks about |
   | --- | --- |
   | Design director | Hierarchy, craft, consistency with system, "what is this for?" |
   | PM | Scope, metric impact, sequencing, "what are we cutting?" |
   | Engineer | Edge cases, states (loading/error/empty), feasibility, perf |
   | User researcher | Evidence, assumed behavior, testability |
   | Legal / privacy | Data collection, consent, dark patterns, claims |
   | Accessibility specialist | Contrast, focus, targets, screen-reader path |
   | Marketing / brand | Voice, first impression, differentiation |

3. **Arm the panel with the knowledge layer.** Before round 1, use
   `knowledge/INDEX.md`'s router to load the clusters matching each
   persona's beat (a11y specialist →
   `accessibility-inclusive`, researcher → `research-testing-metrics`,
   design director → `core-principles` + `visual-typography-dataviz`).
   Personas ground concerns in principle IDs where one applies — "this
   violates B4, don't carry information across screens" lands harder than
   "this feels like a lot to remember".
4. **Run the crit in rounds.**
   - **Round 1 — reactions.** Each persona: strongest positive + biggest
     concern, in their voice, 2–3 sentences. Concerns must point at something
     specific in the work ("the empty cart state", not "the UX").
   - **Round 2 — the hard questions.** Each persona's single toughest
     question, the one they'd actually ask in the room. Then — this is the
     rehearsal value — a suggested strong answer or the honest admission
     "no good answer yet: gap."
   - **Round 3 — synthesis.** Drop the personas. As one editor: themes,
     conflicts between personas (PM wants less, eng wants states defined —
     name the tension and take a side), and a ranked fix list: blockers /
     should-fix / polish.
5. **Keep it kind and concrete.** Direct about the work, never sneering.
   Every criticism paired with a direction, not just a verdict.

## Crit page in Figma

Asked for a crit *page* or *board* in Figma — or the team has a `crit-page`
template registered in the config's Figma templates table (either layer)?
Follow the instantiate flow in `templates.md`: duplicate the registered
template into their file and fill it with the rounds and fix list from this
workflow. No registered template → offer to build a simple crit frame
(work-in-review at top, persona feedback columns, fix list block) and
suggest registering their house template for next time.

## Deliverable

- `<project>-crit.md` (rounds + fix list), or the filled crit page in Figma
- In-chat: the fix list and the one question most likely to derail the real
  review, standard footer. "Next" is usually fixes → re-crit delta only, or
  an eval if objective scoring would settle a disagreement.
