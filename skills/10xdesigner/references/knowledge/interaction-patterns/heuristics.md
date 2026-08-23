# Interaction Patterns — Critique Heuristics

Deduped "if X then problem Y, fix Z" rules an agent applies to a design.

## Interruptions, confirmations, and feedback

- **If** a confirmation dialog asks "Are you sure?" / "Save changes before closing?" for the overwhelmingly probable action **then** it stops the proceedings and breaks flow → **fix:** do the probable action automatically and provide Undo ("Do; don't ask"). For touch, replace reflexively-dismissed OK/Cancel with a deliberate gesture (swipe-to-delete) + undo.
- **If** a dialog/alert reports normalcy ("Saved!", "Connection established") **then** it is needless interruption → **fix:** use modeless/ambient feedback for success; interrupt only for true anomalies.
- **If** a user-initiated action produces no visible/audible/haptic acknowledgment (or a touch produces no response) **then** users wonder "did anything happen?" and press harder / re-click / submit duplicates → **fix:** give every action immediate feedback at the point of input; on touch give every contact a distinct response per error cause; on submit swap the button for an in-progress state.
- **If** error/status feedback sits far from the locus of attention (error at top, Submit at bottom) **then** it is overlooked (attention narrows to ~1°) → **fix:** place feedback in context next to the input/action, or draw the eye with motion.
- **If** feedback is overloaded (animation + sound + haptic) on a low-importance frequent event, or is arbitrary (generic beep, redundant tooltip) **then** it is intrusive and severs cause→effect → **fix:** convey the most with the least; reserve multichannel for high-priority events; tie feedback to the actual action/result.
- **If** a response takes >1s with no cue, or >10s without progress + cancel **then** users lose the sense of direct manipulation → **fix:** cue at 1s, progress + estimate + cancel + background past 10s.

## Choices, options, and complexity

- **If** the app interrogates the user with stacked questions / up-front options instead of acting **then** users feel badgered and disempowered → **fix:** start from a "good enough" default they can tweak (no blank slate); remember prior answers; absorb complexity on the system side.
- **If** a screen offers many options of equal weight (or all relevant choices forced up front) **then** decisions slow and users can't tell which action relates to the input (Hick's Law) → **fix:** reduce options, place the action in close proximity to its field, present the most consequential choice first, and let users narrow afterward.
- **If** a frequent task uses a wizard / screen-per-step or many prominent choices **then** flow breaks and rules multiply → **fix:** reduce to smart defaults; use state changes / progressive disclosure instead of new screens.
- **If** a low-value option clutters the UI (a rarely-used affordance with near-zero adoption) **then** it adds rules without value → **fix:** remove it or demote it.
- **If** v1 / the launch crams in many features **then** entry is delayed and the product may fail; mature products choke UX with features few use → **fix:** cut to MVP essentials, roadmap the rest, and run each feature through buildable + usable + valuable.

## Navigation, layout, and hierarchy

- **If** information/functions scatter across many windows/dialogs/tabs requiring shuttling **then** users suffer navigational trauma and lost flow → **fix:** consolidate into a single primary view with adjacent panes (≤3 panes for sovereign apps).
- **If** a displayed value can only be changed on a different screen/dialog **then** input/output are separated per the implementation model → **fix:** allow input wherever you have output (edit in place).
- **If** the interface presents deep nested hierarchies as the navigation model **then** non-developer users get lost (real-world storage is monocline) → **fix:** present a flat/monocline model plus search.
- **If** elements don't align to a consistent grid, or sizes/spacing are "almost" equal **then** the layout feels unstable and scans slowly → **fix:** align to a grid with an atomic unit (e.g., 4px); make near-equal things exactly equal.
- **If** labels/inputs zig-zag or sit in two columns with no consistent vertical axis **then** the scan line breaks, completion slows, tabbing jumps → **fix:** single column, top-aligned labels, one vertical path, even spacing (~50–75% of field height between rows); tab order follows reading order.
- **If** the primary CTA is below the fold, centered, or far from the input column **then** conversion drops and users hunt (~6s lost) → **fix:** make it visible above the fold, left-aligned directly below the last field.
- **If** a critical flow (checkout, wizard, signup) keeps full site nav, promos, and an active logo **then** every extra link is an exit and abandonment rises → **fix:** strip distractions and remove navigation during the focused task; restore on completion/cancel.
- **If** a page holds widely varying data (cart of 1 vs. 50) on a fixed layout **then** it breaks → **fix:** design to flex from minimum to maximum realistic volume.
- **If** many same-type pages have bespoke layouts **then** the product is inconsistent and costly → **fix:** define one reusable template, vary only content.

