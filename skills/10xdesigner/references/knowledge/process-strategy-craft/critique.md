# Critique Checklist — process-strategy-craft  
  
Self-contained, scoreable checklist for an external design-review tool. Each item: **check** · _why it matters_ · **severity** (high/med/low). Deduplicated across many established UX sources; the more sources behind a check, the more load-bearing it is.  
  
Score each item: **pass / partial / fail / N/A**. Treat any failed *high*-severity item as a blocker.  
  
---  
  
## 1. Goals, problem & rationale  
  
- [ ] **Each significant decision ties to a stated problem AND a measurable goal/KPI.** _Untethered decisions are pure opinion and can't be defended or evaluated._ **high**
- [ ] **The design answers all three: what problem it solves, how it affects the user, why it's better than the alternative.** _These are the basis of every defensible response._ **high**
- [ ] **Every notable element can answer "Why did you do that?" with a goal/research reason — not "I like it" / "I can change it."** _Subjective, ungrounded choices are the #1 cause of derailment._ **high**
- [ ] **The rationale leads with goals/benefits, not a feature list or "real-estate tour."** _Goal-led rationale proves intent and resists arbitrary remodeling._ **high**
- [ ] **The underlying user *goal* (not just the feature/task) is served and aligned with the business goal.** _Feature-complete products that miss the real goal fail._ **high**
- [ ] **Critique/response vocabulary avoids "like/don't like," "from a design perspective," "you're wrong," and jargon.** _This language is subjective, defensive, or alienating._ **med**
  
## 2. Research, validation & metrics  
  
- [ ] **The design is grounded in the team's own research/discovery, not intuition, a bake-off, or handed-over research.** _Research is the keystone; everything downstream is guesswork without it._ **high**
- [ ] **There is evidence the team observed real users doing real tasks (not just asked opinions / ran a focus group / public concept vote).** _Say ≠ do; opinion-based design fails (the Aeron chair, "The Homer")._ **high**
- [ ] **Feature requests were interrogated for the underlying problem rather than built literally.** _Users name a familiar solution, not their real need._ **high**
- [ ] **Qualitative "why" is present, not just quantitative "what" (analytics alone).** _Numbers show behavior at scale but never the reason or what to build instead._ **high**
- [ ] **Expensive/risky flows were validated cheaply (paper/low-fi/interactive prototype, ~5 users) before significant build.** _Cost of fixing rises ~10× per stage ($1→$10→$100+); late research can sink a funded product._ **high**
- [ ] **The work is framed as a falsifiable hypothesis with a baseline captured before the experiment, tying ONE feature to ONE outcome.** _No baseline = uninterpretable results; bundling kills attribution._ **high**
- [ ] **Success metrics are actionable (transactions, conversion, retention/task-success) and measurable, not vanity (page views, raw signups, hits/likes).** _Vanity metrics hide whether the value prop actually works._ **med**
- [ ] **A/B/quantitative results are statistically significant, tested against a concurrent control, with combined winners re-tested.** _Insignificant results reverse; uncontrolled tests and A+B≠C mislead._ **high**
  
## 3. Scope, simplicity & hierarchy  
  
- [ ] **Could any feature/element be removed and the product still serve its core job? (Is it as simple as possible — nothing left to take away?)** _Half a great product beats a half-assed whole; clutter dilutes the path to the goal._ **high**
- [ ] **There is exactly one clearly dominant primary action per view (passes the squint/"wall" test — obvious from 6–7 ft, no explanatory arrows).** _Competing dominant elements destroy hierarchy and confuse next-step._ **high**
- [ ] **Visual hierarchy orders content by user need (a "receiving line"); no "make it bigger" arms race (shrink neighbors instead).** _Flat or ad-dominated hierarchy means users miss what matters._ **high**
- [ ] **The primary use case is optimized and not buried under secondary features / a catchall menu or home page ("home page syndrome").** _Menu sprawl and catchall homepages destroy usability._ **high**
- [ ] **The target audience is a specific segment/persona (≤10 words, severe pain) — not "everyone with a neck."** _Designing for everyone serves no one and breaks acquisition._ **high**
- [ ] **Differentiation comes from experience quality / a unique mash-up, not feature parity with competitors (no Frankenproduct).** _Matching feature matrices bloats and ignores real needs ("Death by Competitive Analysis")._ **med**
- [ ] **You can state ONE key experience (or a tight set) that defines the value innovation — not 6 "key" features.** _A feature list masquerading as differentiation signals scope bloat._ **high**
- [ ] **Decorative/non-informational elements (3D chart effects, brand-driven animations) have been cut.** _Chartjunk distorts data; ego features quietly cost conversion._ **med**
  
