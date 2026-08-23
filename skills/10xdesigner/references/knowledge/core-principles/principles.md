# Core Principles — Deduplicated

Timeless design principles synthesized across 14 books. Each entry merges every source that asserts it. Concrete numbers and named laws preserved.

---

## A. Process & strategy

### A1. Make every choice conscious and evidence-based — never by default, mimicry, or fiat.
Nothing in the experience should happen by accident. You must be able to answer "Why did you do it that way?" for every major decision, and the answer must trace to user research/testing — not personal taste, the loudest voice, the org chart, or "best practices" copied without fit. These three failure modes have names: **Design by Default** (experience mirrors the tech/org structure), **Design by Mimicry** (blindly copying conventions), **Design by Fiat** (a VP's favorite color wins). UCD is *not subjective*.

### A2. Frame the problem before solving it; a problem well-framed is half-solved.
Constraints generate creative energy; wide-open briefs drain it. Write a problem statement, constraints AND affordances, and a definition of success. Interrogate the frame's size and challenge — a faulty frame makes a perfect solution solve the wrong problem. Limitations are "the walls of the sandbox": saying no up front lets you say yes unequivocally while working ("with more constraints, better solutions are revealed").

### A3. Lead with Why; iterate on the *need*, not the existing form.
Strategy is the foundation: make product objectives AND user needs *explicit* (the key word). Sites/products fail most often not for technology or UX but because nobody answered "What do we want?" and "What do users want?" Improving the current artifact ("a faster horse") traps you inside the adjacent possible; asking *why* the thing matters reframes the need and opens new solutions. Collect user requirements (the need) before functional requirements (the technical solution).

### A4. UX has dependent layers — localize a problem before fixing it.
UX decomposes into five planes running abstract→concrete: **Strategy → Scope → Structure → Skeleton → Surface**, each the foundation for the one above. A surface fix (color/size) can never repair a structural problem (the function doesn't do what users expect). Before proposing a fix, localize it to a plane: is it the *bigness/purpleness* (surface), the *position* (skeleton), or the *behavior* (structure)? Don't finish an upper plane before lower planes settle; planes may overlap in time.

### A5. Make between knowing and doing — prototype, then test with real users early.
Insert *making* (sketches, models, prototypes) between knowledge and action to surface ideas the know→do shortcut can't. **Get the RIGHT design before getting the design right:** you can refine a wrong concept forever and still fail. Test multiple genuinely different concepts early — it both selects the superior one and elicits stronger criticism. The fatal error in iDrive, Google Wave, OpenID, and Final Cut Pro X was testing the core concept too late. Use low-fidelity prototypes early so users critique fundamentals, not pixels.

### A6. Define requirements falsifiably; define success metrics.
Requirements must be positive, specific, quantitative, and free of subjective language: "hip and flashy" can't be verified; "support ≥1,000 simultaneous users" or "conform to branding guidelines" can. State what the system *will* do AND what it won't (a frame to evaluate new feature ideas against, preventing scope creep). Tie success metrics to user behavior you can shape (conversion, return visits, support-call reduction). State a falsifiable hypothesis with an explicit pass/fail threshold *before* testing ("≥75% complete in ≤10 min"), or teams rationalize problems away.

### A7. Apply systems thinking — one shared "design DNA"; design interdependent parts all-at-once.
Don't build elements in isolation. Define rules (color, type, voice, tone, balance) that all pieces obey, each derived from the level above (strategy→messages→visual approach→choices). Static/separable parts suit a linear process; reactive, interdependent systems (brands, apps, services) require an all-at-once ("swarming") process — handle one-at-a-time and you get a **"Frankenbrand."** One off-brand detail (a plastic cap on premium scotch) erodes trust in the whole.

### A8. You're never finished — iterate, and be willing to reboot.
No one gets it right on the first version (products take ~five or six tries). Iterate via prototype→test→analyze→refine; keep distinct dated versions; iteration drives the largest measurable gains (one example: +30% completion, −25% task time, +67% satisfaction; another moved purchase success 22%→88%). Be willing to throw away assumptions (and code) that don't serve the vision. The target also moves: when work hits the cultural mark, the mark shifts.

---

## B. Cognition & attention (the human constraint)

### B1. Don't make me think — reduce cognitive load; the interface should fade into the background.
Every page should be self-evident; if not, at least self-explanatory. Each "question mark" over the user's head taxes a limited cognitive budget and erodes confidence. Extraneous load (mystery navigation, hard text, clutter) is attention stolen from the actual task. Separate *intrinsic* complexity (inherent to the subject — clarify it, never strip it) from *extraneous* load (avoidable — strip it).

### B2. Design for scanning, not reading; users satisfice and muddle through.
Users don't read, they scan for words matching their task; ~80% scan a new page, only ~16% read every word. They **satisfice** (pick the first reasonable option, not the best) and **muddle through** without understanding how things work. Support scanning: clear visual hierarchy, many descriptive headings, short front-loaded paragraphs, vertical lists, "billboard" pages. Put critical text on interactive control labels (which users *do* read).

### B3. Create a clear visual hierarchy: prominence ∝ importance; related = grouped; sub-items nested.
Appearance must mirror logical relationships and pre-process the page so users grasp it instantly. People prefer hierarchies and attend one level at a time; importance maps to vertical position and visual weight. Place important items consistently, toward the **top-center** (eye-scan order: top-center → left → right → down) so users pre-aim.

### B4. Respect working memory: ~3–5 items (4±1), volatile — never carry information across screens.
Working memory is the current focus of attention, not a store; capacity is 4±1 and declines with age. Don't make users remember system state, search terms, prior steps, or instructions between screens (echo search terms with results; persist instructions; add breadcrumbs beyond 2 levels). Put items to be compared side-by-side. **Chunk** content to fit more per unit. Miller's "7±2" is about chunks, not a license to cap nav items — visible options aren't memorized.

### B5. Recognition beats recall — show options, don't make users remember them.
"See and choose" is easier than "recall and type" — the basis of the GUI. Never force recall of arbitrary tokens (passwords, PINs, URIs, codes). OpenID failed by forcing users to recall a URI and which provider issued it; conventional sign-in lets them recognize a labeled field and click "Forgot password?". Put knowledge in the world (menus, prompts, natural mappings) rather than in the head.

### B6. Manage choice (Hick's Law) and conserve complexity (Tesler's Law).
Decision time grows with the number and complexity of choices (Hick–Hyman: RT = a + b·log₂(n)). Reduce, stage, or hide options until relevant; highlight a recommended choice; break complex tasks into steps. Every system has **irreducible complexity** (Tesler's Law) — it can only be shifted, not removed; the designer/system should absorb it (smart defaults, prefilled fields, "same as billing," automation) rather than ship it to the user. But don't oversimplify to abstraction — stripping cues (icons without labels) removes the information users need to decide.

### B7. Two minds: let the computer do System-2 work.
Fast automatic System 1 vs. slow controlled System 2. Novel actions, calculation, diagnosis, and reasoning-by-elimination are slow System-2 work most users lack training for and that strains working memory. Offload it: do the math, diagnosis, recall of IDs, and error-detection for the user so they focus on human judgment. First impressions form via System 1 in ~50 ms.

---

## C. Form, communication & meaning

### C1. Function is the parent; form is a subset — but don't skip beauty, and balance all dimensions.
Decide what the artifact must *do* before any color/typeface choice; an ugly-but-functional thing still gets used (Craigslist), while great design can't rescue empty content. Usability is one of several legitimate dimensions — balance aesthetics, reliability/safety, usability, cost, and function; designers go astray when one dimension (usually aesthetics or "winning a prize") dominates. Per the Shaker proverb: make it only if necessary and useful, but if it is both, *do not hesitate to make it beautiful*.

### C2. Aesthetics are functional — the aesthetic–usability effect (with a caveat).
Of two functionally identical interfaces, the one users find more attractive is perceived as (and becomes) easier to use: positive mood makes people more forgiving and better problem-solvers. Users judge credibility largely on look-and-feel within ~50 ms. **Caveat:** beauty can *mask* real usability problems in testing — watch behavior, not just stated opinions. (this scopes the "graphics rarely affect task success" claim to *performance*; credibility/professional appearance still matters.)

### C3. Beauty = surprise + rightness + elegance; form and function must feel inseparable.
A genuinely good idea hits you (surprise), fits its purpose (rightness/form-function fit), and uses the fewest elements needed (elegance). When shape matches purpose the pairing feels inevitable and signals authenticity. Use beauty as the yardstick: if an idea isn't beautiful, it probably isn't innovative. Don't be boring — a dull execution kills a bright idea — but put the surprise where you want the attention.

### C4. A UI is a conversation — evaluate every element by what it communicates.
A UI is a conversation between user and product in the language of UI. Decide what you need to communicate, then let that drive the design. If an element communicates nothing, remove it; if poorly, redesign it; if users must mentally translate it, show the translated version. **If you wouldn't say it to a user in person, don't say it in the UI** — and hold software to the same standards as human interaction (rude, arrogant, or annoying is unacceptable from software too). Every design has three levers: **message** (what is said), **tone** (inflection/arrangement — not the same as style), **format** (the medium); breakthroughs come from fresh configurations.

### C5. Design the experience, not just the product — and compete on it.
A product can be engineered correctly and even usable yet fail because *using* it is undesirable (overwhelming, confusing, embarrassing). Once technology crosses an "experiential threshold," specs stop predicting success (the iPhone won without spell-check; the iPhone 4 outsold rivals despite Antennagate). Design three levels: **visceral** (looks/feel), **behavioral** (function/usability), **reflective** (personal meaning, self-image, status). You can win visceral+behavioral and still lose reflective (the Zune vs. iPod). Delight = empathy + surprise + clarity, felt at the point of use — even an exit sign is an opportunity.

### C6. Suitability beats novelty; trends are the enemy of lasting design.
The principal concern is whether a solution *fits the task*; how much it deviates from convention is a separate, secondary question. "Different" is not a virtue — appropriate is. Trend-driven work dates fast, is derivative, and short-circuits systems thinking. Style is unavoidable but must be *chosen* from the work's essence, not borrowed (the "cover band" trap). Good taste is universal and earned; style emerges from limitations, not from mannerism or ornament.

---

## D. Simplicity, organization & layout

### D1. Simplify by thoughtful reduction first; the enemy is disorder, not complexity.
The simplest path to simplicity is to *remove* — but be careful what you remove (true simplification cuts function without significant penalty). Every element must earn its place ("would removing it hurt?"); kill needless and "vampire" elements that steal attention. Maximize **data-ink**; "perfection is when there is nothing left to take away." Value comes from what's discarded. Multiple design traditions converge here; The enemy can be reframed as *disorder* (drive it out by maximizing rich complexity AND ease of use together).

### D2. After removing all you can, SHRINK–HIDE–EMBODY and use progressive disclosure.
What you can't delete: make smaller (lowers expectations, earns forgiveness), **hide** complexity until needed (progressive disclosure — gray out inapplicable options, reveal as competence grows), and **embody** quality so "less" reads as "more valuable" (materials, craft, messaging — B&O's deliberately heavier remote). Onboarding should start gently, not front-load every feature ("shock and awe" → "woah").

### D3. Organize and group: related elements alike/together, unrelated distinct (Gestalt).
Grouping signals each element's role so users act intuitively instead of decoding the designer's intent — the designer does the hard work so the user's is easy. Use proximity (close = related), similarity, and shared background; apply Gestalt (Proximity, Similarity, Continuity, Closure, Figure/Ground, Common Fate) and re-inspect a finished layout against each to catch unintended implied relationships. Grouping only helps when group-count ≪ item-count. Labels go above/left of and closer to their own field than to neighbors.

### D4. White space is not waste; emphasize one focal point.
Empty space concentrates attention: "more white space = less information presented = more attention per item." Reduce clutter — targets in sparse areas are found faster. Give the single most important element the strongest emphasis (von Restorff: the distinct item is remembered) — but *sparingly*; when everything is emphasized, nothing is, and over-contrast causes tune-out. A page should have one focal point.

### D5. Simplicity needs the contrast of complexity, and needs emotional warmth.
You can't perceive simplicity without complexity to contrast it; the right balance is a *rhythm* of complex→simple over time/space. Pure minimalism can read as cold/sterile — "more emotions are better than less." Add warmth, personalization, or ornament where it deepens attachment (AICHAKU — designing objects people love for a lifetime). Clarity is easy; *comfort* is the real challenge, especially in high-stakes moments.

---

## E. Interaction mechanics

### E1. Make affordances visible and signifiers explicit; show what's possible and the current state.
Expose controls, options, and current state so users see what to do and confirm what happened (but don't expose *every* function at once). **Affordances** define what's possible; **signifiers** are the perceptible signals telling users what they can do (underlined = link, a button that looks clickable) — in virtual design, getting signifiers right is the designer's primary job. Make clickable things look clickable and non-clickable things not; never require "minesweeping" or hover-to-reveal.

### E2. If a simple thing needs a label/sign/instruction to operate, the design has failed.
"When simple things need pictures, labels, or instructions, the design has failed." A door needing a push/pull sign, a control needing a diagram, or a screen with "Click the button at right to continue" is under-designed — redesign the control (a flat plate = push; a prominent button labeled "Continue") and delete the text. (Complex things may legitimately need explanation.)

### E3. Use natural mappings and a coherent conceptual model.
Arrange controls to mirror what they control (stove burners; Mercedes seat-shaped control); up/louder = more. Natural mapping removes labels, learning, and memory (a 4-burner row against a 2D layout = 24 mappings to memorize → spatial mapping reduces it to 1). Provide a coherent **conceptual model** so users can predict effects; all communication flows through the **system image** (appearance + docs), so an incoherent system image breeds wrong mental models (the two-control refrigerator). Match icons/metaphors to users' existing models, but keep metaphors light — over-literal metaphors (a reservation system drawn as a telephone) obscure rather than reveal.

### E4. One control per function (or a guiding display) — when functions exceed controls, usability collapses.
"Whenever the number of possible actions exceeds the number of controls, there is apt to be difficulty." Overloaded controls force memorization and **mode errors** (the Leitz projector: short-press forward / long-press back). If the device has modes, make the active mode highly visible and minimize modes. Differentiate similar-but-different controls by shape, color, and physical separation to prevent description errors.

### E5. Provide immediate, informative feedback for every action and state.
Without feedback users repeat the action (double-deletes), abandon, or invent false causality. Acknowledge input within **~0.1 s** (preserve cause-and-effect — perception breaks past ~0.14 s), respond or estimate within **~1 s** (conversational-gap limit), show a busy indicator after 0.1 s and a progress indicator after 1 s; impose unavoidable delays *between* unit tasks, never mid-task. Place feedback where the user's eyes already are (the just-used control), not a far corner — misplaced feedback is one of the most common usability failures.

### E6. Responsiveness is the top driver of satisfaction — keep response under the Doherty Threshold (400 ms).
Productivity soars when neither human nor computer waits on the other (<400 ms — IBM 1982). ~100 ms feels instant; >1 s attention wanders; ~10 s is the limit for sustained attention. When real processing is slower, use perceived-performance techniques: skeleton screens, blur-up images, optimistic UI, progress bars showing work-remaining + total in human-scale time ("about 4 minutes," start ~1%, show 100% only briefly). Responsiveness ≠ raw performance.

### E7. Pointing obeys Fitts's Law (and the Steering Law) — bigger, closer, well-spaced targets.
Selection time grows with distance and shrinks with target width (ID = log₂(2D/W)). Size targets generously above platform minimums (iOS 44×44 pt, Material 48×48 dp, WCAG 44×44 CSS px), give ≥8 dp spacing (finger pads are 10–14 mm), make the *whole* visible button clickable (including labels/checkboxes), place primary actions near the last-used element and at screen edges (infinitely large targets on desktop). Avoid constrained pointer paths (walking menus); prefer pop-up/pie menus (Steering Law).

---

## F. Errors, trust & ethics

### F1. It's the design's fault, not the user's — blame the situation, not the person.
Most "human error" is the direct result of poor design; users blame themselves (especially on simple-looking tasks), creating a "conspiracy of silence" and learned helplessness that hides real defects. When users repeatedly make the "same mistake," that's the Fundamental Attribution Error — the system is failing them; reframe each negative behavior as a reaction to your design and fix the design (forgotten logout → add auto-logout).

### F2. Design for error with a layered defense: prevent → make difficult → help correct → recover.
"If an error is possible, someone will make it." Best is to make errors impossible (a car that won't start in gear); then make them difficult; then help users catch/fix; finally provide recovery (undo). Use **forcing functions** (interlock/lockout/lock-in) for dangerous or irreversible actions — warnings get ignored. A confirmation dialog won't catch a slip (the user is still committed and confirms reflexively); prefer reversibility (move-to-trash + undo). Reserve confirmations for genuinely irreversible actions, or habituation makes them ignored.

### F3. Be forgiving: remember input, do the right thing on clear intent, never make users start over.
People make small mistakes constantly. Never make users re-enter data or restart a form because they hit Back, changed one field, or filled fields in the wrong order. Auto-save by default; auto-correct obvious typos (Google) rather than erroring; reuse non-sensitive prior input. The amount of help a design needs is inversely proportional to its quality.

### F4. Match conventions and existing mental models (Jakob's Law); deviate only when clearly better.
Users spend most of their time on *other* products, so they expect yours to work like the ones they know — they transfer prior knowledge instead of relearning. Conventions work and need no learning; replace one only if the alternative is so self-explanatory it needs no learning curve, or adds enough value to justify one ("everyone says Wow"). Quality of structure is whether each step makes sense — "users invariably favor a clearly defined seven-step process over a confusingly compressed three-step one." **Anything that looks familiar must behave in a familiar way** (iDrive and Google Wave looked like known objects but behaved unlike them). Internal consistency matters more than external.

### F5. Earn and protect trust; people judge by the peak and the end (Peak–End Rule).
Trust is built by competence on small things, avoiding surprises, taking responsibility, and putting user goals ahead of yours; once broken it's very hard to regain — never trade it for a business goal. Protect the user's limited "reservoir of goodwill": surface key info (price, support, shipping), ask only for needed data, be candid. People remember an experience by its most intense moment and its end (the classic cold-water pain-recall studies) — elevate the peak (a success state), end strongly, and turn negative peaks (errors, 404s, waits) into humane, on-brand moments.

### F6. Design ethically — reject dark patterns; align with user well-being, not just metrics.
With power comes responsibility. Persuasive techniques (variable rewards, infinite scroll, exploitative defaults, false scarcity, obstructed cancellation) weaponize human psychology. Make cancellation/opt-out as easy as sign-up; keep business opt-outs off by default. Good design is a more *sustainable* growth engine than dark patterns: Classmates and Plaxo profited short-term then collapsed; ethical engagement compounds. Good design = ethics + aesthetics — change that benefits the most people over the longest time. Measure user success, not just time-on-site.

---

## G. Robustness, accessibility & input variability

### G1. Be liberal in input, conservative in output (Postel's Law) — anticipate variability.
Accept variable human input — any device, input method, language, connection, ability — and translate it for the system while producing reliable, accessible output. Allow text expansion up to ~300% (EN→Italian), support RTL, respond gracefully to user font-size changes, support progressive enhancement. Anticipating variability makes designs resilient.

### G2. Accessibility is a baseline, not an enhancement — and fixing clarity helps everyone.
~8% of users have a disability; ~8% of men are color-blind (red–green most common; <0.5% of women). Never encode meaning by color alone — pair with text/shape/position/icon and ensure high contrast (black-on-plain reads up to 32% faster; aim ~5:1 body text). Provide text equivalents/alt text, keyboard operability, skip-navigation links, resizable text, reduced-motion alternatives (motion can trigger vestibular/seizure harm), labeled forms. The biggest accessibility win is fixing the usability problems that confuse everyone first.

### G3. Reading is fragile and feature-driven — protect legibility.
Skilled reading is automatic; poor presentation drops readers into slow conscious decoding. Use adequate font size (≥12 pt prose, never <9; ≥14 pt for 65+; ≥10 pt resizable on screen), sentence/mixed case (ALL CAPS reads 10–15% slower), left-aligned text, plain high-contrast non-patterned backgrounds, simple body fonts (reserve personality faces for short labels). Line length 45–72 / up to ~75–100 chars; emphasize only 1–2 words (mixed bold/italic across prose slows reading ~20%); never underline non-links; use one highlighting method per page.

### G4. Place stationary alerts where the eyes are; peripheral vision is low-res but motion-sensitive.
The fovea is ~1% of the visual field; the periphery is ~20/200 ("legally blind") but motion-sensitive. Stationary, muted items in the periphery (a top error bar) are missed; place error/important messages near the just-used control, mark with a symbol, and/or briefly animate. Keep menu/list/palette item positions stable across sessions, or users never learn positions and search stays linear.

### G5. Content is the most critical element; nomenclature must come from the user's language.
Studies rank content above navigation, visual design, and interactivity; ease-of-use can't rescue wrong content, and great design can't rescue empty content. Build a controlled vocabulary from users' own words (a 1:1 lexicon — same name/same thing); avoid jargon and undefined acronyms (define on first use, link a glossary); use meaningful link labels that match the destination ("Jobs" not "Job-o-Rama"; never "Click Here"). Designer vocabulary ≠ user vocabulary.
