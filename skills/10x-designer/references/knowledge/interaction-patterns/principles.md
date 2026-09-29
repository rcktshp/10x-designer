# Interaction Patterns — Principles

Deduped timeless principles synthesized across the cluster. Where multiple books assert the same idea it is merged into one entry.

## Mental models & familiarity

- **Build the interface on the user's mental model, not the implementation/database model.** Reflect how users think about the task; mirroring internal code or DB structure ("inside out") causes cognitive friction. Design "outside in" from the user's goal.
- **Reuse familiar conventions, controls, and patterns so users transfer existing mental models.** Echo patterns from common apps (file explorers, email clients, right-click, drag-drop); leverage learned real-world controls and gestalt. Novelty for its own sake taxes the user.
- **Significant change must be significantly better.** Users adopt a departure from a familiar model only when the gain clearly outweighs the relearning cost; changing long-stable rules without obvious added value reads as a gimmick (swapping a familiar "Save As" flow for a silent autosave/duplicate model).
- **Idiomatic design beats forced metaphor.** Learned conventions (close box, scrollbar) scale and don't shackle the UI to physical limits; metaphors don't scale, fail across cultures, and become excise once learned. *Caveat for touch:* mimicry of reality/familiar metaphor is the chief touch-interface failure mode — design from the input device up.

## Reduce work, choices, and complexity