## Affordances, controls, and discoverability

- **If** a control looks like a button/affordance but does nothing or behaves unexpectedly (false affordance), or same-looking controls behave differently **then** users are confused and lose trust → **fix:** make appearance match behavior; same look = same behavior, different behavior = different look.
- **If** flat/minimal styling removes affordances so users can't tell controls from content **then** the UI is harder to learn → **fix:** add motion cues, peeking/clipped elements, glows, faint outlines, or modest static hinting.
- **If** a frequently-used action is buried as a menu item / invisible trigger (gesture, key command) **then** it is effectively invisible and under-used → **fix:** elevate to a visible control proportional to its frequency; for invisible triggers also provide a visible path unless there is no control surface.
- **If** a control does different things on different activations (Home button, menu that toggles) **then** users can't form a mental model → **fix:** make the trigger deterministic, or give clear feedback for the alternate path.
- **If** a novel/hidden interaction (drag-drop, right-click, abstract/multi-finger gesture) is the only path **then** ~half of users won't discover it → **fix:** provide a discoverable fallback / visible slow path, reserve the gesture as an accelerator, and reveal it just-in-time after the slow path is used a few times.
- **If** an icon-only action is ambiguous **then** some users won't understand it (no symbol is universal) → **fix:** add a tooltip/label backstop.
- **If** a skeuomorphic element looks like a real object but ignores its expected interaction (an address-book app deleting an entry on a swipe with no warning) **then** users are misdirected and may lose data → **fix:** honor every interaction the visual promises, or drop the realistic look.

## Errors and input

- **If** a free-text field accepts invalid input (future birth years, malformed phone/email, stray `#` in hex) **then** preventable errors occur → **fix:** constrain with drop-downs/menus (Poka-Yoke) and forgivingly normalize varied input server-side (requisite variety / flexible input).
- **If** an error message appears when the user did everything right, is generic ("Error"/"Fatal Error 773"), technical, or offers no path forward **then** the design offloads its complexity onto the user → **fix:** prevent the error; if unavoidable, state plainly what happened and how to fix it, inline, blame-free, with an onward action.
- **If** an error message uses the same font/color as labels, hides in a dismissable modal, or fails to flag the responsible field **then** users can't find or fix it → **fix:** make errors the most prominent on-screen element (color + icon + text), in context next to the field (double visual emphasis), with the remedy visible.
- **If** inline validation fires while the user is still typing (on the first character rather than on completion) **then** it interrupts and annoys → **fix:** validate on blur / after the field is complete; add inline confirmation/suggestions/strength meters.
- **If** a consequential/irreversible action lacks reversibility, confirmation, or consequence disclosure **then** users commit mistakes they can't undo → **fix:** make it reversible (Undo, send-delay), warn clearly, and validate before committing.
- **If** a destructive control (Reset/Clear, send, financial entry) sits with no undo or next to common safe controls **then** a stray action wipes work or fires the "ejector seat" → **fix:** remove destructive secondary actions, place risky controls outside the easy thumb zone / deeper in the UI, and add Undo.
- **If** primary and secondary actions look identical **then** users fear/hit the wrong one (26% mis-clicked Cancel in one study) → **fix:** visually subordinate secondary actions (lighter style or text link), keep both left-aligned under the fields.
- **If** a default is implausible (a birthday defaulted to January 1 1975) or an adverse opt-in is default-checked **then** the default is wrong for most and breeds distrust → **fix:** default only when one value fits most; never default opt-ins against the user's interest.
- **If** a payment form asks card type separately, splits one datum across many fields, or asks for derivable/unnecessary data **then** completion drags and abandonment rises → **fix:** infer (card type from prefix, city/state from ZIP), collapse compound fields to one, run a Keep/Cut/Postpone/Explain audit (cutting 4→3 fields lifted conversion ~50%).

