# Specialized Domains — Principles

Deduplicated, cross-referenced design principles for specialized contexts: healthcare, children, the home, industrial/physical products, and sustainability.

---

## Cross-cutting principles (asserted by multiple books)

- **There is no single "user" — design for a reflexive web of people with conflicting goals.** Healthcare has no abstract user, only "health seekers" who act for self, family, or friend and cycle between agency and patiency; ~half of online health searches are for someone else. "Family" is reflexive: every member defines it differently and asymmetrically, conflict exists in every household, and one person is never a valid proxy. Kids' products have two distinct people — the kid (user) and the parent (customer): kid-tested, parent-approved. Implication: name *whose* perspective, study all stakeholders including non-users, accept that helping one person can harm another. _Apply when:_ defining personas, recruiting, scoping "the user."

- **Study people in their real context, not in a lab or from memory.** Domestic tech must be evaluated in situ; lab studies with strangers on simulated tasks miss the social/relational effects the tech exists to support. You can't rely on memory or "I have a kid this age" — observe kids at play. Latent needs hide in workarounds users don't report because they blame themselves; in-person observation, not surveys, surfaces them. Ground personas in ethnographic data, not invention — invented personas create false intimacy. _Apply when:_ any research, evaluation, or persona work.

- **Design for the full spectrum of ability and mode — inclusion is core, not an add-on.** "All technology is assistive technology"; design for both genders and all abilities from the start (the curb-cut effect: designing for the constrained benefits everyone). Solutions inaccessible across abilities/modes (search vs. browse, visual vs. auditory) serve fewer people and get abandoned. Expose main content to assistive tech first; design for impaired/older health seekers. _Threshold:_ ~10% of men are color-blind — never red/green-only coding. _Apply when:_ defining target user, accessibility review.

- **Simplicity is clarity, not deletion.** Simplicity is found by working *through* complexity to the underlying principle, not by stripping features; "less isn't more, just enough is more"; minimalism is a surface reaction, clarity relies on understanding. "Simplicity" achieved by deleting features rather than clarifying organization makes products ineffective and discarded. Add redundancy/controls where they reduce cognitive load (a jetlag clock, defibrillator audio prompts). _Apply when:_ a stakeholder asks to "make it simple" or equates a clean look with usability.

- **Drive behavior change with defaults and intrinsic motivation, not nagging or extrinsic rewards.** Don't force/scare people; make information available and let them choose — highest leverage is mindset/goals/rules. Embed the responsible choice as the default; carrots not sticks; "experience − waste = success." Extrinsic rewards (points/badges/leaderboards) "offer a how to a why question" and fade — make the behavior intrinsically fun. Even for kids, where badges work, don't dilute by rewarding the same behavior with two currencies. _Apply when:_ any behavior-dependent or gamified design.

- **Design for durability, repairability, and end-of-life — make things last.** Enduring products have functional AND emotional durability; they "wear in," not out; use quintessential/Super Normal forms over trend-driven novelty; plan repair (minimize/expose fasteners, label materials, avoid glue, publish CAD, offer take-back). Doubling useful life ~halves replacement impact; modularize so worn/cheap parts are user-replaceable; reject planned/cultural obsolescence. _Apply when:_ products that wear, face tech change, or risk being junked over one failed part.

- **Reframe at the system level before designing the artifact; respect wicked problems.** Ask "what is transportation/food/communication about," not "what is the next car/phone"; systems change creates more impact than a better single product but requires multi-stakeholder coordination. Match process to the order of complexity; a perfect product-level solution fails an organizational problem; reframe abstract-before-concrete or you "pave the cow paths." Sustainability is a wicked problem requiring ongoing process, not a "solution." A new home device is never standalone — it enters an ecosystem of Wi-Fi, routers, power, and other devices. _Apply when:_ early-concept/strategic work.

---

## Healthcare [Care]

- **First, do no harm — design risk scales with consequence, not visibility.** "Nobody dies from a bad website, but patients die from information-display errors and counterintuitive device interfaces." _Apply when:_ any clinical artifact, device, dose display, EMR field.
- *"Can does not demand ought" — automating a task doesn't mean you should.** Keep a human-in-the-loop where judgment matters; don't digitize an exchange whose value is the tacit/face-to-face transfer (nurse handoffs, shift change).
- **Fit to clinical work practice beats interface modernity.** A dated interface matching established routines can outperform a modern EMR that forces workarounds. "GUI does not equal usability."
- **People are not rational decision-makers; expert decisions are intuitive sensemaking.** Health seeking is an emotional "mess"; decisions are biased (loss aversion, anchoring, satisficing); seniors pattern-match, only trainees "go by the book." Don't design tools assuming stepwise rational analysis.
- **Match research rigor to risk.** Healthcare expects a higher standard of evidence than consumer UX (heuristics weakest → RCTs strongest).
- **Supportive physical environments measurably accelerate healing (evidence-based design).** Nature views, daylight, plants, supportive art reduce stress and shorten stays; art *content* matters more than quality.
- **Socialize new design capability bottom-up; don't institutionalize it top-down.** A well-chosen pilot + peer demand beats a top-down mandate.

## Children [Kids]

