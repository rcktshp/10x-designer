# Core Principles — Critique Checklist

Self-contained, scoreable design-review checks synthesized from 14 core-principles books (deduplicated). Each check is binary unless a scale is noted. **Severity:** `high` = likely task failure / trust loss / accessibility or ethics breach; `med` = friction, slowdown, or confusion; `low` = polish / missed opportunity.

How to use: walk each section, mark pass/fail/N-A, record the severity of any failure. A design with any failed `high` check should not be considered shippable.

---

## 1. Clarity & cognitive load

- [ ] **Self-evident.** A first-time, non-expert user can tell what each screen is and how to use it without conscious effort. — *Why:* every "question mark" taxes a limited cognitive budget and erodes confidence. — **high**
- [ ] **Scannable.** Clear visual hierarchy (prominence ∝ importance, related = grouped, sub-items nested), descriptive headings, short front-loaded paragraphs, vertical lists — the page can be scanned, not read. — *Why:* ~80% of users scan; only ~16% read every word. — **high**
- [ ] **Single focal point.** Each screen has one dominant call-to-action / focal element; emphasis is used sparingly, not scattered. — *Why:* when everything is emphasized, nothing reads as important. — **med**
- [ ] **No needless words.** No "happy talk," no redundant instructions; critical text lives on interactive control labels. — *Why:* filler buries real content; users skip large text blocks and banners. — **med**
- [ ] **Extraneous load minimized.** Decorative images, autoplay media, background sound, and "seductive details" are absent from core-task screens. — *Why:* irrelevant media steals attention and lowers task/learning outcomes. — **med**

## 2. Choice, simplicity & structure