## Touch and gesture

- **If** primary controls/navigation sit at the top-center of a phone, or are stacked at the very bottom on Android (colliding with system buttons), or pinned with position:fixed on phones **then** the hand obscures content, reaches are uncomfortable, and mistaps spike → **fix:** put frequent controls in the thumb zone (phone bottom, tablet sides/corners), use action bar / split action bar / FAB on Android, lead with content + anchor-link "Menu" on web.
- **If** a touch target is <44×44px (7mm) on phones, <1.6cm on large screens / <0.9cm on handhelds, or adjacent targets are crammed **then** mistaps rise sharply (5mm ≈ 1-in-30 errors) → **fix:** ≥44×44px (≥9–11mm at corners/edges), iceberg targets, ≥2mm spacing (≥9mm if flush).
- **If** an interaction depends on hover (mouseover menus, hover-only reveals) **then** touch users can't reach it → **fix:** treat hover as enhancement only; provide a tap path (tap to peek, tap again to activate).
- **If** a touch design is a 1:1 transcription of a mouse GUI (zoom buttons where scale gestures fit, hover-dependent affordances) **then** it is "GUI-with-touch," not a NUI → **fix:** redesign primitives from the device up.
- **If** a gesture is justified as "natural/obvious" with no on-screen affordance to teach it **then** users won't discover it and false negatives spike (no gesture but direct manipulation is guessable) → **fix:** add just-in-time chrome / marking-menu affordances for both registration and continuation.
- **If** the same first action (one-finger slide) is overloaded onto many gestures, or registration is time/speed-based **then** the recognizer waits, shows wrong feedback ("pop"), and penalizes experts → **fix:** map registration to finger-down + posture (finger count); disambiguate continuation by direction, not speed/time.
- **If** a manipulation lags behind the finger, or anything appears/disappears abruptly **then** seamlessness breaks → **fix:** ensure immediate animated response; never saturate the processor.
- **If** the same gesture works in some lists but silently does nothing in others (swipe-to-delete working in one list but not another) **then** it is a false-negative inconsistency that breeds superstition → **fix:** make similar items support the same actions; if invalid here, still recognize it and explain.
- **If** a destructive/large change can be triggered by a single casual gesture (shake-to-delete) **then** accidental loss occurs → **fix:** require explicit, proportional, foreshadowed, reversible input.
- **If** a multi-touch system uses a global mode set by one touch, or one user's action shifts everyone's view in a loosely-coupled task **then** other users are disrupted → **fix:** avoid global modes (use localized modal spaces / posture); don't move a shared view unless the task is highly coupled; show ownership by content location.
- **If** custom web gestures override default browser gestures (edge swipe, pinch, long-press) **then** behavior is inconsistent and erodes trust → **fix:** stick to tap/swipe and design within what's left.
- **If** a long `select` dropdown (50 states) is used on touch **then** selection is slow and error-prone → **fix:** type-ahead for long lists, exposed single-tap options for short ones, steppers for small numeric ranges.
- **If** an auto-advancing carousel of miscellaneous content is the homepage **then** it hides what it features (~84% of clicks hit slide 1) → **fix:** make an editorial choice — one primary feature + visible secondaries + a single "More" tap.

## Modes, motion, and animation

