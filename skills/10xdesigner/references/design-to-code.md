# Design-to-Code — the Figma bridge, both directions

Goal: move work between design tools and code without losing the system.
Two directions, one invariant: **the design system is the source of truth,
not the pixels and not the code.**

## Direction 1: Figma → code

1. **Read the design properly.** With Figma MCP connected, pull design
   context/variables/screenshot for the node rather than eyeballing an
   export. No MCP? Ask for a screenshot + the intended component names, and
   say fidelity will be lower.
2. **Map before writing.** Produce a mapping table first: each Figma layer →
   the existing code component + tokens that implement it. Three buckets:
   **exact** (component exists), **variant** (exists, needs a prop/variant),
   **gap** (nothing matches). Show the table before generating — the gap list
   is a design-system conversation, and generating ahead of it creates the
   one-off debt this workflow exists to prevent.
3. **Generate on-system.** Codebase conventions (check neighboring
   components for framework, styling approach, naming). System components
   and tokens only — a hard-coded hex or magic px in output is a bug unless
   its gap was declared. Include real states: hover, focus-visible, disabled,
   loading, empty, error where relevant.
4. **Verify against the source.** Compare rendered result to the Figma
   screenshot; list remaining intentional differences (usually gap items)
   rather than letting them be discovered.

## Direction 2: code → Figma

1. **Inventory what the code truly renders** — components, variants, tokens,
   states — from source, not memory.
2. **With Figma MCP write access:** create/update the file mirroring code
   structure: variables from tokens, components with matching variant
   axes, auto-layout mirroring the code's flex/grid. Name layers exactly as
   code names components — naming drift is how libraries rot.
3. **Without write access:** produce a spec kit instead — token table,
   component inventory with variant matrices, and an HTML visual reference
   page rendering every component in every state for manual rebuild.

## Round-trip audit mode

Asked "are Figma and code in sync?": inventory both sides, diff (tokens,
components, variants, naming), report drift with a fix direction per item —
which side is right, per the system's governance. No governance defined?
Recommend one: tokens follow code, semantics follow Figma.

## Deliverable

- Direction 1: mapping table + generated component files (+ gap list)
- Direction 2: Figma file changes, or `<project>-spec-kit/`
- Audit: `design-code-drift.md`
- Standard footer; "Next" is usually wiring gaps into the design-system
  backlog or a prototype using the new components.
