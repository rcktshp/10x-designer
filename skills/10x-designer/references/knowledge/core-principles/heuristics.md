# Core Principles — Critique Heuristics

Deduplicated "if X → problem Y → fix Z" spot-the-problem rules, merged across 14 books. Grouped by topic; numbers and named laws preserved.

---

## H1. Clarity, scanning & cognitive load

- **If** a page isn't self-evident at a glance (a non-expert can't say "oh, it's a ___") → users spend a limited cognitive budget decoding it and lose confidence → make it self-evident, or at least self-explanatory via layout + obvious names + minimal text.
- **If** a label is cute/clever/marketing/company-specific or jargony ("Job-o-Rama," "Quick Search," "manage," "reauthenticate") → users pause to decode → use the plainest obvious term ("Jobs," "Search"); spell out commands when space allows ("Weather" not "WB").
- **If** content is a dense "wall of text," running prose, or a horizontal list → it can't be scanned and exceeds working memory → chunk with descriptive headings, short front-loaded paragraphs, whitespace, and *vertical* bulleted lists (horizontal scanning is ~20% slower).
- **If** a page is full of "happy talk" ("Welcome to…", mission statements) or long instructions → real content is buried → delete happy talk; "get rid of half the words, then half of what's left."
- **If** a page/screen has more than one focal point, or everything has equal visual weight → the eye doesn't know where to look and nothing reads as important → give the single most important (task-initiating) element the strongest emphasis and de-emphasize the rest.
- **If** emphasis (color, motion, contrast, novelty) is sprinkled everywhere, or too many highlights compete → attention scatters and over-contrast causes tune-out → concentrate the strongest surprise on the single most important element (von Restorff), used sparingly.
- **If** the same info is highlighted two ways at once (color-coding AND ranking) → performance drops ~half → use one highlighting method per page.
- **If** a routine flow forces wide-and-deep branching or extensive look-ahead → it feels hard and error-prone → linearize/sequence decisions and reduce alternatives per step; everyday tasks should be shallow or narrow.
## H2. Choice, simplicity & information architecture

