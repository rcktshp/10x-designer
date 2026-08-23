# Interaction Patterns — Critique Checklist

Self-contained, scoreable checklist for an external design-review tool. Each item: the check, why it matters, severity (high/med/low). Deduped across the cluster. Items are phrased so they can be marked pass/fail or 1–5 against an artifact. Many are conditional ("if applicable") — skip when the surface type doesn't apply.

## A. Feedback & responsiveness

- [ ] **Every user action gets immediate, perceptible feedback** (visual/audio/haptic) at the point of input. — *Silence reads as broken; users re-click or "press harder." On touch, every contact must respond.* — **high**
- [ ] **Feedback is placed near the locus of attention** and near the control it relates to (not error-at-top / action-at-bottom). — *Focused attention narrows to ~1°; distant feedback is missed.* — **med**
- [ ] **Feedback intensity/channel is proportional to importance and inverse to frequency**; not arbitrary or redundant. — *Over-feedback is intrusive; arbitrary cues sever cause→effect.* — **med**
- [ ] **Response-time thresholds are respected:** instant <0.1s, cue at 1s, progress+cancel past 10s, long work backgrounded. — *Preserves the sense of direct manipulation and flow.* — **high**
- [ ] **The primary action is protected against duplicate submission** (in-progress state / disable on submit). — *Prevents double charges/records.* — **med**
- [ ] **(Subjective speed)** Results/feedback are presented to feel fast (no ambiguity-induced delays). — *Perceived speed drives trust and delight.* — **med**

## B. Errors, safety & reversibility

- [ ] **Errors are prevented by design (Poka-Yoke):** invalid input is impossible via constrained controls; varied valid formats are normalized server-side. — *Well-designed rules make user error impossible.* — **high**
- [ ] **Errors are shown only when the system fails, never when the user did everything right.** — *Blaming the user for the design's gaps raises anxiety.* — **high**
- [ ] **Error messages are plain-language, blame-free, and give a concrete path forward**, shown in context next to the responsible field with double visual emphasis (color + icon/text). — *Technical/dead-end/hidden errors strand users.* — **high**
- [ ] **Inline validation fires on completion (blur), not while typing.** — *Premature errors interrupt and frustrate.* — **med**
- [ ] **Destructive/irreversible actions are reversible (global, persistent, multi-level Undo; send-delays)** or clearly warned, with consequence/commitment disclosed before commit. — *Users explore and make delayed-discovery mistakes.* — **high**
- [ ] **Friction/confirmation on an action is proportional to the cost of error; routine actions stay easy; large/destructive changes need explicit, proportional, foreshadowed input** (not a single casual tap/gesture). — *Balances ease of use against accidental loss.* — **high**
- [ ] **Risky/destructive controls are placed out of easy reach** (outside the thumb zone / deeper in the UI / not beside common safe controls). — *Prevents accidental "ejector seat" actions.* — **high**
- [ ] **Confirmation is achieved without reflexively-dismissed OK/Cancel dialogs** (deliberate gesture + undo, or just do-and-undo). — *Dialogs for the probable action break flow and are ignored.* — **med**
- [ ] **No dead ends:** success states offer next steps; error states offer remedies. — *Keeps users moving.* — **med**

## C. Choices, defaults & complexity

