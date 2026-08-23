# Foundational Heuristics — Critique Checklist

Scoreable checks against the canonical named frameworks. **Cite the named principle when flagging.** Severity: high = task failure / trust loss / accessibility breach; med = friction; low = polish. Many overlap other clusters — here they're attributable by name. (Lists in full: `heuristics.md`.)

## A. Nielsen's 10 (usability) — run on any UI
- [ ] **System status visible** — every action/load gives timely feedback (Nielsen #1). — high
- [ ] **Real-world language** — no internal jargon; familiar concepts/order (Nielsen #2). — med
- [ ] **User control & freedom** — clear exits, undo/redo on reversible actions (Nielsen #3). — high
- [ ] **Consistency & standards** — same word/action = same meaning; platform conventions (Nielsen #4 / Jakob's Law). — high
- [ ] **Error prevention** — error-prone conditions designed out or confirmed (Nielsen #5 / Shneiderman #5). — high
- [ ] **Recognition over recall** — options/info visible; nothing carried in the user's head across screens (Nielsen #6 / Miller's Law). — high
- [ ] **Flexibility & efficiency** — accelerators for repeat/expert users (Nielsen #7). — med
- [ ] **Aesthetic & minimalist** — no irrelevant content competing for attention (Nielsen #8). — med
- [ ] **Error recovery** — plain-language errors that name the cause + a fix (Nielsen #9). — high
- [ ] **Help & documentation** — task-focused, searchable, in context (Nielsen #10). — low

## B. Shneiderman / Tog (interaction)
- [ ] **Informative feedback proportional to action significance** (Shneiderman #3). — high
- [ ] **Dialogs yield closure** — multi-step flows have a clear end/confirmation (Shneiderman #4). — med
- [ ] **Easy reversal** — destructive/irreversible actions are reversible or clearly gated (Shneiderman #6 / Tog "Protect users' work"). — high
- [ ] **User in control** — the user initiates; the system doesn't surprise or seize control (Shneiderman #7). — high
- [ ] **Latency** — actions acknowledged <50ms; delays masked; response <400ms where possible (Tog / Doherty). — high
- [ ] **Discoverability** — controls are visible, not hidden behind unsignaled gestures/hover (Tog). — high
- [ ] **Smart defaults** — researched, overridable, clearly labeled (Tog). — med

## C. Cognitive laws
- [ ] **Hick's Law** — choices are minimized/grouped; one emphasized default (no overload). — high
- [ ] **Fitts's Law** — primary/touch targets are large (≥44px) and near the point of attention. — high
- [ ] **Miller's Law** — content is chunked into ~5–9 meaningful groups. — med
- [ ] **Peak-End Rule** — the flow has a deliberate peak and a strong, on-brand ending (success/empty/error states elevated). — med

## D. Behavior (Fogg / Cialdini) — for conversion/activation surfaces
- [ ] **B=MAT present** — the target behavior has sufficient motivation, ability (simplicity), and a well-timed trigger; the missing factor is identified. — high
- [ ] **Simplicity over motivation** — friction reduced on the scarcest resource (time/effort/brain cycles) before adding persuasion. — high
- [ ] **Persuasion is ethical** — any Cialdini lever (social proof, scarcity, authority) is truthful and serves the user (no fake scarcity/anchors). — high

## E. Perception & content
- [ ] **Gestalt grouping** — proximity/similarity/continuity make relatedness obvious; no mis-grouping by spacing. — med
- [ ] **Color not sole cue** — meaning has a redundant text/shape cue (Tog "Color"; WCAG 1.4.1). — high
- [ ] **Content heuristics** — copy satisfies the 10 content design heuristics (status, plain language, recoverable errors, minimalist). — med