## 4. Fidelity, content & screen states  
  
- [ ] **The artifact uses real, representative content — not Lorem ipsum / filler.** _Dummy text hides field-width, table-expansion, and meaning problems; design IS its content._ **med**
- [ ] **A deliberate blank/first-run (empty) state is designed, not just a data-filled mockup.** _First impression sets expectations; users judge worth when nothing is there._ **high**
- [ ] **Error / empty / abandon / recovery / cross-device-return states are designed, with human inline error copy at the point of the problem (not system-language at the top of the form).** _Breakdowns are inevitable and define trust; users break forms and arrive sideways._ **high**
- [ ] **Artifact fidelity matches the question being asked and its audience (low-fi/grayscale for concept; not pixel-perfect before testing).** _Premature prettification biases testers toward politeness and surface comments, and sinks-cost the design._ **med**
- [ ] **A wireframe is free of premature visual design (color, real type, exact spacing/pixels) and ranks content areas by priority.** _Priority is the wireframe's core output; styling derails review into aesthetics._ **med**
- [ ] **The artifact is free of distracting placeholder content, misalignment, bad icons, and tool artifacts before review.** _Distractions hijack feedback away from real issues._ **med**
  
## 5. Affordance, feedback & interaction craft  
  
- [ ] **Every interactive element is visually distinguishable as clickable without hovering (and from ads).** _Hover-only affordance and banner-blindness hide functionality._ **high**
- [ ] **Every consequential action produces immediate, visible feedback (state change, spinner/progress, confirmation); none fail silently.** _Missing feedback causes doubt, duplicate submits, distrust, or abandonment._ **high**
- [ ] **Each primary CTA is grouped with the exact info needed to decide (price/name/image); errors sit beside their field (the "doorbell sign" rule).** _Separation kills conversion; far-flung errors get missed._ **high**
- [ ] **Important actions are exposed, not hidden behind a toggle/accordion/extra click.** _Out of sight = unused (exposing share links = +188% clicks)._ **high**
- [ ] **Primary/submit actions are placed near the user's likely cursor position and large enough to hit (Fitts' Law); no needless keyboard→mouse switches.** _Distant/small targets slow and frustrate; edges enlarge targets._ **med**
- [ ] **Controls/feedback let the user stay focused on the goal — no glances away to confirm state.** _Confirmation glances steal attention (and, in cars, safety)._ **med**
- [ ] **Navigation scales across screen sizes (collapses gracefully) and isn't a deep multi-level fly-out maze.** _Horizontal/deep nav doesn't scale and disorients users._ **high**
- [ ] **Status/critical info uses more than color alone (shape + symbol + color) and survives a grayscale test.** _~8% of men are red/green color-blind._ **high**
- [ ] **Markup is semantically correct with ARIA roles/labels; related label/value pairs are announced together.** _Assistive tech relies on semantic structure and exposed relationships._ **high**
- [ ] **Body/UI text has high contrast (no gray-on-gray "museum piece"), a comfortably legible size, and ~1.5× line-height; type is scannable and prioritized.** _Legibility is the precondition for interaction ("can you read the damn site?")._ **high**
- [ ] **Familiar conventions/affordances users bring from comparable tools are preserved; common patterns (login/checkout/comments) are adopted then verified in context.** _Unexpected breaks from familiarity plunge users into difficulty; novelty must serve the goal._ **med**
  
## 6. Engagement, trust & the whole arc  
  
