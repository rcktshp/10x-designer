# Critique Checklist — mobile-responsive-web

Self-contained, scoreable checklist for an external design-review tool. Each item: **check** | why it matters | severity (high/med/low). Deduplicated across 12 books; thresholds preserved. Items are written to be evaluable against a screen, flow, or codebase artifact.

## Responsive layout & viewport

1. **Outer layout is fluid (percentage/relative widths), not a single fixed pixel width.** — Fixed widths force horizontal scroll below the design resolution and look stranded on large screens. — **high**
2. **`<meta name="viewport" content="width=device-width, initial-scale=1.0">` is present.** — Without it mobile browsers render at ~980px and shrink the page. — **high**
3. **Images/embedded media carry `max-width:100%` (and `height:auto` if width/height attributes are set).** — Unconstrained media overflows fluid layouts; fixed height attributes cause squashing. — **high**
4. **Breakpoints correct hierarchy and line-length at both narrower AND wider ranges than the design resolution, and are set where content breaks (not arbitrary device widths).** — No design scales well beyond its origin context; device-chasing is unmaintainable. — **high**
5. **CSS is authored mobile-first (default = simplest layout; `min-width` queries add complexity) using em/rem/% rather than pixels.** — Guarantees a graceful baseline for @media/JS-blind devices, forces content focus, enables proportional rescaling. — **med**
6. **Gutters, margins, and padding are proportional so they stay aligned as columns flex.** — Fixed gutters drift out of the grid as it resizes. — **med**
7. **Line length stays ~45–75 characters at all widths (cap with `max-width`, re-column, or tune type).** — Over-long measures make reading a chore; this is the comfortable measure. — **med**
8. **Content reflow preserves logical hierarchy when columns stack (content choreography), not random vertical scatter.** — Flattened hierarchy sends users on a scavenger hunt. — **med**

## Performance

9. **The mobile view actually weighs LESS than desktop — no `display:none` "dark matter," no desktop-size images scaled down by CSS.** — Hidden elements/images are still downloaded; RWD commonly over-downloads, and latency (not bandwidth) is the mobile killer (~10× slower on 3G). — **high**
10. **Responsive images use `srcset`/`sizes` or `picture` (right-sized, one request each); high-DPI screens get crisp 2× assets or CSS-rendered visuals.** — Wastes mobile bandwidth / blurry graphics otherwise; images are ~64% of page weight. — **high**
11. **Long image/comment lists are paginated (~6–10 per screen) with a Load/Show More control, not loaded all at once.** — Each asset is an HTTP request; pagination roughly halves measured load time. — **high**
12. **Scripts are non-blocking (bottom of `<body>` or `async`/`defer`); heavy JS libraries are justified vs. battery/parse cost.** — Blocking scripts and library bloat hurt real and perceived performance and drain battery. — **med**
13. **Page weight and request count are minimized (minify/concatenate, real text over image-text, reused/cached chrome, no fragile parallax/heavy AJAX/carousels on mobile).** — Speed is king; a frustrated mobile user quits in under a second (Amazon: 1s ≈ $1.6B/yr). — **high**

## Touch targets & ergonomics

14. **All interactive touch targets meet the size floor: ~10mm/1cm (≈44×44pt), bumped to ~9mm/50px where a mistap is costly, with ≥2mm spacing (20–40px around sliders/switches).** — Finger pads are 10–14mm; undersized/crowded targets cause mis-taps and accidental activation. — **high**
15. **Each target's touch hit-area meets or exceeds its visual size and fills surrounding gutter whitespace.** — Centroid/parallax makes edge-of-glyph misses likely. — **high**
16. **Primary controls/navigation sit in the device-appropriate reach zone (phone app → bottom; Android app → top; tablet → side/top corners; mobile web → top footer-anchor jumping to bottom nav); controls are not directly above the content they affect.** — One-handed thumb ergonomics; the hand obscures content above it. — **high**
17. **Destructive actions are kept OUT of the easy thumb-reach zone.** — Reduces accidental data loss. — **med**
18. **The design works without `:hover`; hover-revealed content/actions are surfaced on tap/swipe/separate screen, with explicit press/active states (and `:hover`/`:focus` kept for indirect-manipulation devices).** — Touch has no hover state. — **high**
19. **Tap feedback is visible around the finger (not occluded) and response latency is low (no lag breaking direct manipulation).** — Users otherwise can't tell if an action registered. — **med**

## Affordance, gestures & motion

20. **Every feature is reachable via a visible, redundant path; novel/non-obvious gestures are supplements only, taught contextually and built on familiar gestures.** — Gestures are ephemeral, low-discoverability, low-memorability; invisible gestures strand users. — **high**
21. **Tappable elements clearly look tappable and are distinct from static labels (especially in flat designs); buttons look like buttons.** — Weak affordance hides controls; subtlety fails on mobile. — **med**
22. **Open/close and other paired interactions are symmetrical and in the same location; each gesture maps to exactly one action (no swipe ambiguity).** — Predictability and consistent way-finding. — **med**
23. **Commands are generic (same action → same conceptual result everywhere); there is exactly one official Home and consistent Back semantics (undo vs. up not conflated).** — Overloaded commands cause wrong actions. — **high**
24. **Skeuomorphic metaphors are only used where the interaction is fully honored ("looks like" matches "acts like").** — A metaphor that doesn't behave as promised misleads and wastes pixels. — **med**
25. **Transitions/animations are purposeful and restrained (staging, slow-in/out, ~0.2–0.3s feedback durations), supporting not starring; not every element animates.** — Ubiquitous/over-the-top motion distracts; meaningful motion grounds the UI. — **med**

