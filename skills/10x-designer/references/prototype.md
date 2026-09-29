# Prototype — rapid hi-fi, interactive

Goal: something the designer can click, feel, and show a stakeholder today.
A prototype answers "does this experience work?" — it is not production code.

## Process

1. **Frame (2 questions max).** Confirm: (a) the single flow or moment being
   proven, (b) who sees it — user test, exec demo, or eng handoff reference.
   Everything else, assume and note.
2. **Restate the bet.** One sentence: "This prototype exists to prove ___."
   If you can't fill the blank, go back to step 1 — or suggest a design brief.
3. **Build a single self-contained artifact.** One HTML file (inline CSS/JS,
   React via CDN only if state genuinely needs it). No build step, no server —
   it must open from a double-click and be shareable as one file.
4. **Make it feel real.**
   - Real copy, real-ish data (see universal rules), realistic loading and
     empty states for the core flow.
   - Design-system tokens if one exists; otherwise define CSS custom
     properties at the top of the file so restyling is one edit.
   - Motion where it carries meaning (state change, spatial continuity) —
     150–250ms, ease-out, nothing decorative.
   - Responsive at the widths the audience will use. A demo on a laptop
     needs 1280+; a user test on phones needs 390 first.
5. **Wire the happy path fully, stub the rest visibly.** Dead ends get a
   small "not in this prototype" toast rather than silent nothing — testers
   must know the difference between "broken" and "out of scope".
6. **Self-crit before presenting** (Discernment): open it, click the whole
   flow, and fix what a reviewer would catch in the first minute. Name the
   weakest remaining part in your summary.

## Fidelity ladder

Offer to step down, not just up. If the frame in step 1 reveals the real
question is structural ("which layout?", "what goes on this screen?"), say so
and recommend the wireframe workflow instead — hi-fi polish on the wrong
structure wastes a cycle.

## Deliverable

- `<project>-prototype-v<N>.html` — the artifact
- In-chat: the bet it proves, how to demo it in 30 seconds (the click path),
  and the standard footer (Done / Not done / Next). "Next" is usually a crit
  or a user-test script.