- **If** a microinteraction has more than one mode (or an invisible edit/delete mode where the same action does drastically different things) **then** users commit mode errors → **fix:** eliminate the mode, give it its own screen, or use a spring-loaded/one-off mode that can't trap the user.
- **If** animation is decorative, slow, or contradicts the model (slides in left, exits down) **then** it slows the task and reads as broken → **fix:** make it fast, smooth, natural, purposeful (<1s); halve the duration, then consider halving again.
- **If** motion/data sits near the center of an AR/HUD overlay, or many transparent layers stack **then** it distracts, obscures the task, and collapses figure/ground (a center-screen HUD design) → **fix:** push non-active info to the periphery, minimize peripheral motion, cap layers, keep active info at the current depth of focus.

## Voice, language, copy, and personality

- **If** an interface/screen has no introductory sentence, or the offering can't be stated in one sentence **then** users don't know what to do and bounce (every page is potentially a first page) → **fix:** add one concrete sentence answering "what is this and what next?"
- **If** the primary CTA is generic ("Get Started," "Submit," "Click here") or a login wall hides value **then** it's untruthful and erodes trust → **fix:** describe the specific action and value; reveal what the service does before asking for signup; remove forced registration.
- **If** a label/action verb/icon is ambiguous, or instructional copy doesn't match the control ("Add items" vs. button "Purchase Objects") **then** users hesitate and err → **fix:** make the phrase define the action precisely and match the control wording exactly.
- **If** copy uses empty buzzwords (innovative, smart, world-class, compelling, helpful, "Oops" for serious errors) or long instructional paragraphs **then** it says nothing and gets skipped → **fix:** be concrete and specific; cut help (excess help signals a broken question); maintain a banned-words list.
- **If** explanatory text appears before the choice it relates to **then** it's too much info at the wrong time → **fix:** progressive disclosure — put detail after the relevant choice.
- **If** navigation uses clever "mystery meat" labels instead of plain category names **then** users can't orient → **fix:** literal, orientation-supporting category labels.
- **If** the voice is generically chipper / tries too hard / repeats canned cheer (overly breezy copy burying a delivery delay) **then** it grates and reads as insincere → **fix:** lead with the info the user actually wants; don't try to be funny; ensure humor survives repetition and respects the user's mood.
- **If** the system refers to itself as a watching "we" worried about "you," or uses stored data conspicuously **then** it feels creepy/presumptuous → **fix:** use stored info quietly to benefit the user; address the user as "you," reserve "our" for the company.
- **If** notifications are sent for ads, no-action messages, or at bad times (3am) **then** users mute or abandon → **fix:** only welcome, well-timed, value-bearing, action-enabling messages with consent.
- **If** the system has no defined personality (or one not derived from research) **then** users assign it a worse one → **fix:** define identity, expertise, mood, relationship appropriate to its real-world role, from user research.
- **If** a literal chat/voice bot is used where a menu/GUI would be faster **then** the conversational façade overpromises → **fix:** only go conversational when it genuinely eases the task.

## Voice/gesture/AI intent, anthropomorphism, autonomy

- **If** a voice/gesture/always-on interface has no clear way to enter/exit "command mode" **then** it misfires on incidental speech/motion (live-mic) → **fix:** add a clutch / wake word / gaze gating / escape command in a separate channel.
- **If** a UI relies on a flashy gesture/voice control where a physical button/knob would do (eyes-busy driving) **then** it sacrifices speed, precision, and eyes-free use → **fix:** keep mechanical/physical controls when fine motor or tactile feedback matters.
- **If** an assistant/avatar looks or sounds almost-human but isn't **then** it triggers the uncanny valley and distrust → **fix:** make it fully realistic or clearly stylized (animal/abstract); downgrade signals to match capability.
- **If** a system acts autonomously without surfacing it **then** users lose trust and control → **fix:** keep agents interruptible, show what was done and why, default to assistance/agency over silent autonomy.
- **If** sole-factor/voice/biometric auth is used **then** it's spoofable and accent-fragile → **fix:** require multifactor and account for accent variation.
- **If** an urgent alert lives in only one channel (visual only) **then** users miss it → **fix:** add a redundant signal in a second channel (sound for urgency).
- **If** color coding contradicts learned conventions (non-red for danger) or text is ALL CAPS (outside a deliberate retro effect) **then** users misread state and reading slows → **fix:** keep red = danger; use mixed case.