- **Design for how kids *play*, not for who they are** — play is the front seat, the educational goal the back seat (a physics puzzle game teaches physics; a virtual-pet game teaches money management).
- **Match design to developmental stage, in ~2-year increments** — a 3yo and 6yo are both "preoperational" but need different designs.
- **Kids reward effort with friction; adults reward efficiency** — build in *productive* friction and challenge; "babyish" is the worst insult at age 4+.
- **Give feedback for EVERY action** (kids), vs. only at success/error (adults).
- **Don't dumb it down and don't just shrink adult UI** — kids are more capable than they look; keep good conventions, map to where the child is cognitively.
- **Follow the 4 A's: Absorb, Analyze, Architect, Assess** — observe, affinity-diagram patterns, build a working prototype, iterate-test with kids AND parents.
- **Protect young users by design** — trust/naivety are defaults; build safeguards (canned chat, moderation, age-gating, parental opt-in); plan COPPA compliance *before* building, not as a retrofit.
- **Mobile-first for 'tweens (11–12)** — most of their digital life is on a phone.

## Domestic / family tech [Home]

- **Build a Minimum Viable Prototype, but make it genuinely robust** — only features the study needs, but with fail-safe defaults, watchdogs, auto-recovery, alerts (one field study hit 99.8% uptime); offload rare config to "email us."
- **Match the method to the home's temporal rhythms** — seasons, school calendars, work shifts, holidays, "rainy days work best for us."
- **Recruit participants with a genuine need** — real need drives sustained use and rich data (also the first tenet of autobiographical design).
- **Hear everyone's voice, including children's** — parents are poor proxies; quiet members' "tangents" become the richest data.
- **Use multiple, redundant data-collection methods and recordings** — logs fail, diaries go unfilled, prototypes crash; always keep a second/third recording.
- **Visibly respect privacy, don't just protect it** — on-site anonymization, opt-in for sensitive data; being *seen* to protect privacy builds the trust that opens people up on taboo topics.
- **Build rapport and reciprocity; give of yourself** — trust is the precondition for depth.
- **"For the family" can mean designing for one member** — supporting a grieving parent or child of divorce can benefit the whole household indirectly.
- **More connectedness is not always better** — always-on connection creates friction; people need space, and exposure to disliked parties breeds avoidance.

## Industrial / physical products [ID]

- **Engage the full range of human senses, not just sight and touch** — weight, balance, temperature, sound, kinesthesia are design channels; move output beyond the screen, input beyond fingertips.
- **Map symbolic/digital state to physical, embodied interactions** — physical mode-switching (flip, pull, slide) makes state unambiguous, persistent, and glanceable.
- **Plan products as shearing layers that change at different rates** (Site, Structure, Skin, Services, Space Plan, Stuff) — slow layers constrain fast ones.
- **Design for adaptation and "seamful" (not just seamless) systems** — anticipated change lets one product replace many; expose capabilities (APIs, "beautiful seams") so lead users can appropriate and extend (hashtags/retweets came from users).
- **Playfulness must be intrinsic to form and function, never bolted on** — strongest designs fuse amusement with utility; weakest sacrifice function.
- **Be a thoughtful host** — anticipate needs, edge cases, and the whole context of use; thoughtfulness lives in details ("later wow") and tied-up loose ends.
- **Beauty is a requirement, not a feature** — "If a design is not yet beautiful, it is not yet complete"; beauty is inseparable from usability (aesthetic-usability effect), dignity, and honesty; belongs everywhere, even disposables and medical devices.
- **Let form honestly reflect function, material, and manufacturing** — production marks are "beauty marks, not scars"; "form follows function" means *appropriateness*, not minimalism.
- **Choose the medium per situation; don't default to a screen** — and don't translate screen patterns directly into physical space.

## Sustainability [Sustain]

- **Design is both the problem and the solution** — designers specify materials/processes/forms, so they are causally upstream of most impact and bear responsibility.
- **Create more value with less material, energy, and virgin resources** — reduce first; ~80–90% of a product's impact is locked in by manufacturing decisions.
- **Evaluate across the WHOLE life cycle, not one phase** — sourcing, manufacturing (~30–50% of impact), transport, use, disposal; optimizing one phase can worsen another (use-phase wins can hide disposal-phase losses).
- **Usability IS sustainability** — unused/returned products waste all their embodied impact; most electronics returns are non-functional (poor fit), costing billions in unsaleable goods.
- **Design for disassembly = design for assembly = design for recycling** — avoid "monstrous hybrids" (bonded/blended materials that can't be separated); recyclability ≠ recycled.
- **Substitute toward less-toxic, more-recyclable, more-local, more-renewable inputs** — specifically avoid PVC wherever an alternative exists.
- **Close the loop: waste = food; eliminate the concept of waste** — take-back, lake economies, industrial symbiosis.
- **Engage meaning and values, not just emotion** — five levels of significance (Meaning > Identity/Values > Emotions > Price/Value > Performance); deep engagement → kept longer, replaced less; emotions dissipate, meaning endures.
- **Sustainability is strongest as strategy + process, not a late-stage add-on** — embed in corporate vision; lead with proxies (efficiency, health, risk, brand) when culture isn't ready.
- **Make claims honest, specific, substantiated, and life-cycle-aware** — avoid greenwashing and vague terms ("green," "eco-friendly").