- **If** a screen presents many options at once with no prioritization, or a new user is dropped into a fully-featured UI → decision time and cognitive load spike, risking abandonment (Hick's Law) → reduce options, highlight a recommended choice, stage choices, or use progressive onboarding/disclosure (Slack).
- **If** a control surface exposes every function at once (a remote with dozens of buttons) → it reads as complex and intimidating → remove non-essential functions, then hide secondary ones behind progressive disclosure; gray out inapplicable options.
- **If** removing an element wouldn't hurt the design → it's a needless ("vampire") part adding disorder → remove it; if function can be cut without significant penalty, that's true simplification.
- **If** items are ungrouped, scattered, or split into nearly as many groups as items → organization is failing (grouping only helps when groups ≪ items) → SLIP (Sort, Label, Integrate, Prioritize) into a small number of named categories; cluster controls by function (Ribbon-style).
- **If** related items are far apart (or unrelated items are close), or a label sits below/equidistant from its field → users misread relationships → use proximity to convey relatedness; put labels above/left and closer to their own field than to neighbors.
- **If** look-alike controls serve unrelated functions (a dashboard of identical buttons) → identical form falsely signals identical purpose; users need a manual → group by meaning, similar treatment for related items, distinct for unrelated.
- **If** navigation is jammed with links, content feels shoehorned, or a "Miscellaneous/Other" bucket exists → the information architecture is incomplete → re-bucket from scratch into a few core single-word/verb categories; aim for important content within 2–3 clicks (each click feeling like progress).
- **If** every facet/attribute is exposed as a top-level organizing principle → the architecture becomes an unwieldy mess that burdens the user with choosing relevance → organize by the few aspects foremost in users' minds.
- **If** a screen has no breathing room / every region is filled → attention has nothing to land on and targets are slow to find → add negative space ("less information = more attention per item"); targets in sparse areas are found faster.
- **If** a UI is over-minimal to the point of abstraction (icon-only, stripped affordances) → ambiguity; users lack the cues to decide → add contextual cues such as text labels with icons.
## H3. Affordances, signifiers & clickability

- **If** an element looks like a button but isn't (or a real action looks like static text), or all text is styled alike so links aren't distinguishable → users click the wrong things or can't tell what's interactive → make clickable things look clickable and non-clickable things not; give links one consistent distinct treatment.
- **If** clickability is revealed only on hover/mouseover, or a clickable image has no cue → users must "minesweep" → make cues always-visible (point-and-click beats mouseover ~18% with fewer errors); make whole images clickable or delineate hot regions; prefer text links.
- **If** a device/control needs a pasted-on sign or "Click the button at right to continue" instruction → the affordances/signifiers failed → redesign the control (flat plate = push; a prominent "Continue" button) and delete the text.
- **If** an unlabeled nonstandard icon relies on a tooltip → users can't comprehend it and must experiment (tooltips fail on touch and go unread) → add a text label or drop the icon; reserve unlabeled icons for well-known standards.
- **If** an icon/label/metaphor doesn't match a real-world mental model (a coconut for search; the "set A/C to 50° to cool faster" model) → users misjudge the outcome → use conventional metaphors (magnifying glass = search) unless a clearly superior alternative exists.
- **If** critical parts (door edges, switches, handles) are hidden for "clean" aesthetics → users can't find/operate them → restore visible affordances; visibility need not destroy aesthetics.
## H4. Conceptual model, mappings, modes & feedback

- **If** controls imply independent effects but actually interact (the freezer/fresh-food dials) → users form a false model and can't reach the goal → present the true model in the controls, or redesign so they really are independent.
- **If** controls are arranged in a row but the things they control are in a 2D pattern → an arbitrary mapping must be memorized (up to 24) → arrange controls in the same spatial pattern (natural mapping → 1).
- **If** the number of functions exceeds the number of controls, or one control does two things by short/long press → controls become overloaded, forcing memorization and mode errors → add controls, add a guiding display, or reduce features; one control per function.
- **If** a mode changes the effect of actions without strong continuous feedback of the current mode → mode errors are inevitable → show the active mode prominently, prefer spring-loaded modes, or avoid modes.
- **If** an action produces no visible response (no confirmation, or a spinner in a far corner) → users assume it's broken and re-trigger or abandon → show immediate state change and place feedback near the just-used control, not a far corner.
- **If** feedback after an action exceeds ~0.1 s (instant) / ~1.0 s (thought flow) / ~400 ms (Doherty) → the interaction feels broken or out of control → respond fast or mask the wait (skeleton screens, progress, optimistic UI, blur-up); never let common actions exceed 1 s.
- **If** a long unavoidable wait has no feedback → it becomes a negative peak and users abandon → show progress + ETA + operational transparency (hourglass <10 s, progress bar ~60 s, signal+notice >1 min); a progress bar makes a task *feel* faster, and incremental fill feels faster than end-fill.
- **If** the system delays in the *middle* of a unit task → it's far more harmful than a delay between tasks → impose unavoidable delays at task boundaries (high closure), not mid-step.
- **If** the system does a hidden "smart" behavior on a designer's assumption (iDrive Autostore overwriting presets) → users get destructive surprises → make state and consequences visible; require explicit confirmation for destructive ones.
## H5. Errors, confirmations, forgiveness

- **If** a confirmation dialog ("Are you sure?") guards a destructive action → it won't catch the slip (the user is still committed and confirms reflexively) → make the action reversible (trash + undo) instead.
- **If** confirmations/warnings are overused, or an alert fires when the user can't/won't do anything differently → habituation makes them all ignored and the product feels hazard-prone/"designed by lawyers" → reserve alerts for infrequent, actionable, real-risk cases.
- **If** a dangerous/irreversible action has no forcing function (Nintendo "power off before inserting cartridge") → users eventually do it by accident; warnings are ignored → add an interlock/lockout that makes the hazardous order impossible; auto-save by default.
- **If** a destructive/catastrophic action looks like any ordinary command → users trigger it accidentally while scanning → make it hard to do (confirm, multi-step, precise gesture, physical separation) — "don't hide ejector-seat levers," but don't make them ordinary.
- **If** an error message uses harsh/lawyerly words (error, failure, illegal, invalid, abort, fatal) or blames the user → tone is hostile → use softer words ("problem / unable to / not valid / stop"), passive voice for user actions, and state the specific object, what's wrong, and how to fix.
- **If** an error message is developer placeholder text ("Null input field exception") or blends into the page → content/info-design was never owned → write user-facing copy; give errors distinct color/contrast.
- **If** changing one field, hitting Back, or filling fields out of order clears the form → the UI is unforgiving → remember and reuse non-sensitive input; never make users re-enter or start over; auto-correct obvious typos.
- **If** a control is disabled with no obvious reason → users are confused and keep looking → write the error message first; if it adds info, leave the control enabled and show it; otherwise remove the control (bias to remove on mobile).
- **If** users keep repeating the "same mistake" and the team blames them → Fundamental Attribution Error hides the real cause → reframe the behavior as a reaction to the design and fix the design (forgotten logout → auto-logout).
## H6. Targets, motion & input variability

- **If** touch/click targets are <~44×44 pt / 48×48 dp, the clickable area is smaller than the visible button, or adjacent controls have <8 dp spacing → mis-taps and wrong-action selection (finger pads 10–14 mm; Fitts) → meet platform minimums as floors; make the whole button (incl. labels) clickable; add ≥8 dp spacing; separate destructive from confirming actions.
- **If** a primary submit/confirm button is far from the last input or active element → extra travel and friction (Fitts distance) → place completion buttons near the last field (lower-right, visible without scrolling).
- **If** users must steer a pointer down a narrow path (walking menus, narrow rulers) → slow and error-prone (Steering Law) → widen the path or use pop-up/pie menus.
- **If** the layout assumes one language/length, fixed font size, or LTR only → it breaks for translated/RTL text or user font-size changes → allow ~300% text expansion, support RTL, respond gracefully to font-size customization. (Postel's Law: be liberal in input, conservative in output.)
- **If** motion/animation is the primary contrast or feedback mechanism, or animation is decorative/reused for different meanings → vestibular/seizure harm, banner-blindness tune-out, or miscommunication → use motion sparingly (transitions ≤200 ms, ≤100 ms if frequent), define a consistent animation vocabulary, never make it the sole signal, and offer a reduced-motion path.
## H7. Color, contrast, reading & legibility

- **If** meaning is conveyed by color alone (or a subtle/pale hue, blue-on-blue, red-on-green) → ~8% of men (color-blind) and low-vision users miss it; elements may moiré/vibrate → add a redundant cue (icon/text/shape/position), raise contrast, test in grayscale + a color-blindness simulator; cap category color-coding at ≤5 (max 10).
- **If** body text is light-on-dark, on a textured/patterned background, or low-contrast → reading slows (black-on-plain is up to 32% faster; aim ~5:1) → dark text on a plain high-contrast background.
- **If** prose is <12 pt (<10 pt on screen), ALL CAPS, centered, decorative, or rotated → reading drops out of automatic mode (ALL CAPS ~10–15% slower) → ≥12 pt (≥14 pt for 65+), mixed/sentence case, left-aligned, simple screen-optimized face, 45–72 char lines.
- **If** bold/italic/varied fonts run across large blocks of prose, or underline is used for emphasis → reading slows ~20% and underline reads as a link → emphasize only 1–2 words; never underline non-links.
## H8. Navigation, links, wayfinding, home page

- **If** a link reads "Click Here" or is vague, or its text doesn't match the destination page title → users can't predict where it goes and trust drops → use meaningful labels matching the target's heading; make embedded link text self-describing.
- **If** visited links don't change color → users re-traverse paths and lose orientation → blue = unvisited, purple = visited (the single variable shown to improve find-speed).
- **If** a page lacks a prominent page name matching the clicked link, or the Site ID/logo isn't top/upper-left → users can't get their bearings ("street signs" of the web) → add a prominent page name over the unique content; logo top-left, links Home.
- **If** persistent/global navigation differs in place, order, naming, or behavior across pages (or home differs from the rest) → users must re-learn the site after leaving Home → keep section names, order, grouping, and visual cues consistent (it should pass the "trunk test" from any deep page).
- **If** primary navigation/CTAs move position page-to-page → task performance degrades (users pre-aim to fixed locations) → place important items consistently, top-center / left-panel.
- **If** the home page tries to promote everything ("tragedy of the commons") or its tagline is a vague motto ("We bring good things to life") → the big picture and entry points get buried → ration home-page space; give a clear value-proposition tagline (~6–8 words) answering what/why/where-to-start.
- **If** lower-level (3rd/4th-tier) pages were never designed → the structure breaks down deep in the site where users spend as much time → design sample pages for all levels before debating home-page colors.
- **If** important navigation hides inside a pulldown/dropdown when only a handful of options exist → items can't be scanned → show key items as a static list / radios; reserve dropdowns for large known sets (states, countries).
- **If** a page requires horizontal scrolling, or a full-screen image / mid-page rule falsely implies the page bottom ("scroll stopper") → content below is missed → fluid left-justified layouts at 1024×768; keep above-the-fold partly textual.
- **If** an auth/permission flow redirects users away from the site → an unsettling, abandonment-prone moment ("kicked out") → use an in-context modal (Facebook Connect) instead of a full redirect.
- **If** a pop-up appears unsolicited or a new window/disabled Back traps the user → annoyance and lost navigation → no unsolicited pop-ups; never disable Back; give new windows an obvious close.
## H9. Forms, questions & widgets

- **If** a form asks for more than the minimum, info you already have, or duplicate/derivable data (re-typed billing) → completion drops (decision fatigue; Tesler's Law: complexity shipped to the user) → request only essentials; prefill known data; "same as billing"; autosuggest.
- **If** a UI asks a question you'd be ~80%+ sure of, that the user can't answer intelligently, or whose answer they don't care about → it's an unnecessary interruption ("stopping the proceedings with idiocy") that only shifts liability → act on the likely answer, remember prior input, or move the question to where it's relevant.
- **If** the same question is asked more than once → redundancy (each stack layer re-asks) → ask once and remember; tell the user you'll only ask once.
- **If** form labels are far from fields, required/optional fields aren't distinguished, or units are missing → entry slows and errors rise → adjacent labels, mark required fields (asterisk/bold), include units in the label, auto-place cursor in the first field.
- **If** the wrong widget is used (dropdown for a 2-way exclusive choice, checkbox for single choice, a lone radio, an open list hiding options) → performance and comprehension drop → radios (≥2) for exclusive, checkboxes for multi-select, show all open-list options without scrolling.
- **If** a control's body language conflicts (a long numeric box but spin buttons implying a near default) → internal inconsistency → make size/affordance/defaults agree with the expected input.
- **If** a form field isn't labeled to say what to type (username? email? URI?) → users don't know the expected input (OpenID URI fields) → label fields explicitly and give recovery affordances on the same page.
## H10. Trust, ethics, value & emotion

- **If** the product asks for an account / sign-in / options / CAPTCHA before delivering any value → users abandon (effort precedes benefit) → start with the top task as guest with good defaults; delay sign-in/options/saving to the end (Mint beat Wesabe by doing the work for users).
- **If** sensitive/personal info is requested without obvious need → trust drops and users bail → make it optional/labeled-optional, or explain why it's needed and ask only at commitment time.
- **If** business-serving options (opt-outs, add-ons) are enabled by default, or cancellation/opt-out requires hunting, guilt screens, or per-address repetition → users feel tricked; dark patterns erode trust, cap growth, and invite regulators → opt-in/off by default; make cancellation as easy as sign-up.
- **If** the design relies on variable rewards, infinite scroll/autoplay, false scarcity, or forced continuity → it weaponizes operant conditioning against user well-being → audit defaults, remove dark patterns, measure user success not just engagement.
- **If** a success/confirmation is a bland generic modal, or an error/404 is purely functional → a memorable peak is wasted and a negative peak hardens a bad impression → elevate key emotional moments and end strongly; make errors/empty states humane and on-brand.
- **If** a design is technically clear but cold/sterile, or minimalism is applied dogmatically → it lacks the warmth that drives attachment (clarity is easy, comfort is the challenge) → add emotional/ambient care, personality, or personalization (ROE / AICHAKU), especially in high-stakes moments.
- **If** work is technically competent but "flat"/generic → it's missing care/"love" for a specific audience → identify the real person it's for and tailor tone and detail to them.
- **If** the design serves narrow short-term gain at users' expense → "bad design" exhibiting vices → redesign for broad benefit over the longest time horizon.
## H11. Strategy, framing, concept & multiplicity

- **If** a design is defended primarily as "different," "original," "innovative," or "edgy" → purpose is being neglected (novelty isn't the job; suitability is) → restate the functional objective and judge against it.
- **If** you can't state the core idea/objective in one sentence (or it's polished but you can't name its Why) → the *idea* is unfocused, not just the description → fix the idea; define the root objective and re-justify each choice against it.
- **If** the brief just asks to improve the existing artifact ("make the horse faster") → imagination is trapped in the adjacent possible → ask "why is this important?" to reframe the *need* and explore new formats.
- **If** the brief is wide-open with no constraints → over-designed, under-focused output (nothing to break through) → tighten the frame (problem statement, constraints, affordances, success definition).
- **If** the stated problem is accepted without questioning its boundaries → you may solve the wrong problem perfectly → ask whether the frame is the right size and around the right challenge.
- **If** message, tone, and format are mismatched (a metal-band poster styled like a classical concert), or style is bolted on as decoration → the levers are misconfigured / tone is confused with style → re-tune tone to the message+audience and confirm the format affords it.
- **If** the design imitates a competitor or "best practices" without independent thinking (shadow planning) → derivative, limited work (their context isn't yours) → design for *this* client's specific situation.
- **If** there's no explicit written strategy (objectives + user needs) or success metric → decisions are made by default/fiat and can't be evaluated → produce a concise strategy doc and metrics tied to shapeable behavior.
- **If** a usability problem is debated as a surface fix (color/size) → the team may be solving on the wrong plane → localize it: surface (bigness/purpleness), skeleton (position), or structure (behavior).
- **If** a critique judges a design against one "correct" solution → it ignores legitimate multiplicity (no fixed answers; Shaker/Eames/Gehry chairs) → assess fit-to-need and internal coherence, not deviation from a single ideal.
- **If** users give a product many conflicting definitions / can't say what it is → the concept is too far beyond convention with no shared mental model (Google Wave's four definitions) → anchor to one clear familiar metaphor or narrow the concept.
## H12. Process, prototyping & testing

- **If** the team moved straight from knowing to doing with no prototype, or fell in love with the first idea → the solution is likely off-target and unchallenged → insert a making step; generate many cheap ideas, separate brainstorming from editing, prototype multiple hypotheses, then test.
- **If** three concept options are presented for the client to choose among → muddled feedback and "Frankensteining" (viewers combine opinions) → present ONE refined direction; editing the alternatives is the designer's job.
- **If** a prototype shown for feedback is high-fidelity → users only nitpick details and won't challenge fundamentals (assume it's near-final) → use low-fidelity (paper) prototypes early; present genuinely different options to invite real value judgments (avoid "Commissioned Artist Syndrome").
- **If** a design looks great with Greeked/placeholder text but wasn't tested with real content → it may break under real load (real headlines, dense legal copy, low-res photos, live data) → flow in actual content and mock up in its real context.
- **If** wireframes/user-flows/hierarchy were skipped for a slick comp → structural and grid problems surface late and expensively; dead-ends go unnoticed → wireframe and flowchart first (most system rules belong at the wireframe stage).
- **If** the core concept wasn't tested with real users before heavy build-out → flaws surface only at launch, too costly to fix (iDrive, Wave, OpenID, FCPX) → test the concept early; get the RIGHT design before getting it right.
- **If** a critique relies solely on heuristic/expert review → reported "problems" are unreliable (~1.3 false positives and ~0.5 misses per real hit; severity disagreement; 16 evaluators needed for 75% coverage) → treat inspection findings as hypotheses to validate with task-based usability testing (~3–6 users per round, repeated).
- **If** a test produces ambiguous data with no pass/fail threshold → teams rationalize problems away → state a falsifiable hypothesis with an explicit threshold before testing ("≥75% complete in ≤10 min"); run a pre-mortem and make it safe to voice concerns.
- **If** decisions rest on stated preference or what users *say* (or a closed bug report) → you miss real behavior and the underlying goal (people say "healthy" then grab pizza) → observe behavior on real tasks in the real environment (contextual inquiry); ask what the user was trying to achieve.
## H13. Consistency, conventions & redesign risk

- **If** the same action/concept (a link, "save," OK/Cancel, a content type) is treated differently across contexts, or OK/Cancel swap positions → maddening, error-prone relearning → enforce one convention for one meaning everywhere; internal consistency before external.
- **If** the same gesture/shortcut means different things in different contexts (scroll/zoom over a map vs. list) → operation never becomes automatic ("muscle memory") → standardize keystroke/gesture mappings across contexts.
- **If** a familiar-looking control behaves unfamiliarly, or a novel workflow replaces an understood task (print-preview-before-print) → broken mental models; users refuse the learning cost (iDrive, Wave) → conform to the convention unless the replacement is demonstrably better and tested.
- **If** confirmation/destructive buttons use generic OK/Cancel for a "cancel reservation" action → literal scent-following picks the wrong one → label buttons with the actual outcome ("Keep reservation" / "Cancel reservation").
- **If** a ground-up redesign ships missing features users depend on and removes the old version → backlash/churn (forced relearning, lost cognitive lock-in) with no payoff (Final Cut Pro X) → keep the prior version available, include power users in planning, restore critical features fast; prefer gradual change absent a new enabling technology.
- **If** a new interaction technology is bolted onto the old paradigm (touch onto a button-driven OS; an on-screen d-pad on a touchscreen) → a usability nightmare mixing direct/indirect manipulation → fully re-conceive for the new paradigm (Symbian failure).
## H14. Content, suitability, banners & brand integrity

- **If** an element (frill, animation, skeuomorph, decorative stock image, background music, "seductive detail," autoplay splash) doesn't advance the goal → it adds extraneous load and steals attention (Coherence Principle); outcomes drop → remove it, or restrict to intro/context screens away from core content.
- **If** a graphic looks like a banner ad or sits in a typical ad slot → users skip it (banner blindness/habituation) → don't style important content as ads or place it in ad positions; put critical text on control labels.
- **If** a data graphic exaggerates change, omits baselines, or abuses 3-D → it misleads (high Lie Factor) → keep visual proportion faithful to the numbers.
- **If** the home/hero page got many revision rounds but content pages, forms, alerts, and emails were ignored → effort is misallocated (users live in the unglamorous areas) → give functional screens equal rigor.
- **If** one detail clashes with the brand's promised tier (plastic cap on premium scotch; Helvetica on a heritage brand) → trust in the whole erodes → reconcile every touchpoint to the same DNA; an interdependent product built feature-by-feature in isolation becomes a "Frankenbrand" — design the parts all-at-once.
- **If** content is wrong/missing → no amount of polish or navigation can rescue it (content ranks above visual design) → fix content first; don't spend usability effort polishing access to content users don't need.
## H15. Frequency, recall & "do the work for the user"

- **If** a frequent task takes many steps while rare tasks are equally accessible (iDrive: 7 actions to pick a radio preset vs. 1) → no progressive disclosure; flat menus don't privilege common actions → surface frequent functions one tap away, bury rare ones.
- **If** the design forces recall of arbitrary tokens (passwords, PINs, URIs, codes, *99-then-number) → errors and abandonment (recall is hard; OpenID failed this) → put knowledge in the world (menus, prompts, "Forgot password?"); let users set memorable secrets/hints.
- **If** the system forces users to diagnose problems, reason by elimination, or optimize many interacting settings → most fail (slow System-2 work they lack training for) → tell users exactly what to do; do the diagnosis/calculation for them; minimize settings.
- **If** the product is being extended into platform/API/channels before its core consumer experience is easy and complete → it spreads thin and starves product-market fit ("platform follows people"; Wesabe) → nail the simplest valuable core and reach critical mass first.
- **If** a feature is needed by many users but hidden → a meaningful number won't find it (recall fails) → the larger the user base for a function, the more visible it should be; hide only rare expert features.