- [ ] **Reduction first.** Every visible element earns its place (removing it would hurt); non-essential features were removed before secondary ones were hidden. — *Why:* the cheapest path to simplicity is thoughtful subtraction; the enemy is disorder. — **high**
- [ ] **Progressive disclosure.** Secondary/inapplicable options are hidden, disabled, or staged rather than all exposed at once; complex products onboard gradually. — *Why:* exposing everything raises perceived complexity and decision time (Hick's Law). — **high**
- [ ] **Choice managed.** Each screen avoids excessive simultaneous choices; a recommended/default option is highlighted when many exist. — *Why:* decision time grows with the number and complexity of options. — **high**
- [ ] **Complexity absorbed (Tesler's Law).** Irreducible complexity is borne by the system (smart defaults, prefill, "same as billing," automation), not shipped to the user. — *Why:* every system has irreducible complexity; pushing it onto users penalizes them to ease the engineer's job. — **med**
- [ ] **Not over-abstracted.** Affordances and next steps remain clear; icons carry text labels; minimalism hasn't stripped decision cues. — *Why:* over-simplification removes the information users need to decide. — **med**
- [ ] **Grouped meaningfully.** Items are grouped into a small number of named categories (groups ≪ items); related items are close/alike and unrelated ones distinct; no "Miscellaneous/Other" bucket. — *Why:* proximity/similarity signal relatedness and speed search. — **med**
- [ ] **White space present.** Generous, intentional negative space focuses attention; the search/target zone isn't cluttered. — *Why:* less information per screen = more attention per element; sparse targets are found faster. — **med**
- [ ] **Information architecture is broad/shallow.** Important content is within ~2–3 clicks and each click feels like progress; nav isn't overcrowded; lower-tier pages are designed. — *Why:* broad-shallow trees beat deep ones; users spend as much time deep in the site as at the top. — **med**

## 3. Affordances, signifiers & conventions

- [ ] **Clickability obvious.** Interactive elements look interactive and non-interactive ones don't; no hover-only reveal, no "minesweeping." — *Why:* users constantly hunt for the next click; ambiguous clickability causes hesitation/errors. — **high**
- [ ] **No instructions for simple things.** No simple control requires a pasted-on label/sign or "click the button at right" text to be operated. — *Why:* if a simple thing needs an instruction, the design (the signifier) has failed. — **med**
- [ ] **Icons comprehensible.** Unlabeled icons appear only when they are well-known standards; everything else is labeled (not tooltip-dependent). — *Why:* most icons are ambiguous; tooltips fail on touch and go unread. — **med**
- [ ] **Conventions matched (Jakob's Law).** Layout, navigation, controls, and metaphors follow what users know from other products; deviations have a defensible, tested reason. — *Why:* users transfer prior knowledge; needless novelty forces relearning. — **high**
- [ ] **Familiar = familiar behavior.** Anything that looks like a known object behaves like it; controls/concepts are internally consistent (same thing treated the same everywhere). — *Why:* familiar-looking but unfamiliar-behaving elements break mental models. — **high**
- [ ] **Conceptual model coherent.** The interface presents a single consistent model that matches how the system actually behaves and users' expectations; metaphors are light, not over-literal. — *Why:* a false/incoherent system image yields wrong mental models and failed tasks. — **high**

## 4. Interaction mechanics

- [ ] **One control per function / modes visible.** Functions don't outnumber dedicated controls (or extras use a guiding display); if modes exist, the active mode is always visible; similar controls are differentiated by shape/color/spacing. — *Why:* overloaded controls and invisible modes cause mode and description errors. — **high**
- [ ] **Natural mapping.** A control's location/motion maps to its effect via spatial or cultural analogy (up = more). — *Why:* arbitrary mappings require memorization and cause errors. — **med**
- [ ] **Feedback for every action.** Every action and load state produces immediate, perceivable feedback (acknowledged within ~0.1 s) placed near the just-used control. — *Why:* no/misplaced feedback causes repeats, false causality, and abandonment — a top usability failure. — **high**
- [ ] **Responsiveness (Doherty).** System responds within ~400 ms, or masks longer waits with skeleton screens / progress / ETA / optimistic UI; busy indicator after 0.1 s, progress after 1 s; unavoidable delays fall between tasks, not mid-task. — *Why:* responsiveness is the single biggest driver of satisfaction. — **high**
- [ ] **Hidden behaviors visible.** Automatic/"smart" behaviors expose their state and consequences and confirm before anything destructive. — *Why:* invisible behavior causes destructive surprises (iDrive Autostore). — **med**
- [ ] **Targets sized & spaced (Fitts).** Touch targets ≥44×44 pt (iOS) / 48×48 dp (Material) / 44×44 CSS px (WCAG) with ≥8 dp spacing; whole visible button (incl. labels) is clickable; primary actions near the last element / at screen edges. — *Why:* finger pads are 10–14 mm; small/crowded targets cause errors. — **high**
- [ ] **Motion safe & meaningful.** Animations are purposeful, consistent (defined vocabulary), fast (≤200 ms), never the sole signal; a reduced-motion alternative exists. — *Why:* motion can trigger vestibular/seizure harm and cause banner-blindness tune-out. — **high**

## 5. Errors, forgiveness & memory

- [ ] **Layered error defense.** Errors are prevented where possible; destructive/irreversible actions are protected by a forcing function or made reversible (undo / move-to-trash), not merely an "Are you sure?". — *Why:* errors are inevitable and confirmation dialogs don't catch slips. — **high**
- [ ] **Confirmations rationed.** Warnings/confirmations are reserved for infrequent, actionable, real-risk cases. — *Why:* overwarning causes habituation, so genuine warnings get ignored. — **med**
- [ ] **Forgiving input.** The product remembers and reuses non-sensitive input, does the right thing on clear intent (auto-correct typos), and never makes users re-enter or start over after Back/edit/wrong-order. — *Why:* people make small mistakes constantly; restarts destroy goodwill. — **high**
- [ ] **Error messages humane & useful.** Messages are written in user terms, state the specific problem and a likely fix, and avoid harsh/blaming words; they're visually distinct (no developer placeholder text). — *Why:* tone carries personality; unactionable/blaming errors break trust. — **high**
- [ ] **Recognition over recall.** No free recall of arbitrary tokens (passwords, PINs, URIs, codes); knowledge lives in the world (menus, prompts, "Forgot password?"). — *Why:* recall is hard and recall-based designs fail at scale (OpenID). — **high**
- [ ] **Working memory respected.** Users never carry information across screens (search terms echoed with results, instructions persisted, breadcrumbs beyond 2 levels); items to compare are side-by-side. — *Why:* working memory is ~4±1 items and volatile. — **high**
- [ ] **System-2 work offloaded.** The system does the math, diagnosis, and recall-of-IDs rather than forcing users to calculate, reason by elimination, or optimize many settings. — *Why:* slow deliberate work fails for most users and exceeds working memory. — **med**
- [ ] **Stable positions.** Menu/list/palette item positions are stable across sessions. — *Why:* moving items blocks spatial learning and dooms users to linear search. — **low**

## 6. Forms, questions & content input

- [ ] **Minimal fields.** Forms request only essential data and prefill known/derivable values; no duplicate or re-typed data. — *Why:* extra fields cut completion and breed false data. — **high**
- [ ] **No unnecessary questions.** No question is asked that the system is ~80%+ sure of, that the user can't answer intelligently, or that's asked more than once. — *Why:* needless questions are the top cause of unintuitive flows and only shift liability. — **high**
- [ ] **Field clarity.** Labels are adjacent to fields, required/optional is marked, units are in the label, and each field says what to type. — *Why:* distant/ambiguous labels slow entry and raise errors. — **med**
- [ ] **Correct widgets.** Radios (≥2) for mutually-exclusive, checkboxes for multi-select, open lists show all options; widget body language matches expected input. — *Why:* wrong widgets slow and confuse, especially older users. — **med**

## 7. Visual design, type & layout

- [ ] **Form serves function.** You can state in one sentence what the artifact must *do*, and every visual treatment advances that (no decoration for its own sake); aesthetics/usability/cost/reliability are balanced, none dominating. — *Why:* form is a subset of function; aesthetics-first design produces unusable artifacts. — **high**
- [ ] **Aesthetics intentional.** The look is judged by whether it reinforces structure/brand/goals (not taste); near-identical-but-different styles are eliminated; contrast guides the eye with smooth flow, not clutter. — *Why:* the aesthetic–usability effect makes attractive designs feel more usable — but beauty can mask real flaws in testing. — **med**
- [ ] **Legible type.** Body text ≥12 pt (≥10 pt resizable on screen; ≥14 pt for 65+), sentence/mixed case, left-aligned, simple face, 45–75 char lines; emphasis on only 1–2 words; no all-caps prose, no underline for non-links. — *Why:* poor presentation drops reading out of automatic mode (ALL CAPS ~10–15% slower; varied fonts ~20% slower). — **high**
- [ ] **Reading contrast.** Dark text on a plain, high-contrast, non-patterned background (aim ~5:1). — *Why:* black-on-plain reads up to 32% faster. — **high**
- [ ] **Brand DNA consistent.** One shared design DNA (color, type, voice, tone, spacing) is applied across every touchpoint; variations exist only where the user must take notice. — *Why:* one off-brand detail erodes trust in the whole. — **med**

## 8. Accessibility & robustness

- [ ] **Not color-alone.** Any meaning conveyed by color has a redundant cue (text/shape/icon/position); the palette survives grayscale + a color-blindness simulator; category color-coding ≤5 (max 10). — *Why:* ~8% of men are color-blind; displays vary. — **high**
- [ ] **Assistive baseline.** Text equivalents/alt text, keyboard operability, labeled forms, a "skip to main content" link, and resizable text are present. — *Why:* accessibility is a baseline requirement, not an enhancement (~8% of users have a disability). — **high**
- [ ] **Input variability tolerated (Postel's Law).** Layout survives ~300% text expansion, RTL orientation, user font-size increases, and varied devices/connections; uses progressive enhancement. — *Why:* be liberal in input, conservative in output. — **med**
- [ ] **Alerts where the eyes are.** Error/important messages appear near the just-used control with a symbol and/or brief motion (not a stationary top bar). — *Why:* peripheral vision is low-resolution and misses stationary muted items. — **high**

## 9. Navigation, wayfinding & home

- [ ] **Persistent, consistent nav.** Global navigation appears in the same place and behaves the same on every page (incl. home); a deep page passes the "trunk test" (Site ID, page name, sections, "you are here," search all identifiable). — *Why:* users may enter on any page and carry little spatial memory. — **high**
- [ ] **Meaningful links.** Link labels describe and match their destination's title (no "Click Here"); visited links change color. — *Why:* each link is a chance to choose wrong; visited-color is the one variable shown to improve find-speed. — **med**
- [ ] **Home conveys the big picture.** The home/landing page answers "what is this / what can I do / why here / where do I start" with a clear value-proposition tagline and obvious entry points; it isn't overloaded. — *Why:* the big picture is the first casualty of compromise. — **high**
- [ ] **No traps.** No unsolicited pop-ups; Back is never disabled; auth flows stay in-context (modal) rather than redirecting users away. — *Why:* traps and "kicked-out" moments frustrate and raise abandonment. — **med**

## 10. Trust, ethics & emotion

- [ ] **Value before cost.** A first-time user can get value with minimal upfront effort (no forced account/options/CAPTCHA before the top task); the product does the work for the user. — *Why:* if value isn't obvious and low-cost, users won't bother (Mint beat Wesabe). — **high**
- [ ] **No dark patterns.** Cancellation/opt-out is as easy as sign-up; business opt-outs are off by default; no false scarcity, forced continuity, or exploitative engagement loops; sensitive info is justified and optional. — *Why:* dark patterns cap growth, invite regulators, and break trust permanently. — **high**
- [ ] **Peak & end elevated.** Key success/completion moments are reinforced and the experience ends strongly; error/empty/404 states are humane and on-brand. — *Why:* people judge an experience by its peak and its end. — **med**
- [ ] **Warmth & personality.** The design has an appropriate, deliberate tone for its audience and stakes and isn't sterile/cold, especially in high-stakes moments. — *Why:* clarity is easy; comfort and attachment are the real challenge ("more emotions are better than less"). — **low**
- [ ] **Ethical altitude.** The design benefits users broadly over the long term (honesty, generosity, clarity) rather than exploiting them for a short-term metric. — *Why:* good design = ethics + aesthetics. — **med**

## 11. Process & validation (meta-checks on how the design was made)

- [ ] **Conscious decisions.** Each major choice can be answered with "why?" tracing to user research/testing — not default, mimicry, or fiat. — *Why:* nothing in the experience should happen by accident. — **high**
- [ ] **Explicit strategy & falsifiable requirements.** Documented product objectives + user needs, success metrics tied to shapeable behavior, and requirements stated positively, specifically, quantitatively (no "hip and flashy"). — *Why:* without a benchmark, choices are arbitrary and unevaluable. — **high**
- [ ] **Problem localized to the right plane.** Before fixing, the issue is traced to Strategy / Scope / Structure / Skeleton / Surface — a surface fix isn't applied to a structural problem. — *Why:* surface fixes can't repair deeper layers. — **high**
- [ ] **Right design, then right.** The core concept was tested early with real users (low-fidelity, multiple genuine alternatives) before heavy build-out. — *Why:* you can refine a wrong concept forever and still fail (iDrive, Wave, OpenID, FCPX failed by testing too late). — **high**
- [ ] **Validated by observation, not opinion.** The design was tested by watching real (non-designer) users do real tasks in the real environment — not by expert review alone or by what users *say*. — *Why:* designers are atypical experts; inspection methods have high false-positive rates (~1.3 per real hit); stated preference diverges from behavior. — **med**
- [ ] **Real content tested.** The layout was validated with real headlines, dense copy, actual photos/data — not placeholder/Greeked text. — *Why:* placeholder-perfect designs break under real load. — **med**
- [ ] **Redesign justified.** Any ground-up redesign delivers improvement clearly exceeding the relearning cost, keeps the prior version available, and retains/restores features users depend on. — *Why:* redesign destroys cognitive lock-in and drives users to competitors if the payoff is absent. — **med**
- [ ] **Content correct.** The underlying content is right and needed; usability effort isn't polishing access to content users don't want. — *Why:* content ranks above navigation and visual design; ease-of-use can't rescue wrong content. — **high**
