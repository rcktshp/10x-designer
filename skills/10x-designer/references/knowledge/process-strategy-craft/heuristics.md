# Heuristics — process-strategy-craft

Deduplicated "if X → problem Y → fix Z" critique heuristics an agent applies to a design (or to the *process* around it). Merged from decades of established UX research and practice.

## Rationale & goals

- **If** a design/element can't be tied to a stated problem AND a measurable goal **then** it's undefendable opinion that will drift **→ fix:** write the problem + metric beside the design before review; cut any element that can't justify itself with a goal.
- **If** the rationale is a "real-estate tour" (logo top-left, then down to the footer) or leads with a feature name ("here's a Twitter button") **then** the work has no goal-driven justification and invites arbitrary remodeling **→ fix:** rewrite goal-first ("we placed share tools where testing shows highest interaction").
- **If** the only rationale offered is "I/we like it," "it looks good," "from a design perspective," or "it felt right" **then** the decision is ungrounded and ego may be overriding evidence **→ fix:** demand a goal/research-tied reason; replace "like" with "works."
- **If** a stakeholder makes a prescriptive request ("move this," "make the logo bigger," "I hate scrolling," "add a button") **then** the real problem is hidden and you risk executing their design **→ fix:** ask "what problem are you trying to solve?" and reframe as a user-need/goal problem.
- **If** a stakeholder says an element is "interesting" or asks "why X instead of Y?" **then** they likely disagree but won't say so directly **→ fix:** surface the subtext; ask what problem they're solving.

## Research & validation gaps

- **If** a concept exists with no discovery/research behind it (a bake-off or spec guess) **then** it's a guess that's likely wrong **→ fix:** ground every concept in user/business data before proposing form; refuse pre-research spec work.
- **If** a feature request is taken literally (build the "case studies" / "reputation system" / "faster horse") **then** you build the wrong, often bigger thing **→ fix:** ask "why do you want that?"; the three "case studies" requests were really a choice problem, a value problem, and a social-proof problem.
- **If** evidence is a focus group, a "would you buy this?" survey, or a public concept vote **then** distrust it — people predict behavior poorly and judge unfamiliar designs as "ugly" (the Aeron chair; "The Homer") **→ fix:** use observation/usability tests/contextual inquiry; test whether it *works*, not whether people *like* it.
- **If** core functionality (e.g., how files are accessed) was redesigned without observing how users do it now **then** expect revolt and revert demands **→ fix:** "pave the cowpaths" — observe current behavior first; bend to it.
- **If** the IA/navigation/labels mirror the company's org chart or internal jargon (or renames a convention, e.g., "goody bag" for cart) **then** users can't find things **→ fix:** organize around user tasks and the users' own words (card sorting); prioritize nonstandard terms for testing.
- **If** raw analytics ("the data says") shuts down discussion, or a metric moved with no controlled cause (weekend promo + seasonality) **then** decisions are unreliable — data tells what, not why, and can be confounded **→ fix:** pair with qualitative why; A/B test against a concurrent control; predict the effect beforehand.
- **If** a decision rests on a tiny sample (3 vs 6 conversions in 600 views) or two separate A/B winners are combined untested (red text + red button → red-on-red) **then** the result may reverse **→ fix:** check statistical significance; re-test combined outcomes against control.
- **If** "happiness" is judged by a single gameable metric (retention, page views, raw signups) **then** you may be measuring forced retention, dark patterns, or vanity **→ fix:** triangulate multiple metrics + NPS + direct outreach; prefer actionable metrics (transactions, conversion, churn) over vanity.
- **If** the team has never watched a real customer use the product **then** they're flying blind; internal familiarity masks obstacles **→ fix:** maximize exposure hours (team face-time correlates with quality); put the team behind the glass.

## Scope, simplicity & hierarchy