## Navigation & IA

26. **The screen leads with content, not a wall of navigation (fewer than ~3 stacked nav/chrome bars).** — Chrome eats scarce vertical space; users want answers, not the sitemap. — **high**
27. **All primary navigation items are labeled (no icon-only "mystery meat"), and the active/selected item is visually distinct.** — Users must know where they can go and where they are without tapping each option. — **high**
28. **Navigation stays in a consistent location with consistent metaphors across screens, with a clear "you are here" cue (highlight/breadcrumbs).** — Moving/changing nav disorients users; consistency keeps a learned interface working. — **high**
29. **Mobile IA is shallow (not a 5-level hierarchy to reach an item); a list/detail Back returns exactly one level; nesting limited to 2–3 levels.** — Deep IA and level-skipping disorient impatient on-the-go users. — **med**
30. **Side drawers/trays leave 30–40% of the underlying screen visible (≤60–70% width), sit on the left/right (not bottom), and never require scrolling a primary menu.** — Full-width/bottom trays remove the user's anchor and clash with OS gestures. — **med**
31. **Off-screen/paginated content has an affordance (page dots, peeking content, fixed-column shadow, prev/next).** — Hidden content is undiscovered content; text prompts don't entice swipes. — **med**
32. **Page-level actions are consolidated into OS controls (Action Bar/Toolbar/More), not rows of equal-weight buttons ("Oceans of Buttons").** — Equal-weight button rows force users to read everything. — **med**
33. **Lists/menus are ordered by task logic or natural order, not alphabetically (unless an unambiguous known-item lookup).** — A–Z hides meaningful structure and fails when users don't know the name. — **med**

## Content & comprehension

34. **A phone is served a mobile-optimized experience, not the raw desktop/full site (single-column, cut features, link to full site for rare needs).** — Measured task success is far higher on mobile sites/apps than full sites on a phone. — **high**
35. **Essential, scannable info is on the first screen (front-loaded keywords, bullets, true summaries); only genuinely secondary content is deferred (progressive disclosure) — neither over-deferred nor over-dense.** — Comprehension is ~2× harder on small screens; rushed users won't dig. — **high**
36. **Headlines, product names, and labels are shown in full (distinguishing keyword first); key labels (titles/buttons/soft keys) fit without wrap; single-ellipsis truncation only on list/table descriptive text.** — Truncation destroys information scent and forces extra steps. — **med**
37. **Each screen presents roughly one big idea with low information density.** — High cognitive load in a distracting context degrades completion (working memory ~3 objects). — **high**
38. **The core task completes within ~3–4 screens.** — Mobile sessions are bite-sized (~17 min vs ~39 desktop); long flows get abandoned. — **high**
39. **Every screen has one clear primary action and a next step at the end of every flow (no dead ends).** — Mobile UX must always offer somewhere to go. — **high**
40. **Body text is mixed-case (not all caps), on a plain (non-patterned) background, with contrast ≥4.5:1 body / ≥3:1 large (legacy floor 3:1, ideally 10:1), in a legible face (x-height 65–80% of cap height; sans-serif at small screen sizes).** — Legibility floor; all-caps reads ~10% slower; mobiles are read in glare/dim. — **high**

## Forms & onboarding

41. **The first screen/run delivers real value (content, products) before requiring registration, permissions, or a manual.** — Up-front demands cause permanent abandonment on low-commitment apps ("don't take before you give" / "Let Them Pee"). — **high**
42. **First-launch permission/rating prompts are deferred and in-context (no dialog chains); location is requested via explicit user action.** — Blocking dialogs frustrate before engagement; a denied iOS permission can't be re-requested. — **high**
43. **Forms are trimmed to essential fields (no redundant Confirm-Email/Password), with smart defaults prefilled, values computed where possible, and import/scan/type-ahead offered.** — Each field measurably lowers conversion; prefilled forms complete ~4× faster. — **high**
44. **On login/form screens, inputs and the primary button sit in the top half (above where the keyboard appears).** — The keyboard covers ~half the screen and hides bottom content. — **high**
45. **Every field has a real visible `<label>` (top-aligned or persistent in-field / Float Label), never placeholder-as-label.** — Placeholders vanish on focus and can be mistaken for pre-filled answers. — **high**
46. **Specific HTML5 input types (`email`/`tel`/`url`/`number`/`date`/`search`) are used where the data warrants; autocapitalize/autocorrect disabled on case-sensitive fields; tap-heavy `select`/multi-select replaced with touch controls.** — Surfaces the right keyboard, native widgets, free validation; selects cost ~4 taps each. — **med**
47. **Field requirements are shown up front with inline real-time validation; errors are inline, plain-language, with a constructive fix (not a modal covering the field); server-side validation also present.** — Prevents avoidable abandonment; users must see and resolve the problem; client validation is bypassable. — **high**
48. **Confirmation dialogs are reserved strictly for irreparable actions (empty trash, not archive/add-to-cart/sign-out); reversible actions use undo/toast/inline feedback.** — Mismatched confirmation ("Idiot Boxes") breaks flow; missing confirmation on irreversible actions risks data loss. — **high**
49. **User-entered data is preserved on error, interruption, or connection loss (no form clearing); returning users skip re-login (saved session) and a sign-up path is visible.** — Slips and crises are normal on mobile; forced re-login deters return. — **high**
50. **Onboarding avoids frontloading — bite-size, in-context, learn-by-doing, skippable, re-accessible.** — Over half of dialog/tour/transparency patterns test poorly; users skip overwhelming tours. — **med**