- [ ] **The design keeps the user's focus on their goal (engagement / "fourth wall"), minimizing friction between task and tool.** _Anything that breaks engagement both causes and signals difficulty._ **high**
- [ ] **The experience has a clear value moment (climax) where the user experiences value, and ends with falling action / a "home better than before" — not a bare confirmation or cliffhanger.** _Peak-end rule; flat experiences aren't remembered or repeated; cliffhangers cause non-return._ **high**
- [ ] **Primary CTAs and landing copy name the user's value/action (their goal), showing people like them achieving it — not "Sign up" / what the product *is*.** _Users must see themselves as the hero or they bounce (FitCounter rewrite +40%); landing must convey value in ~30s._ **high**
- [ ] **Sensitive-data / commitment requests (payment, contacts, OAuth) are deferred until after the user has experienced value.** _Premature asks create trust crises and drop-off._ **high**
- [ ] **Trust signals are present at decision points (security cues, return/cancel policy, reviews/social proof); visuals look modern-within-genre and on-brand.** _Trust is required to convert and drains like a leaky bucket; dated/off-brand visuals reduce it regardless of real quality._ **high**
- [ ] **The design is appropriate to its real usage context (device, input method, environment, stress), and mobile/smallest-screen needs were prioritized.** _Context governs what is usable; desktop-first crams and buries the core task._ **high**
- [ ] **The page passes the 5-second / orientation test: a fresh user can tell what it is, where they are, and what to do within ~1–2 seconds.** _Distracted users grasp only the dominant element; orientation drives task success._ **high**
- [ ] **No prominent action leads to a dead end or misdirects past a required step.** _Tempting dead-end affordances create stuck-states and support load (removing one raised confirmations 63%→79%)._ **high**
- [ ] **Performance is acceptable AND consistent, with graceful handling/feedback for unavoidable waits.** _Lag and variable waits erode engagement and trust._ **med**
  
## 7. Story, persona & artifact quality  
  
- [ ] **Each persona/scenario is a named, specific character with a motivation and a real activity (not demographics/percentages or stereotype caricatures); every trait maps to a design implication.** _Statistics don't drive design; only actionable, behavior-led personas do._ **high**
- [ ] **Stories explain *why* (goals/motivation/emotion), are honest/authentic/accurate to research, hold plausibility at every step, and triangulate with data.** _Without the why it's a use case; one implausible leap loses the audience; a lone anecdote isn't evidence._ **high**
- [ ] **The artifact is embedded in a narrative deliverable that brings a stranger up to speed (state, theme, decisions, issues) and informs the next decision — not delivered raw.** _Context-free artifacts get misinterpreted; "shared documents aren't shared understanding."_ **high**
- [ ] **Every comparison/options deliverable ends with an explicit "so what?" conclusion and a justified recommendation with implications.** _Comparisons without a takeaway waste the reader and act as a voting ballot._ **high**
- [ ] **Design principles are specific enough to eliminate more ideas than they keep — none could equally describe a competitor (no "fun," "easy to use," "user-friendly").** _Generic principles can't filter decisions or create differentiation._ **med**
- [ ] **Rejected alternatives were explored and kept available to show (evidence of divergence).** _Comparison proves intentionality and prevents stakeholders proposing worse options; first ideas are rarely best._ **med**
- [ ] **Research findings were translated into a form that changes decisions (story/poster/video), not a 50-page report nobody reads.** _Research is worthless until it changes a decision._ **med**
  
## 8. Critique, decisions & process  
  
- [ ] **Feedback being acted on is critique (element → objective → why), not bare reaction or prescriptive direction; analysis is kept separate from problem-solving.** _Only critique improves a design; mode-switching scatters the group._ **high**
- [ ] **The product's objectives (goals, principles, personas, scenarios) are explicitly defined, shared, and agreed — a common foundation read at the start of each session.** _No shared foundation = fragmented, preference-driven feedback._ **high**
- [ ] **Goals are measurable outcomes, not binary/output ("add a remember-me feature").** _Unmeasurable/output goals can't anchor critique or prove value._ **med**
- [ ] **There is a clear single decision-maker per area (no design-by-committee / unresolved compromise "mullet"); every killer stakeholder was involved from day one (no stealth stakeholder).** _Committees stall and produce muddied UX; you can't design a solution to a disagreement; excluded stakeholders kill projects late._ **high**
- [ ] **Negative-feedback permission was set and feedback expectations framed (focus-on / ignore guidelines).** _Unspoken expectations become late, costly blowups ("hope isn't a design word")._ **med**
- [ ] **HiPPO / hierarchy effects are neutralized so the design isn't driven by unvalidated authority.** _Authority is not evidence; silenced perspectives lose insight._ **med**
- [ ] **Decisions are documented with the *why* (not just the what), with a recap sent within an hour or a day.** _Rationale prevents re-litigating; fast recap prevents reversal/drift._ **med**
- [ ] **Design and engineering collaborate continuously (no waterfall handoff / specs thrown over the wall); the valuable-usable-feasible sweet spot was found by a cross-functional triad.** _Handoffs bake in mistakes and kill the design in transit._ **med**
- [ ] **Every open item has an owner and a next action (notes are actionable).** _Unowned ideas don't progress and clutter follow-up._ **med**
  