- **If** a screen has many competing dominant elements (or everything is equal weight) / users say "it's too busy" or "I don't know where to go" **then** the visual hierarchy is broken **→ fix:** establish one dominant primary action (repeat it if needed); run the squint test / "wall test" (obvious from 6–7 ft, no explanatory arrows).
- **If** the answer to "we can't see X" is repeatedly "make it bigger" **then** you're in a size arms race destroying hierarchy **→ fix:** make the *surrounding* elements smaller; the logo is already big enough.
- **If** removing an element doesn't stop the page meeting its goals **then** it's clutter diluting the path **→ fix:** burn it; default to No on new features; ask "would the product fail without this?"
- **If** a feature looks "simple" but pulls in a chain of supporting items (a Meetings tab needing location, time, invites, calendar, help, ToS edits) **then** it's a hidden feature-loop **→ fix:** expose the full chain of costs before committing.
- **If** the home/landing page is a catchall of links/banners/every business unit's pet feature ("home page syndrome") **then** usability is unraveling **→ fix:** re-anchor on the primary use case; relocate secondary items.
- **If** the design demonstrates many "key" experiences (e.g., 6) **then** a feature list is masquerading as differentiation **→ fix:** cut to the single feature set defining the value innovation (Twitter = 140 chars; Tinder = swipe).
- **If** the product chases competitor feature parity ("us + all their features") **then** it bloats into a Frankenproduct and ignores real needs ("Death by Competitive Analysis") **→ fix:** compete on experience quality; benchmark against the best products users actually use; recombine proven patterns, don't copy.
- **If** the target customer is "everybody" / "everyone with a neck" **then** the design satisfies no one and acquisition fails **→ fix:** narrow to a few personas / a ≤10-word segment with a severe pain.

## Fidelity, content & states

- **If** the design relies on Lorem ipsum / filler **then** layout, field widths, table expansion, and meaning are untested **→ fix:** use real, plausible content; hand-type form inputs to feel what the user feels.
- **If** the screen is only ever shown full of seeded data **then** the blank/first-run state is neglected — where new users judge worth **→ fix:** design a deliberate blank slate (sample view, "what now?", tutorial blurbs).
- **If** there's no designed error/empty/abandon/recovery state, or errors use system language at the top of the form **then** users get stuck and abandon **→ fix:** wireframe all states; write human inline errors at the point of the problem with a clear next step.
- **If** a wireframe specifies color, real type, exact spacing, or pixel alignment **then** it overshoots its purpose and derails review into visual debates **→ fix:** strip to the barest minimum; scope visual issues out.
- **If** a wireframe crams all possible states/components onto one "every-case" screen **then** the team can't tell what it does in any real situation **→ fix:** one wireframe per realistic annotated scenario.
- **If** prototypes are made pixel-perfect/pretty before testing **then** feedback is biased (testers too polite, fixate on fonts/color) and the design is sunk-cost **→ fix:** keep early artifacts grayscale, clean, disposable; test 2+ variations side by side to reduce positivity bias.
- **If** a UI idea needs words or hand-waving to explain **then** the rendering isn't good enough **→ fix:** sketch it; lo-fi squiggles communicate intent and signal "ideas, not finished work."
- **If** the prototype's fidelity doesn't match its audience/question (usability tested on a sketch; demand validated by building a coded prototype) **then** feedback is invalid or you over-invest **→ fix:** match artifact to question; validate demand with a non-code MVP (landing page, feature stub, Wizard of Oz, concierge).

## Affordance, feedback & interaction craft