## Platform conventions & markup

51. **The design follows the target OS's conventions (iOS Tab Bar/Toolbar; Android Action Bar/Up/Overflow + hardware back; WP App Bar/Pivot) rather than a ported foreign UI, while keeping product identity.** — Off-convention UI hurts adoption, trust, and store ratings (Jakob's Law). — **high**
52. **Android UIs use custom controls with explicit colors and don't depend on hardware buttons.** — Manufacturer skins can hide inherited-color icons; button availability is inconsistent. — **med**
53. **Native browser/OS controls aren't overridden without cause; restyled inputs/buttons still read as their control type and keep a visible focus indicator.** — "The web is about reach, not control"; familiarity drives usability and keyboard orientation. — **med**
54. **HTML5 structural elements (`header`/`footer`/`aside`/`section`/`article`/`nav`) are chosen by content meaning, each `section` has a heading, and headings use ranked h1–h6 (not the unimplemented outline algorithm).** — Wrong/empty semantics mislead AT and machines. — **med**
55. **No `autoplay`/`loop` on audio/video; transcripts live in the visible DOM and captions via WebVTT `<track>`; `picture` ends with an `<img alt>` fallback; `canvas` content has an accessible equivalent.** — Autoplay is hostile; fallback-only content never reaches modern-browser/AT users; canvas has no DOM. — **high**
56. **Advanced CSS (RGBA/gradient/multiple-bg/transitions) has a solid fallback declared first and is confined to the non-critical experience layer; `box-sizing:border-box` on padded percentage-width boxes.** — Protects the core message in older browsers; prevents overflow. — **med**
57. **Body text is real, resizable HTML/CSS text (or SVG/web fonts), never baked into images; images have meaningful ALT; a non-graphical/non-JS navigation fallback exists.** — Real text is faster, resizable, indexable, accessible; legal + moral accessibility mandate. — **high**

## Multi-device & data display

58. **Core functionality, IA, and visual language stay consistent across devices, but each device's layout/touch/form-factor is optimized (consistent ≠ identical, never a 1:1 clone).** — Inconsistency fractures the mental model; un-optimized ports are unusable. — **high**
59. **For long/multi-step activities, state (progress, bookmarks, sign-in) syncs so any device resumes seamlessly, and the cross-device value is communicated (first-run/store/contextual cues).** — Continuity fails without sync; ecosystem relationships are otherwise invisible. — **high**
60. **The design was driven by user needs/contexts first, with devices and approach chosen after; each device has a distinct role (feature gatekeeping), not every feature everywhere.** — Tech-/device-first design produces incoherent ecosystems; uniform spread blurs device value. — **med**
61. **RWD is not used as a substitute for mobile content strategy — content is reprioritized/edited for the mobile context, not merely reflowed.** — RWD changes presentation, not content priority. — **med**
62. **Cloud-dependent features have a graceful offline/degraded state.** — Mobile connectivity is unreliable. — **high**
63. **Data tables are given a responsive treatment (priority columns + filter, horizontal overflow with optional docked first column, definition-list, or chart) with aligned columns (text left, numbers right) and no heavy/dark gridlines.** — A table's meaning is tied to its 2-D presentation; gridlines/misalignment harm scanning. — **med**
64. **Charts have a title, labeled axes, and only necessary marks — no 3D, decorative gridlines, or misleading color (no chart junk).** — Chart junk destroys comprehension; color must not imply false correlation. — **high**
65. **Info-rich graphics (infographics) are served as an appropriate variant per range, not blindly scaled/cropped.** — Scaling/cropping is content-blind and destroys legibility. — **low**
66. **Explicit search offers auto-complete; results show a count, a default sort, and sort/filter controls; an open filter drawer keeps results glimpsed, updates counts, and flags active filters.** — Findability and retaining context while refining. — **med**

## Process & verification

67. **The design was verified on real target devices early (not just browser-window resizing, emulators, or paper).** — Resizing can't reveal touch, density, type size, performance, or device-browser quirks. — **med**
68. **Each design deliverable has a single stated purpose; interaction questions are validated via prototype, not debated over static comps; wireframes aren't presented as visual design.** — Overloaded artifacts and hypothetical debate waste time and set false expectations. — **med**