## 9. Scope slicing, sustainability & governance  
  
- [ ] **Features are organized as a left-to-right user-journey story map (narratable), not by functional module; the happy path is designed before edge cases.** _Module-centric structure resists coherent release and hides the experience; experiences are linear._ **high**
- [ ] **Any "MVP" is limited (does one thing well) not crappy (many things badly); "minimum" is defined relative to users' real needs and a target outcome.** _A "crappiest viable" product yields negative outcomes and false negatives._ **high**
- [ ] **Each release slice is labeled with a specific target outcome, and big work is sliced into thin end-to-end "cupcakes" with technically risky bits scheduled first.** _Outcomes are the only valid basis for "done enough"; horizontal layers defer risk and feedback to the end._ **high**
- [ ] **The design isn't a negotiated halfway-point of conflicting goals (compromised intent / El Camino), and doesn't splice the "best parts" of multiple concepts.** _You can't design a solution to a disagreement; mixed metaphors don't combine._ **med**
- [ ] **The design still matches the current strategy (no stale work surviving a pivot).** _A destination change invalidates the research the work rests on._ **med**
- [ ] **The design passes the Oars Test — the org can build AND maintain it with the resources/skills it actually has.** _Unsustainable designs create problems instead of solving them and decay (ROT content)._ **high**
- [ ] **Content/IA is organized around user tasks and the users' own words, not the org chart or internal jargon.** _Users don't share your org model; org-mirroring IA defeats findability ("pave the cowpaths")._ **high**
- [ ] **Decision rights for design/editorial/publishing/network standards are explicitly assigned (one expert decider per area; input ≠ decision), with standards documented (rule + rationale + owner) and enforced preventively (templates/CMS gates), not by after-the-fact takedown.** _Unclear authority is the #1 cause of endless redesign debate; undocumented standards can't be complied with; you can't redesign your way out of a governance problem._ **high**
- [ ] **Repeated UI elements are drawn from a documented pattern library on a consistent baseline grid, not re-styled ad hoc.** _Prevents drift, CSS bloat, and inconsistency (consolidation cut ~120k of CSS)._ **high**
- [ ] **Custom controls aren't built where a standard one suffices (custom date picker, scroll-jacking).** _Rolling your own adds build/maintenance cost and breaks accessibility/portability._ **med**
- [ ] **For two-sided markets, each side has a validated persona and UX; the business model (channels/revenue/cost) is validated alongside the UX.** _One-sided design causes chicken-and-egg failure; a loved UX on an unsustainable model still fails._ **med**
  
---  
  
### Severity tally (for weighting an aggregate score)  
- **High:** ~45 checks — failing any one is a likely blocker for shipping.  
- **Med:** ~22 checks — degrade quality/defensibility; fix before broad release.  
- **Low:** few — polish/maturity signals.  
  
### Notes for the review tool  
- Many checks are *process* checks (research done, stakeholders aligned, hypothesis framed). When reviewing a static artifact with no process context, mark these **N/A** rather than fail, and flag them as "unverifiable from artifact alone."  
- Two documented cluster tensions affect scoring: **(a) consistency vs. context** — enforce consistency by default for shared/structural patterns but allow deliberate, justified per-context exceptions; **(b) friction-reduction vs. meaningful friction** — fewer steps is not automatically better if the removed steps were building value (see `principles.md` #34, and the story-arc heuristics).  