- **The computer does the work; the person does the thinking.** Offload storage, retrieval, calculation, and memory to the machine; reserve judgment for the human. Absorb irreducible complexity on the system side (Tesler's Law). If a system relies on human memory it has failed its human.
- **Give the product a memory; don't start from zero.** Remember settings, positions, recent files/values; use known context (time, location, device, prior behavior) to predict, prepopulate, and set defaults. Task coherence: if it's worth doing, it's worth remembering.
- **Offer the right number of the right choices at the right time (Hick's Law).** More choices = slower, more error-prone decisions. Limit options, rely on smart defaults, sequence the most consequential choice first, defer/narrow after a first result, and never present actions the user can't take.
- **Eliminate excise — work that serves the tool, not the goal.** Strip navigation overhead, permission-asking, hardware bookkeeping, and any element that doesn't earn its place. "Perfection is attained when there is nothing left to take away." Forms/wizards: cut every field that can be inferred or postponed.
- **Minimize and simplify — take things away until the design breaks.** Every visual element/difference must justify itself; "information consists of differences that make a difference." Limit controls to what the task requires.
- **Optimize for perpetual intermediates / the novice→expert path.** Most users are perpetual intermediates; move beginners to competence fast without obstructing experts. Touch interfaces specifically must provide a reliable path to genuine expertise and avoid a low skill plateau (overlapping primitives, no gulf of competence).

## Feedback, flow, and responsiveness

- **Every action needs immediate, perceptible feedback; close the loop.** Tighten the action→response gap; silence reads as broken and breeds superstitious "press harder / re-click" behavior. On touch, *every contact* must get a distinct visible response.
- **Feedback illuminates the invisible rules and is for humans.** It need only build a usable mental model, not mirror the system. Match the message ("happened / you did X / in progress / can't do that") to the right channel; keep it minimal and never arbitrary; intensity scales with importance and inverse to frequency.
- **Fit each piece of information to the channel that suits it best; route urgent signals to a second channel.** Spatial → sight, urgent → sound, ambient state → ambient sound; abstractions → language, physical manipulations → hands. Single-channel urgent alerts get missed.
- **Design for flow; make the interface transparent.** Good interaction becomes invisible, leaving the user facing their goal. Avoid unnecessary interruptions (modal dialogs, normalcy reports). For games/play, flow sets in only once users stop fighting the interface.
- **Seamlessness is necessary and fragile.** Immersion breaks at any small disturbance — latency, missing feedback, a jarring transition, an immersion-breaking glitch or gratuitous ad. Every contact gets fluid, animated response; nothing appears/disappears abruptly.
- **Respect response-time thresholds.** ≤0.1s = instantaneous (direct manipulation); ≤1s = responsive, cue at 1s; ≤10s = show progress; >10s = background + estimate + cancel. Subjective speed matters as much as actual speed — a search tool can feel faster than a technically-identical rival purely through perceived responsiveness.
- **Animation must communicate the behavioral model, not decorate.** Fast, smooth, natural, simple, purposeful (focus attention, show relationships, maintain context, indicate progress). Keep transitions <1s; halve the duration, then consider halving again.

## Errors, safety, and trust

- **Errors are the design's responsibility; prevent them by design (Poka-Yoke).** Constrain input so invalid answers are impossible (drop-downs over free text, reversible connectors, missing-attachment warnings); show an error only when the system itself fails, never when the user did everything right. Absolve the user — exploration is reasonable.
- **Make actions reversible; provide robust Undo.** Global, multi-level, persistent (saved-with-document) Undo; deleted-data buffers; brief send-delays for "un-undoable" actions. Disclose reversibility/commitment before the user commits.
- **Do the probable automatically; balance ease of use against error prevention.** Make routine actions easy; add friction/confirmation *proportional to the cost* of the error. Activation should be easy yet hard to trigger by accident; destructive/large changes need explicit, proportional, foreshadowed (reversible) input.
- **Defensive design: keep risky/destructive controls out of easy reach.** Place data-changing actions (Edit, Delete, Post) outside the comfortable thumb zone or deeper in the UI; inflect frequent items into reach, rare/dangerous ones away. Guard the "ejector seat."
- **Never leave a dead end.** Success states offer relevant next steps; error states always give an actionable path forward in plain, blame-free language.
- **Be truthful = match expectations.** Interactive truth is a strong correlation between what the user expects and what the system delivers; hidden value, login walls before value, and vague CTAs ("Get Started," "Submit") violate it even when not literal lies.
- **Don't cheat the player / user; the system plays by the same rules.** Hidden system advantages (rigged randomness, AI that sees your hand) are detected and breed abandonment. Make rules honest and legible: users must understand why they won/lost or succeeded/failed.

## Affordances, controls, and discoverability

- **Don't break visual affordances; never make a false affordance.** If it looks like a button it must act like one; objects that look the same must behave the same, and objects that behave differently must look different. On touch, "looks like" must be matched by "acts like" or users are misdirected (and sometimes lose data).
- **If you strip skeuomorphic/affordance cues (flat design), fill the vacuum.** Pure flatness hides what is interactive; restore discoverability with motion, peeking/clipped elements, glows, faint outlines, or static hinting.
- **A trigger should do the same thing every time, and its visibility should match its frequency of use.** Frequent actions = highly discoverable controls; rare actions can take some searching. A buried menu item is the least discoverable place for a frequent action. Bring valuable state forward onto the trigger (badge/count/progress).
- **Self-revealing gestures / teach interactions in context, just-in-time.** No gesture except direct manipulation is guessable; afford every other gesture with on-screen UI (just-in-time chrome, marking menus) and teach via coaching/leveling/power-ups, never up-front manuals. Always keep a visible slow path for non-obvious gestures.
- **Prefer direct manipulation; make content the control.** Let people act on the information itself (swipe, pinch, drag) rather than through an abstract button layer; use gesture for physical actions and language/GUI for abstractions.
- **Add a label only when the trigger can't convey it; keep copy short, plain, specific.** Labels are interface, not brand whimsy; never use instructional copy where a label suffices; copy must exactly match the control it references. Use the user's words.

## Visual hierarchy, layout, and legibility

- **Build a clear visual hierarchy via contrast and grouping.** Answer "what's important?" and "how are these related?" Prefer turning down the unimportant over turning up the important; align to a consistent grid with an atomic spacing unit; make near-equal things exactly equal.
- **Restrain the palette; reserve red for errors/danger.** Few hues, neutral/desaturated base with sparing high-contrast accents (avoid the "carnival effect"). Red/warning iconography carries the strongest error association — using it elsewhere destroys the signal. Keep learned color conventions (red = danger).
- **Legible body text:** ~80% text/background contrast, ≥~10px, mixed case (no all-caps, which kills word-shape recognition and reads as shouting), crisp sans-serif onscreen.
- **Place content above/before its operating controls; show feedback near the locus of attention.** Hands and arms block whatever they touch, and focused attention narrows to ~1°; put primary CTAs and errors where the eye and finger already are (above the finger, next to the field, above the fold).

## Platform, posture, and physicality

- **Match posture and platform to attention and context.** Decide sovereign (full-screen, dense, muted) vs. transient (bold, simple, single-window) vs. daemonic first; mobile adds satellite/standalone.
- **Tailor software to its hardware and ecological niche; don't blend designs across form factors.** Touch is not one "input" — devices vary in contacts, pressure, hover, orientation, size; a vertical wall, horizontal table, and handheld each need different designs. Touch design is industrial design: ask "how does it feel in the hand?"
- **Design to the thumb / most constrained grip; assume every screen is a touchscreen.** Thumbs drive ~75% of phone interaction; put frequent low-risk controls in the natural thumb zone and accommodate the single-thumb hold. Browsers can't reliably detect touch — make every layout finger-friendly.
- **Design for the actual input device's state model and the "intent" problem.** Touch lacks the mouse's tracking/hover state; most in-air systems are one-state (live-mic problem). The system must know when it is being addressed — provide a clutch, wake word, gaze gating, or escape command for voice/gesture/always-on input.
- **Don't chase the new for its own sake — sometimes a physical control wins.** A mechanical knob/button can beat a flashy gesture or touchscreen when fine motor control, tactile feedback, or eyes-free/eyes-busy use matters (automotive dashboards have swung back to physical knobs for this reason).

## Conversation, language, and personality

- **Conversation is the original interface; words are a design material.** Design language from the start alongside visuals/interaction (no lorem ipsum, no separate editorial track). Obey the cooperative principle: say enough but not too much, stay truthful and relevant, and be clear — plus politeness.
- **Software should behave like a considerate, helpful human.** Anticipate needs, defer, fail gracefully, take responsibility; follow social conventions (turn-taking, politeness, interruptibility) appropriate to the user's culture. Speak the real role you play (banker, funeral director) — conversational ≠ informal.
- **Anthropomorphism raises expectations to match; mind the uncanny valley.** The more human the appearance/voice/behavior, the more human-level intelligence and grace users expect; downgrade signals (animal form, stiff voice) when capability is limited, and design for clearly artificial OR fully realistic — never almost-human.
- **Distinguish agency from autonomy and surface it.** Agency = act within preset rules; autonomy = self-initiate new actions. Autonomy is more powerful, riskier, and demands more trust; keep agents interruptible and show what was done and why.
- **Notifications require consent, timing, value, and a possible action.** Only interrupt when the user is likely to welcome it and can act in response; never for ads or value-less messages.

## Engagement, games, and motivation

- **Fun is emergent — critique the planes, not "fun."** Quality of a playful experience is the soundness of all five player-experience planes (Motivation, Meaningful Choices, Balance, Usability, Aesthetics); neglecting any one kills it.
- **Engagement requires meaningful choices under partial ambiguity.** Each significant decision needs real trade-offs — never one dominant option, never pure luck. Reward the behavior you actually want to promote (the desired action is the winning strategy); persuade through procedural rhetoric (enacting), not exposition.
- **Make objectives explicit, measurable, and stable; ramp difficulty along the flow channel.** Goals must be understandable and achievable; difficulty rises on a smooth slope matched to growing skill (too much → frustration, too little → boredom); make retry after failure instant and low-cost.
- **Be intrinsically rewarding; external/tangible rewards can poison motivation.** Size reward systems to session length and to the real motivations served; reinforcement schedules shape behavior but cannot make a boring product fun.

## Process: research, prototyping, testing

- **Research before pixels — answer who/what/why first; map task flow before screens.** The quality of research relates directly to the quality of the solution; chart branching flows (a single flowchart can replace ~80% of a text spec) before designing screens.
- **Understand audience and intent before anything else; fidelity is a sliding scale.** This single decision drives what/how much to prototype and which tool. Ask "what fidelity does this audience need to grasp this concept?" — use the least that communicates. Increase wireframe fidelity progressively; strip color/styling early so reviewers critique structure, not aesthetics.
- **Show, don't tell — a prototype simulates multiple states so stakeholders experience the design.** Words and static wireframes leave gaps; if you can't build it, fake it, and prime the audience first. Rough/unfinished artifacts invite franker feedback.
- **Prototype early and often, only what you need.** Small frequent investments expose mistakes when cheap (~10% in design vs. ~100% post-launch); plan ~70%, prototype the rest; build only the 5–6 scenarios needed.
- **Test while it's still cheap to change, with persona-matched users and open-ended tasks.** Usability-test wireframes/paper prototypes during the IA phase; recruit against a real-user screener; ask open scenario goals, not leading task scripts; the moderator is a near-silent fly on the wall; deliver findings via clips/sessions, not unread reports.
- **Anchor the team with named personas and a shared point of view.** Without shared personas teammates evaluate as different users (novice vs. admin) and argue fruitlessly; consolidate to ~3–6 named personas.
- **How a team communicates determines what it can build.** The degree to which a system feels human and goal-oriented reflects how well its creators interacted; involve developers early to prevent silent feature loss/deviation.