## Engagement and games

- **If** a gamified app rewards a behavior different from the one it wants to promote (a savings-goal app that ends up rewarding never spending) **then** the intent is destroyed → **fix:** make the desired real-world action the literal winning strategy.
- **If** one option strictly dominates a decision, or outcomes are pure luck **then** there is no meaningful choice and engagement collapses → **fix:** give each option real trade-offs (partial ambiguity).
- **If** players can't tell why they won/lost **then** they can't learn and feel unfairly punished → **fix:** surface the causal chain; direct attention to the relevant element.
- **If** the system has hidden information/control advantages (rigged randomness, AI sees your hand) **then** players sense cheating and quit → **fix:** apply identical rules to system and user; fully randomize and lock the sequence.
- **If** onboarding front-loads rules / a manual **then** you create a barrier at peak motivation → **fix:** minimalist just-in-time, in-context tutorials teaching only the next move.
- **If** difficulty spikes before prerequisite skills are practiced, or there's a long loading gap between loss and retry **then** drop-off/churn rises → **fix:** sequence challenges so each trains the next; make retry instant (rewind/save points).
- **If** points/badges are tacked on where they change no outcome, or a leaderboard shows only top-10 **then** they add complexity without value and most users get no feedback → **fix:** reward the thing that drives advancement; always show the user's own rank.
- **If** a pay-for-advantage model becomes effectively mandatory or breaks competitive symmetry **then** it crosses into a cheat and breeds resentment → **fix:** always keep a viable non-paid path; never grant invincibility-class advantages in competitive play.
- **If** scheduled play (streaks, daily bonus) demands return visits more often than the audience can sustain **then** participation dwindles → **fix:** require the fewest return visits most players will honor; A/B test cadence.
- **If** users struggle with the interface rather than the intended challenge (tiles won't slide where aimed) **then** it's a usability problem, not valuable difficulty → **fix:** resolve the usability issue; preserve only intended cognitive difficulty.
- **If** a single immersion-breaking element appears (glitch, incongruous dialog, gratuitous ad) **then** immersion shatters → **fix:** maximize world richness/consistency; remove illusion-breakers.

## Process and validation

- **If** a design jumped to high-fidelity mockups with no task-flow/site map behind it **then** the structure is unvalidated and late changes force expensive rework → **fix:** step back, produce a task-flow diagram, get sign-off before resuming visual work.
- **If** a wireframe is already styled with color/real fonts/polished graphics **then** reviewers critique aesthetics instead of structure → **fix:** strip to black-and-white shapes + placeholder until structure is approved.
- **If** a design relies on a long written spec / annotated wireframes / prose flow to be understood **then** stakeholders misinterpret it (15 people → 15 readings) → **fix:** replace with an interactive prototype + short ≤20-page supplement, and chart branching flows.
- **If** a concept/artifact can't be explained in under ~2 minutes **then** it's probably unfocused or flawed → **fix:** simplify until it self-explains.
- **If** a designer is faking rich/AJAX interactions but didn't prime the audience **then** critique derails into "is that real?" → **fix:** prime expectations on fidelity/functionality up front.
- **If** a test moderator talks a lot, leads, or answers for the participant, or participants don't match the user profile **then** findings are biased and worthless → **fix:** ask open scenario goals, stay a near-silent fly on the wall, recruit against a detailed screener; tune thresholds with fresh users, never the builders.
- **If** a participant pogo-sticks (down one path, back up, down another) **then** information scent / findability is failing → **fix:** flag as an effort metric; redesign navigation/labels.
- **If** findings are delivered only as a written report **then** nobody acts on them → **fix:** present via short review sessions and participant video clips.
- **If** the team disagrees whether an interface "works" **then** they may be picturing different users → **fix:** name the persona the screen serves and evaluate against that persona; use a per-attribute scorecard so one disliked element can't sink the whole design.
- **If** a stated design tenet conflicts with another (novel UI + no help content) **then** users won't understand the product → **fix:** flag the conflict early and negotiate, or add onboarding.
