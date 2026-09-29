# Design Eval — objective scoring, not vibes

Goal: evaluate a design against established heuristics and a task
walkthrough, producing scores and evidence a team can act on and re-run
after fixes. Where the crit is voices, the eval is a rubric.

## Process

1. **Take in the work and the tasks.** Same inputs as crit (files,
   screenshots, Figma via MCP, description) plus the 1–3 critical user tasks.
   Tasks unknown? Derive from the brief or infer, and flag as assumed — a
   walkthrough without real tasks is weak evidence.
2. **Heuristic pass — Nielsen's 10, scored.** For each heuristic: score 0–4
   (0 = violates badly, 4 = exemplary), one line of evidence pointing at a
   specific element/state, and severity of the worst issue found (S0 cosmetic
   → S3 task-blocking). No evidence, no score — write "not assessable from
   provided material" instead of guessing. Back findings with the knowledge
   layer — use `knowledge/INDEX.md`'s router to load `core-principles`,
   `foundational-heuristics`, and the clusters the design touches: cite the principle ID and its concrete thresholds
   (feedback timing, target sizes, contrast, working-memory limits) so
   findings argue from established principles, not taste.

   Visibility of system status · Match with the real world · User control &
   freedom · Consistency & standards · Error prevention · Recognition over
   recall · Flexibility & efficiency · Aesthetic & minimalist design · Help
   users recover from errors · Help & documentation

3. **Cognitive walkthrough.** For each task, at each step, answer the four
   classic questions: Will the user know what to try? Will they see the
   control? Will they connect it to their goal? Will they see progress?
   Any "no" or "maybe" becomes a finding with severity + the step where it
   occurred.
4. **Accessibility spot-check.** Contrast on primary text/actions, focus
   order and visibility, touch-target size, labels/alt presence, and one
   keyboard-only pass of the main task. This is a spot-check against WCAG AA,
   not certification — say exactly that in the report.
5. **Report.** Scorecard table (heuristic × score × worst severity), findings
   ranked by severity then frequency — each finding: what, where, why it
   matters, suggested fix, effort guess (S/M/L) — and an overall read in one
   paragraph. End with the 3 fixes with the best severity-to-effort ratio.

## Re-eval mode

Evaluating a revision? Diff against the previous report: per-heuristic score
deltas, findings resolved / remaining / newly introduced. Regressions get
called out first — that's the number a team most needs and least wants.

## Deliverable

- `<project>-eval.md` (scorecard + findings), `-eval-v<N>.md` on re-runs
- In-chat: overall read, top 3 fixes, standard footer. "Next" is usually
  fix → re-eval, or a crit to pressure-test the contested findings.
