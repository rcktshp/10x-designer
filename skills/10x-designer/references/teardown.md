# Competitive Teardown — learn from someone else's shipped decisions

Goal: a structured analysis of a competitor's product or flow that produces
design decisions, not screenshots with captions. A teardown earns its cost
when it changes what we build.

## Process

1. **Scope to a flow, and name the lens.** "Tear down Linear" is a week;
   "tear down Linear's onboarding through first created issue, lens: how they
   handle empty states" is an afternoon. Confirm flow + lens + why we care
   (which of our decisions this informs).
2. **Gather evidence.** Use what's available: user-provided screenshots or
   recordings, public docs and changelogs, web research, direct product access
   if the user grants it. Label every claim by source strength — observed >
   documented > inferred. Never present inference as observation.
3. **Walk the flow step by step.** For each step record: what the user sees,
   the primary action, what the product is optimizing for at that moment, and
   the friction or delight. Note step count and required decisions — the
   quantitative skeleton comparisons hang on.
4. **Extract the moves.** The heart of the teardown: 3–7 named design moves
   ("progressive commitment", "empty state as tutorial") with — for each — how
   it works mechanically, what it costs (tradeoffs they accepted), and whether
   it transfers to our context or depends on their scale/brand/model.
5. **Compare honestly, then recommend.** Side-by-side vs. our current flow
   (if it exists): steps, decisions, moments of confidence. End with steal /
   adapt / avoid lists — each item one line with a reason. "Avoid" matters
   most; copying a competitor's mistake with confidence is the classic
   teardown failure.

## Multi-competitor mode

For 2–4 competitors on the same flow: run steps 2–4 per competitor, then one
comparison matrix (moves × competitors) and a single combined steal/adapt/avoid
list. Cap at 4 — beyond that it's market research, not a teardown; say so.

## Deliverable

- `<competitor>-teardown.md` (+ `teardown-matrix.md` in multi mode)
- In-chat: the 2–3 moves that should change our roadmap, standard footer.
  "Next" is usually feeding the steal list into a brief or sprint.
