# Wireframe — structure fast, options first

Goal: explore information architecture and flow before anyone falls in love
with pixels. Wireframes are cheap on purpose — quantity then convergence.

## Process

1. **Get the flow, not the screen.** Ask for (or infer) the user's start
   state, end state, and the steps between. A wireframe of one screen without
   its neighbors is decoration.
2. **Check the knowledge layer.** Use `knowledge/INDEX.md`'s router to load
   `core-principles` and `information-architecture` (add `interaction-patterns`
   for flow-heavy work) so structural choices — hierarchy, grouping,
   navigation model, progressive disclosure — lean on principles, and
   annotations can cite them.
3. **Default to 3 options.** For the key screen(s), produce three genuinely
   different structures — not one layout with three accent colors. Vary what
   matters: hierarchy (what's biggest), navigation model, progressive
   disclosure vs. everything-visible. Label them A/B/C with a one-line thesis
   each ("A: search-first", "B: browse-first", "C: task-first").
4. **Render as one HTML page.** All options and all screens on a single
   scrollable page, grayscale boxes + real labels (no lorem — labels carry the
   IA). Grid: screens as columns per option, flow left→right. Annotate with
   small numbered notes where a structural decision was made.
5. **Keep it deliberately low-fi.** System font, 2 grays + 1 accent for
   annotations, no imagery, no rounded-corner charm. If it starts looking
   designed, strip it back — polish here anchors the conversation on the
   wrong things.
6. **Recommend one.** State which option you'd pick and why, in two
   sentences. A teammate has an opinion; a vending machine prints three
   options and shrugs.

## Deliverable

- `<project>-wireframe-v<N>.html`
- In-chat: the flow being solved, thesis per option, your recommendation,
  standard footer. "Next" is usually: pick an option → prototype it, or run
  a quick crit on the favorite.
