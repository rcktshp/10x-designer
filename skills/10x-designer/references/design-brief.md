# Design Brief — frame before you draw

Goal: a design brief that aligns designer, PM, eng, and leadership on the
problem — and survives an executive review. Most bad designs are good
solutions to unframed problems; this workflow is the fix.

Two tiers. Pick deliberately and say which you're using:

- **Full brief** — the review-grade document (template:
  `../assets/templates/design-brief.md`). For work headed to a leadership
  review, a roadmap fight, or cross-team alignment.
- **Lite brief** — sections marked ★ only. For framing a sprint or a
  solo effort fast. Offer to grow it to full when the work gets an audience.

## Process

1. **Interview, briefly.** Ask only what you can't infer from context (repo,
   prior conversation, linked docs). Target the things a brief cannot be
   wrong about: the business stake (TAM/revenue/cost at risk), the people
   problems, the hypothesis and its metric, and the constraints. One round of
   questions, then draft — a half-right draft invites better corrections
   than a questionnaire.
2. **Draft using the template.** Fill every section; write `TBD — needs
   <who>` rather than leaving blanks silently. TBDs are work items, not
   shame.
3. **Stress-test your own draft** (Discernment) before presenting:
   - Is the hypothesis falsifiable, with a number ("+3% CVR"), not a vibe?
   - Do the business problems and people problems tell the same story from
     two altitudes? If one side is thin, the brief is lopsided — say so.
   - Would the metric move if the problem were solved by a non-design fix?
   - Is at least one non-goal something a stakeholder actually wants?
   - Does the TLDR stand alone? An exec who reads nothing else should still
     leave with the stake, the bet, and the ask.

## Structure notes (why the template is shaped this way)

- **TLDR metric table first.** 3–5 numbers that carry the argument (market
  at risk, friction before→after, projected upside). Numbers earn the read.
- **1-liner why** is a belief statement — "We believe that ___ will ___" —
  not a feature description. It's the sentence leadership repeats.
- **Business Problem vs. People Problems are separate sections.** Same
  story, two altitudes: dollars and drop-off for the business case; trust,
  friction, and confidence for the humans. Number each problem; give each
  its own evidence.
- **Hypothesis** is one falsifiable sentence with the expected metric move.
  The whole brief hangs off it.
- **Before → After** makes the friction delta visceral (e.g. "6–15 taps →
  2 taps"). Steps, not adjectives.
- **Guiding principles** are named commitments with teeth — each one should
  forbid something tempting ("seamless means on-surface" forbids redirects).
- **Assumptions & Validation is a table** — assumption · validation method ·
  result (Confirmed / Pending / Partially invalidated). Updated as evidence
  lands; invalidated rows stay visible. Report lowlights honestly — a brief
  that only confirms is advocacy, not framing.
- **Executive Summary states goals for THIS review and non-goals.** Reviews
  go sideways when the audience doesn't know what's being asked of them.

## Living document

A design brief isn't write-once. On update requests: refresh the validation table and
milestones, move shipped items from outputs to results, and keep a short
changelog line under the header. The brief should always read true today.

## Deliverable

- `<project>-brief-v<N>.md`
- In-chat: the two or three sections most worth the designer's scrutiny
  (usually Hypothesis and the problem pair), standard footer. "Next" is
  usually a sprint, wireframe, or circulating for review sign-off.