- **If** an interactive element's only clickability cue is hover (or toggles look like a bulleted list, or it looks like an ad) **then** users won't discover it (banner blindness) **→ fix:** give a persistent visual cue (button bevel, contrast, link styling).
- **If** a consequential action (submit, save, add-to-cart) gives no immediate feedback or silently fails **then** users doubt it, re-click (duplicate actions), or abandon to a competitor **→ fix:** change/disable the button on click, show a spinner/progress, confirm result; add inline validation naming the missing step.
- **If** a control requires the user to look away from their primary task to confirm state **then** it's inefficient/unsafe **→ fix:** persistent state and peripheral/tactile feedback (MINI center-speedo bad; Honda two-tier dash good).
- **If** a primary CTA is separated from the info needed to decide (price, name, image) — or errors sit far from their field — **then** conversions drop (the "doorbell sign" rule) **→ fix:** group the CTA with its supporting info, even if it looks worse.
- **If** a key action is hidden behind a toggle/accordion/"more" click **then** usage stays low (out of sight, out of mind) **→ fix:** expose it directly (Washington Post: exposing share links = +188% clicks).
- **If** submit/primary buttons are far from the field flow or force a keyboard→mouse switch **then** the form is slow (Fitts' Law: time grows with distance, shrinks with target size) **→ fix:** place the primary action below the last field; support Enter; anchor persistent nav to screen edges (edges enlarge the target).
- **If** navigation is deep multi-level fly-outs (cited 11–18 levels) or horizontal nav on a multi-device app **then** users get disoriented or it won't scale to small screens **→ fix:** flatten to a few top-level categories; use vertical nav that collapses on small displays.
- **If** status/critical info relies on color alone **then** ~8% of men (red/green color-blind) and grayscale users lose meaning **→ fix:** combine shape + symbol + color; test in grayscale.
- **If** charts use 3D effects/tilts/decoration **then** comparisons are distorted (chartjunk) **→ fix:** strip to flat data; remove non-informational ornament.
- **If** markup is non-semantic (div-based tables) or label/value pairs are announced disconnected **then** screen readers misread or skip content **→ fix:** use semantic elements/roles + combined `aria-label`.
- **If** body/UI text contrast is low (gray-on-gray "museum piece"), set too small, or line-height too tight **then** legibility — the precondition for interaction — fails **→ fix:** high contrast; ~15px base with ~1.5× line-height; readable, scannable, prioritized type.

## Story arc & engagement

- **If** an onboarding/checkout funnel drops off sharply at a step **then** that step is a crisis/cliffhanger where the story breaks (forced sign-up, sensitive-data ask, lost value) **→ fix:** find the missing climax/value; deliver value before asking for payment/contacts/OAuth; re-sequence the hurdle.
- **If** a flow ends on a bare "Thank You"/confirmation with no next action **then** it's a cliffhanger lacking falling action **→ fix:** route to a "home better than before" and a clear next step.
- **If** the primary CTA is "Sign up"/"Register" or copy describes what the product *is* **then** it doesn't map to the user's goal and they bounce **→ fix:** name the value/action they want ("Start training"); show people like them achieving the outcome (FitCounter rewrite = +40% sign-up clicks).
- **If** stakeholders demand "make it frictionless / fewer steps" **then** be skeptical — removing steps can strip value-building rising action and yield low-quality signups **→ fix:** test whether *adding* meaningful, increasingly relevant steps raises engagement quality (Twitter's longer onboarding kept more users).
- **If** a value proposition is merely "better/easier/simpler than X" **then** the story is flat (no crisis/climax) **→ fix:** find a genuine differentiator overcoming a real crisis.
- **If** the landing page doesn't convey the value prop in ~30 seconds **then** suspects bounce **→ fix:** distill the pitch (text/photo/video) to one key action.

## Story & persona quality

- **If** a persona/scenario is demographics/percentages with no named individual, motivation, or activity **then** it won't drive design and will sit on a shelf **→ fix:** lead with behaviors, goals (verb-object), concerns, scenarios; one concrete character grounded in research; treat each trait as a design implication.
- **If** a scenario reads as "clicked the link, pressed the button" **then** it's procedural documentation, not a story **→ fix:** add the *why*, goal, and feeling.
- **If** a vision/user story makes a giant leap from a small action to a grand outcome **then** stakeholders dismiss it as implausible **→ fix:** rebuild as small "given→when→then" increments.
- **If** the team's personas/stories all reflect mainstream tech-savvy people like the team **then** the design excludes others **→ fix:** deliberately include users outside the norm (economic, cultural, ability) as ordinary traits — "you are not the user."
- **If** every story card uses the full "As a… I want… so that…" template with no title (template zombies) or talks about "the user" generically **then** the backlog is unreadable and hides divergent user types **→ fix:** give each card a short title; name specific user types (users vs. customers/choosers vs. stakeholders).
- **If** a research/usability report is a dry findings list **then** the audience notes bullets but doesn't grasp or remember the insight **→ fix:** weave in a few true, well-chosen stories (translate findings to posters/videos/talks).

## Critique, meetings & process

- **If** feedback is a bare reaction ("I love it," "nobody will click that") or a directive ("I would have… move this here") **then** it's not actionable critique **→ fix:** ask "why?" to surface element + objective + effect; reframe directives as the underlying problem.
- **If** a critique produces a list of changes to make **then** problem-solving has replaced analysis (the brain can't do both at once) **→ fix:** capture insights; defer solutions to a separate exploration phase.
- **If** the team can't state the product's objectives, or each states different ones **then** there's no shared foundation and feedback fragments **→ fix:** create goals/principles/personas/scenarios (a Mini Creative Brief) and read them aloud at each session.
- **If** a principle is broad/subjective ("fun," "easy to use," "user-friendly") **then** it can't filter ideas **→ fix:** make it specific (eliminate more ideas than it keeps); a good principle could not also describe a competitor.
- **If** goals are binary/output-based ("add a remember-me feature") **then** they can't anchor critique **→ fix:** restate as measurable outcomes ("increase authenticated visits 15%").
- **If** work is unveiled cold in the meeting ("Ta-da!") or the presenter over-explains every decision **then** you get only reactions / the session bogs down **→ fix:** share the slice ahead with focus notes; present quickly, let rationale emerge through questions.
- **If** participants defer to the highest-paid/most-senior voice (HiPPO) **then** hierarchy suppresses input and unvalidated authority drives the design **→ fix:** "everyone is equal," solicit quiet people, test alternatives at decision points.
- **If** a meeting fixates on a trivial easy-to-grasp detail (spinner color, bike-shed) **then** Parkinson's Law of Triviality is at play **→ fix:** note it for the backlog, steer back to the goal.
- **If** the design review meets weekly or less **then** it takes ~2× as long with worse results **→ fix:** push for short, frequent (even daily) reviews and a decisive single sign-off.
- **If** a meeting ends in ambiguity with no one deciding **then** stagnation (polite indecision) **→ fix:** make a decision yourself, communicate it with a deadline; people will speak up.
- **If** decisions are verbal with no written follow-up **then** the same conversation recurs and requirements drift **→ fix:** send a recap (with the *why*) within an hour or a day.

## Scope, slicing & governance

- **If** features are organized by functional module (an "editor wall," a "grading wall") rather than user journey **then** they resist coherent cross-module release and hide the experience **→ fix:** reorganize into a left-to-right narrative-flow story map.
- **If** a "minimum viable product" is just the crappiest thing you could ship **then** it produces a negative outcome and damages the brand **→ fix:** define minimum relative to users' real needs and a target outcome — limited (does one thing well) not crappy (many things badly).
- **If** a release/roadmap is sliced by feature bundles with no named target outcome per slice **then** prioritization is arbitrary and you can't tell if a slice is "enough" **→ fix:** label each slice with a specific outcome; cut everything not needed to reach it.
- **If** big work is broken into horizontal technical layers (weeks of front-end, then back-end) **then** nobody can "taste the cake" until late and risk compounds **→ fix:** slice thin end-to-end "cupcakes," each usable; schedule technically risky end-to-end bits first (opening game).
- **If** the design tries to satisfy two conflicting stakeholder goals at once **then** it suffers compromised intent (the El Camino) and becomes a negotiated "mullet" midpoint **→ fix:** force goal alignment / reconcile to one voice *before* designing; you can't design a solution to a disagreement.
- **If** strategy has changed since the design was made (a pivot, "we no longer sell cheese") **then** the work is stale — the research it rests on is invalid **→ fix:** re-research against the new destination before judging the work.
- **If** the design requires assets/skills nobody is resourced to sustain (a photographer, content cadence) **then** it will decay (fails the Oars Test) **→ fix:** scope to available resources or hire the resource first.
- **If** the same design/IA/tech decision is re-debated meeting after meeting **then** there's no clear decision authority — people argue about *who decides*, not *what to build* **→ fix:** run the input-vs-decision matrix; assign one expert decider, label everyone else "input."
- **If** the digital presence is graphically incongruent across sections/brands/locales, or standards are claimed but can't be produced in writing **then** standards authority was dispersed without a documented framework **→ fix:** document standards (title, rule, rationale, owner) and enforce preventively via templates/CMS gates, not after-the-fact takedowns.
- **If** a custom control is built where a standard one suffices (custom date picker, scroll-jacking) **then** added build/maintenance cost and accessibility/portability risk **→ fix:** justify the standard control's benefit; adopt-and-verify established patterns.
