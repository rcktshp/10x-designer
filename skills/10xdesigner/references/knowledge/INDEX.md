# Design Knowledge Base — Router & Loading Guide

A deduplicated design brain organized into clusters, drawing on established UX research and practice. This base grows over time — the cluster list below is the current source of truth. Each cluster holds up to 3 files:
- `principles.md` — timeless rules (the "why")
- `heuristics.md` — `if X → problem Y → fix Z` spot-the-problem rules
- `critique.md` — scoreable review checks (check · why · severity) — **the artifact for evaluating an artifact**

Base path: `references/knowledge/<cluster>/` (relative to this skill).

## ⚠️ Loading discipline (read this first)
**Never load every cluster.** That blows context and dilutes the answer. Load only what the task needs:
- **Critique / review a design** → load `critique.md` from the matched clusters; pull `heuristics.md` only when you need the *why/fix* behind a failed check.
- **Guidance / "how should I design X"** → load `principles.md` + `heuristics.md` from the matched clusters.

## Default critique set
For a general "review this screen/UI" with no special domain, load these clusters' `critique.md`:
`core-principles` · `visual-typography-dataviz` · `interaction-patterns` · `accessibility-inclusive` · `content-ux-writing` · `foundational-heuristics`
Then add domain clusters below based on what the artifact *is*.

## Router — match the task to clusters

| If the task involves… | Load cluster |
|---|---|
| general usability, cognitive load, affordances, mental models, hierarchy (almost always) | **core-principles** |
| named heuristics/laws to cite by name (Nielsen, Shneiderman, Tog, Gerhardt-Powals, Hick/Fitts/Miller/Jakob/Peak-End, Fogg FBM, Cialdini, Gestalt) | **foundational-heuristics** (in the default set) |
| layout, composition, typography, color, grids, charts, data viz, infographics | **visual-typography-dataviz** |
| controls, buttons, gestures, microinteractions, animation, forms behavior, wireframes, prototyping | **interaction-patterns** |
| accessibility, WCAG, contrast, screen readers, keyboard, inclusive design, i18n/localization, RTL | **accessibility-inclusive** |
| copy, microcopy, error messages, labels, voice & tone, content strategy, content modeling | **content-ux-writing** |
| navigation, menus, IA, taxonomy, search, findability, wayfinding, sitemaps | **information-architecture** |
| mobile, responsive, touch targets, multi-device, app conventions | **mobile-responsive-web** |
| emotion, delight, persuasion, conversion, behavior change, dark patterns, ethics | **behavior-emotion-persuasion** |
| onboarding, first-run, activation, empty states, jobs-to-be-done, signup | **onboarding-product** |
| design systems, components/tokens, service design, social/connected/IoT products | **systems-service-patterns** |
| usability testing, research methods, metrics, A/B, validation, sample sizes (process check) | **research-testing-metrics** |
| design process, critique facilitation, strategy, stakeholder comms, design ops | **process-strategy-craft** |
| kids, healthcare/care, sustainability, industrial design, domestic/home tech | **specialized-domains** |

## Grounding fixes in the user's system
This KB is *universal* design knowledge. When a fix needs concrete values from the user's own design system (tokens, components, themes), use that system's real values rather than guessing; if they aren't available, give the generic target and flag the assumption. Diagnose with this KB (universal); prescribe with the system's real values.

## Note on critique.md markup
Checkbox style varies by cluster (`- [ ]`, `C1–C80`, `A–L` sections). Read by content, not markup. Every item carries a check, a why, and a high/med/low severity.