- [ ] **Options are minimized to meaningful choices, with one emphasized default/next action** (Hick's Law). — *Each option is a rule and a cost.* — **high**
- [ ] **Choices are sequenced most-consequential-first and deferred where possible** (narrow after a first result, not before). — *Early/excess choices slow and confuse.* — **med**
- [ ] **The system absorbs complexity rather than pushing decisions onto the user; it does not start from zero** (uses known context for defaults/prediction). — *Tesler's Law; the machine should handle memory/computation/search.* — **med**
- [ ] **Defaults serve the user's interest** (no adverse default opt-ins; no implausible default values; default only when one value fits most). — *People rarely change defaults.* — **high**
- [ ] **Scope is an MVP with later features road-mapped; every feature passes buildable + usable + valuable.** — *Launch complexity delays/kills products.* — **med**
- [ ] **The product/screen relies on the user's memory as little as possible** (recall replaced by recognition; known data not re-asked; password recall minimized). — *Computers should store/recall, not humans.* — **high**

## D. Navigation, layout & hierarchy

- [ ] **A clear visual hierarchy answers "what's important?" and "how are these related?"** via contrast and grouping. — *A bad hierarchy reads as confusion.* — **high**
- [ ] **Information/functions are consolidated** (single primary view with adjacent panes; minimal cross-window/page hopping; ≤3 panes for dense apps). — *Cross-window navigation is the worst excise.* — **high**
- [ ] **Displayed values are editable in place** rather than via a separate screen/dialog. — *Separating input/output adds excise.* — **med**
- [ ] **Elements align to a consistent grid with a uniform atomic spacing unit; near-equal sizes/spacing are made exactly equal.** — *Drives scanability and perceived quality.* — **med**
- [ ] **Forms have a single vertical scan line** (single column, top-aligned labels, even ~50–75%-field-height row spacing, tab order following reading order). — *Broken scan lines slow completion and cause skipped fields.* — **high**
- [ ] **The primary CTA is visible above the fold and left-aligned directly below the last field** (not centered, hidden, or far from the input column). — *Hidden/displaced CTAs cut conversion and add search time.* — **high**
- [ ] **Secondary actions are visually subordinated or removed** (no equal-weight Cancel/Reset/destructive twins). — *Equal-weight actions cause mis-clicks.* — **high**
- [ ] **Navigation is removed/reduced during focused multi-step tasks** (checkout, wizard, signup) and distractions/promos/active-logo stripped. — *Every extra link is an exit; drives abandonment.* — **high**
- [ ] **Layouts holding variable data (carts, feeds, lists) flex gracefully** from minimum to maximum realistic volume. — *Fixed layouts break.* — **med**
- [ ] **Same-type pages reuse one template.** — *Consistency, navigability, build cost.* — **med**
- [ ] **A single navigation paradigm (portal OR global) is chosen and applied consistently.** — *Mixed navigation confuses.* — **med**

## E. Affordances, controls & discoverability

- [ ] **Visual affordances match behavior:** what looks like a button acts like one; same-looking = same-behaving, different-behaving = different-looking; no false affordances. — *Broken affordances erode trust.* — **high**
- [ ] **If flat/minimal styling is used, interactive elements remain discoverable** via motion, peeking/clipped elements, glows, faint outlines, or static hinting. — *Flatness can hide controls entirely.* — **med**
- [ ] **Trigger visibility matches frequency of use; each trigger does the same thing every time;** valuable state is brought forward onto the trigger when useful. — *Frequent actions buried in menus are under-used; inconsistent triggers block mental models.* — **med**
- [ ] **Skeuomorphic visuals honor every interaction they promise** ("looks like" matches "acts like"). — *Broken metaphors misdirect and can cause data loss.* — **med**
- [ ] **Buttons are used for actions and links for navigation; design favors direct manipulation of content over abstract button layers where it fits.** — *Violated affordances and indirection add friction.* — **med**
- [ ] **Labels/microcopy are short, specific, plain, in the user's words, and exactly match the control they reference;** instructional copy isn't used where a label suffices. — *Ambiguous/mismatched labels cause hesitation and most usability problems.* — **med**
- [ ] **Icon-only controls have a tooltip/label backstop.** — *No symbol is truly universal.* — **low**
- [ ] **Required/optional indicators mark only the minority case, attach to labels, and have a legend if symbolic.** — *Blanket indicators are noise.* — **med**
- [ ] **Input field appearance affords the expected answer** (zip=5, phone segments) rather than uniform arbitrary widths. — *Length is a free affordance.* — **low**

## F. Touch & gesture (when applicable)

- [ ] **Frequent low-risk controls are in the thumb zone for the target form factor** (phone bottom; tablet sides/top corners; hybrid bottom corners), optimized for the most constrained grip. — *Thumbs drive ~75% of phone interaction.* — **high**
- [ ] **Content is positioned above its operating controls; touch feedback shows above the finger.** — *Hands block whatever they touch.* — **high**
- [ ] **Touch targets are ≥44×44px (7mm)** (≥1.6cm large screens, ≥0.9cm handhelds; corners/edges 9–11mm), spaced ≥2mm (≥9mm if flush). — *Below 7mm, mistap rate rises sharply.* — **high**
- [ ] **The layout is finger-friendly on large/widescreen too** (touch not assumed absent). — *Touch can't be reliably detected; hybrids put touch on big screens.* — **high**
- [ ] **Hover is used only as enhancement, with a tap path for every hover action.** — *Most touchscreens have no hover.* — **high**
- [ ] **The UI is built from touch/gesture primitives, not transcribed from a mouse GUI** (no hover-dependent affordances; scale gestures over zoom buttons). — *Avoids "GUI with touch."* — **high**
- [ ] **Every non-direct-manipulation gesture is taught by an on-screen affordance (self-revealing) and backed by a visible slow path;** taught just-in-time, not via up-front manuals. — *Undiscoverable gestures cause false negatives and exclude limited-mobility users.* — **high**
- [ ] **Gesture registration ties to finger-down + posture (finger count); continuation is disambiguated by direction, not speed/time.** — *Reduces ambiguity, lag, wrong feedback, and expert penalty.* — **high**
- [ ] **Transitions are fluid and animated with no visible manipulation lag and no abrupt appearance/disappearance.** — *Seamlessness is fragile and necessary.* — **high**
- [ ] **The same gesture behaves consistently across similar elements;** an invalid gesture is still recognized and explained, not silently ignored. — *Inconsistency breeds superstition.* — **med**
- [ ] **Custom web gestures don't override default browser gestures** (edge swipe, pinch, long-press). — *Conflicts cause accidental navigation and erode trust.* — **med**
- [ ] **(Multi-user surfaces)** A single user can act without disrupting others (no global modes, no forced shared-view shifts; ownership shown by content location). — *Supports varied task-coupling.* — **med**
- [ ] **Long `select` dropdowns are replaced** (type-ahead for long lists, exposed single-tap for short, steppers for small numeric ranges). — *Dropdowns are touch-hostile.* — **med**
- [ ] **Carousels are used only for linear/like-item content, with a single-tap "show all" alternative** (no miscellaneous homepage slideshow). — *~84% of carousel clicks hit slide 1.* — **med**
- [ ] **Eyes-busy contexts (driving) keep physical/hands-free controls** rather than flat glass. — *You can't feel a flat control.* — **med**

## G. Modes, motion & visual treatment

- [ ] **The interaction is mode-free, or limited to one clearly-signaled, spring-loaded/one-off mode that can't trap the user.** — *Modes are the chief source of action errors.* — **med**
- [ ] **Animation communicates the behavioral model and runs fast/smooth/natural/purposeful (<1s)**; not decorative or contradictory. — *Gratuitous animation slows tasks and reads as broken.* — **low**
- [ ] **The color palette is restrained (neutral base + sparing accents); red and warning iconography are reserved for errors/danger.** — *Avoids the "carnival effect"; preserves the error signal and learned conventions.* — **med**
- [ ] **Body text is ≥~10px, mixed-case (no all-caps), crisp sans-serif, ~80% contrast.** — *Legibility and word-shape recognition.* — **high**
- [ ] **(AR/HUD/overlays)** Non-active info is pushed to the periphery with minimal peripheral motion; active info sits at the current depth of focus; transparent layers are capped. — *Central motion/clutter obscures the real task.* — **high**
- [ ] **Audio fires only for events worth hearing when unseen (Foghorn Test), with a mute option and context-adapted volume.** — *Ill-timed sound alienates.* — **low**

## H. Voice, language, AI & conversation (when applicable)

- [ ] **The entry point answers "who are you / what can you do for me / why care / what next" in seconds, and the offering can be stated in one clear sentence.** — *Every page is potentially a first page.* — **high**
- [ ] **Action labels/CTAs describe the specific action and consequence** (no "Submit," "Get Started," "Click here"); no login wall before value is shown; no forced registration where guest checkout works. — *Vague/hidden CTAs break truthfulness and trust.* — **high**
- [ ] **Copy is free of empty buzzwords and skipped instructional paragraphs;** the right amount of info appears at the right moment (progressive disclosure). — *Filler dilutes meaning; mistimed detail adds burden.* — **med**
- [ ] **Navigation labels are literal and orientation-supporting** (no mystery-meat cleverness). — *Users must know where they are.* — **med**
- [ ] **The system has a defined, consistent personality appropriate to its real-world role, derived from user research, not internal jargon.** — *Undefined personality gets assigned a worse one.* — **med**
- [ ] **Language uses "you/your" for the user, reserves "our" for the company, and drops needless possessives;** humor (if any) respects mood and survives repetition; stored data is used quietly, not as surveillance framing. — *"My X" feels presumptuous and fails aloud; canned cheer grates.* — **low**
- [ ] **Notifications are limited to welcome, well-timed, value-bearing, action-enabling messages with consent.** — *Over-notification is the opposite of service.* — **med**
- [ ] **A literal chat/voice interface is used only where it's genuinely faster/easier than a menu or GUI.** — *Conversational façades overpromise.* — **med**
- [ ] **(Voice/gesture/always-on)** There is a clear low-cost way to enter/exit command mode (clutch, wake word, gaze gating, escape command). — *Solves the live-mic / accidental-command problem.* — **high**
- [ ] **Urgent alerts are delivered in at least two channels** (e.g., sound + visual in the user's path). — *Single-channel alerts get missed.* — **high**
- [ ] **Anthropomorphism matches actual capability; avatars/voices are clearly stylized OR fully realistic (no uncanny valley).** — *Mismatched expectations and near-human glitches erode trust.* — **high**
- [ ] **If the system acts on the user's behalf, the agency-vs-autonomy distinction is visible; agents are interruptible and show what was done and why.** — *Silent autonomy destroys trust.* — **high**
- [ ] **Sole-factor biometric/voice auth has a second factor and handles accent/variation.** — *Spoofing and false rejects.* — **high**
- [ ] **A flashy gesture/voice control is not used where a physical control serves better** (fine motor, tactile, eyes-free needs). — *Novelty over fitness fails users.* — **med**
- [ ] **Language was designed alongside visuals/interaction (no lorem ipsum, no separate editorial track).** — *Words are a design material.* — **med**

## I. Platform fit & mental models

- [ ] **The interface tracks the user's mental model, not the implementation/database model** ("outside in," not "inside out"). — *Mismatch causes cognitive friction.* — **high**
- [ ] **Familiar conventions/patterns are reused; novelty is justified by clear added value** (significant change is significantly better). — *Borrowed familiarity speeds learning; gratuitous change reads as a gimmick.* — **med**
- [ ] **The design relies on idioms rather than forced metaphors/skeuomorphism that limit power or confuse.** — *Metaphors don't scale and become excise.* — **med**
- [ ] **Product posture is explicit and consistent** (sovereign = dense/muted/full-screen; transient = bold/simple/single-window). — *Posture mismatch feels jarring.* — **med**
- [ ] **The design fits its hardware/ecological niche and form factor** (vertical vs. horizontal vs. mobile biomechanics, privacy, contact calibration) rather than a blended/ported design. — *Tailored software feels natural.* — **med**
- [ ] **The design respects the actual input device's state model** (no reliance on a hover/tracking state the hardware lacks). — *WIMP secretly depends on hover; touch/in-air don't have it.* — **med**

## J. Engagement & games (when applicable)

- [ ] **Objectives are explicit, measurable, and stable (not shifting mid-experience).** — *Ambiguous/moving goals feel unfair.* — **high**
- [ ] **Each significant decision offers a meaningful choice (real trade-offs, partial ambiguity — not one dominant option, not pure luck).** — *Meaningful choice is the core engine of engagement.* — **high**
- [ ] **The user can always tell why they succeeded or failed (legible cause→effect).** — *Enables learning and a sense of control.* — **high**
- [ ] **The rewarded behavior is the behavior the design wants to promote; messages are enacted via gameplay (procedural rhetoric), not exposition.** — *Misalignment destroys intent; exposition wastes games' strength.* — **high**
- [ ] **Difficulty rises on a smooth slope matched to growing skill (flow channel); retry after failure is instant and low-cost.** — *Mismatch causes boredom/frustration drop-off.* — **high**
- [ ] **The system plays by the same rules as the user (no hidden advantages or faked randomness).** — *Detectable cheating triggers abandonment.* — **high**
- [ ] **The experience is intrinsically rewarding (not dependent on external/tangible prizes); reward systems are sized to session length; points/badges add real value; a leaderboard shows the user's own rank.** — *External rewards degrade motivation; tacked-on points add complexity.* — **med**
- [ ] **Any pay-for-advantage keeps a viable non-paid path and preserves competitive symmetry; scheduled play demands no more return visits than the audience sustains.** — *Pay-to-win and over-frequent cadence breed attrition.* — **high**
- [ ] **World richness/consistency is intact (no immersion-breaking glitches, gratuitous ads, incongruities); all reward/achievement conditions are attainable (tested).** — *A single break shatters immersion; impossible goals feel cruel.* — **med**

## K. Process & validation (when reviewing process artifacts)

- [ ] **There is a documented task flow / site map behind the design before high-fidelity work began; each screen supports a defined primary task.** — *Structure must be validated before pixels.* — **high**
- [ ] **Audience and intent are identified and fidelity matches; rich/state-based interactions can be experienced (simulated states), not just read.** — *Wrong fidelity wastes effort; static artifacts misrepresent RIA/AJAX.* — **high**
- [ ] **The core concept can be explained in under ~2 minutes; reviewers were primed on fidelity/functionality before the demo.** — *If not, the concept is unfocused; unprimed audiences derail.* — **med**
- [ ] **Designs were usability-tested early (paper/wireframe) with persona-matched users; scenarios were open-ended goals, not leading scripts; findings shared via clips/sessions.** — *Catches problems while cheap; biased data/unread reports waste testing.* — **high**
- [ ] **Thresholds (gesture angles, target sizes, tolerances) were tuned with fresh users, not the builders.** — *Designers/devs are atypical and self-train.* — **med**
- [ ] **The team shares named personas and a point of view; reviews use a per-attribute scorecard so one disliked element can't sink the whole design.** — *Avoids fruitless disagreement and wholesale rejection.* — **med**
- [ ] **Developers were involved early and the built output was reviewed against the approved design.** — *Prevents silent deviation/feature loss.* — **med**
