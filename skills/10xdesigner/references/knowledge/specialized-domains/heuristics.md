# Specialized Domains — Critique Heuristics

"If X then problem Y, fix Z" rules an agent applies to a design.

---

## Cross-cutting

- **If** a design/study treats the household, family, or "user" as one homogeneous unit with shared goals **then** it misjudges needs and produces invalid data **because** each member defines the unit differently and holds conflicting goals (and the kid-user ≠ the parent-buyer) **— fix:** name *whose* perspective, analyze per-individual and per-relationship, and consult all stakeholders including non-users. [Home][Care][Kids]
- **If** a system was validated only in a lab / "living lab" with strangers or simulated tasks **then** the evaluation lacks ecological validity and misses social/relational effects **because** real use is shaped by close relationships, varied locations, and embedded routines labs can't recreate **— fix:** run an in-situ field trial with real intended users. [Home][Care]
- **If** users have invented workarounds (a meat grinder to open pill bottles) but report no problem **then** there is an unmet need hiding in "accepted" friction **because** people blame themselves, not the product **— fix:** use in-person observation, not just surveys. [ID][Kids][Care]
- **If** "simplicity" was achieved by deleting features rather than clarifying organization **then** the product becomes ineffective and gets discarded **because** minimalism is surface, clarity is contextual **— fix:** prioritize and clarify; add redundancy/controls where they cut cognitive load. [Sustain][ID]
- **If** behavior change relies on points/badges/leaderboards bolted on top **then** motivation fades **because** extrinsic rewards "offer a how to a why question" **— fix:** make the behavior intrinsically fun via integrated nudges (Piano Staircase; Schiphol urinal fly = 80% less spillage); don't reward the same behavior with two currencies. [ID][Kids]
- **If** a solution isn't accessible across abilities and modes (red/green-only, visual-only, one input method) **then** it serves fewer people and is more likely abandoned **because** ~10% of men are color-blind and contexts vary **— fix:** design for the full ability/gender spectrum and combine renderings (map + spoken directions). [Sustain][ID][Care]
- **If** the solution "solves a problem that doesn't exist" or duplicates a need met more cheaply (Segway vs. bicycles at ~2% of cost) **then** it's wasteful regardless of engineering quality **— fix:** validate genuine need before building; rely on symbiotic platforms (a paired phone) rather than re-adding a screen/battery/processor. [Sustain][ID][Home]

## Healthcare [Care]

- **If** a health-info page buries the one relevant paragraph under dense nav, "See More" blocks, related rails, and ads **then** an anxious/time-pressured health seeker can't find the next step **— fix:** lead with a clear definitional answer + a single task-oriented next step; demote ads/related links.
- **If** navigation doesn't highlight the user's current location **then** users lose orientation **— fix:** active-state label + breadcrumb.
- **If** related content is a flat list mixing types (video/slideshow/news/tools) **then** users must scan every link **— fix:** organize by topic facets in a hierarchy, not by content type.
- **If** a specific symptom is folded into a broad catch-all (arrhythmia → "heart disease") **then** users form a frightening/incorrect mental model **— fix:** keep specific conditions distinct.
- **If** a self-diagnosis tool is a generic clinical decision tree **then** it misleads, because trees assume binary inputs and a layperson can't calibrate **— fix:** use trees to visualize options, personalize, and pair with severity education.
- **If** any system/scroll/load delay adds to a clinician's task time **then** it's "completely unacceptable" **— fix:** optimize perceived speed of task completion over engagement/aesthetics.
- **If** a dose field allows leading/trailing zeros, ambiguous sorting, or non-clinical language **then** foreseeable medication errors result **— fix:** human-factors review; remove trailing zeros; validate against real clinical language.
- **If** an EMR fragments a patient's data across screens **then** wrong-patient/wrong-med/missed-allergy errors occur **— fix:** synthesize related data in one view (a key study found 22 error-inducing CPOE situations).
- **If** a manual/paper artifact (Kardex, whiteboard, shift book) is being replaced **then** beware destroying its tacit, glanceable, resilient value **— fix:** study it, reframe its information needs, preserve face-to-face handoffs.
- **If** a vendor withholds UI screenshots and uses "hold harmless" clauses **then** treat it as a tell that the interface fails scrutiny **— fix:** demand local usability/clinical testing before deployment.

## Children [Kids]

- **If** a nav element animates/chimes/wiggles on rollover or first tap for under-6s **then** kids think that motion IS its only purpose and won't click through **because** under-6s associate one behavior per object **— fix:** keep nav static; differentiate by border/size/brightness.
- **If** interactive and decorative elements look the same (fidelity/color/level) **then** kids can't tell what to click **— fix:** strong visual ranking (white borders on clickable items, brighter/larger foreground).
- **If** the palette uses many colors/textures for a 2–4 audience **then** kids are overwhelmed **— fix:** ~5 bright colors on a plain background.
- **If** foreground and background are at the same detail level for under-5s **then** the scene reads as flat clutter **because** flat-screen 3D depth isn't perceived until ~age 5 **— fix:** detailed/saturated foreground, muted/simple background.
- **If** icons use adult abstractions (game-controller, green "play" triangle) for under-4s **then** they confuse **— fix:** literal, concrete imagery.
- **If** every action produces a random/unmapped sound **then** kids are confused about meaning **— fix:** build a sound inventory (voice-over=instruction, music=complete, beep=time's up, click=action).
- **If** a 6–8 product gives no up-front rules **then** these kids freeze (they want all facts before starting) **— fix:** clear multi-step up-front explanation in multiple formats (text + audio/video).
- **If** an 8–10 product front-loads instructions **then** they're ignored (they see themselves as experts) **— fix:** teach via contextual post-failure messages.
- **If** progress isn't saved/resumable for 6+ kids **then** they get distressed (they grasp continuity) **— fix:** restore exact prior state.
- **If** a kids' product foregrounds free-form chat **then** 6–8s disengage (stranger danger) and 8–10s over-use it as a thrill (risk) **— fix:** make social an enhancement; canned chat, moderation, reporting.
- **If** ads sit inside content without clear separation for 8–10s **then** they distrust and may abandon **— fix:** clearly label ads.
- **If** registration emphasizes age/location for 8–10s **then** they'll lie **— fix:** emphasize creative username/self-expression; parental opt-in for needed demographics; never push social sign-in for under-13s.
- **If** a 'tween faces an open, decision-dense interface **then** they over-deliberate and quit **— fix:** offer complex decisions through a simple interface; foreground a narrative.
- **If** a 10–12 site isn't mobile-friendly **then** it's unusable (they browse on phones) **— fix:** mobile-first; relegate keyboard-heavy tasks to larger devices.
- **If** a kids' app pops sign-in/upsell/permission dialogs during play **then** parents are annoyed and accidental purchases occur **— fix:** "set it and forget it" parental controls.

## Domestic / family tech [Home]

- **If** only the enthusiastic/primary user (often the "household communicator") was consulted **then** non-users' resistance, privacy concerns, or sabotage are missed **— fix:** interview all stakeholders individually, including affected non-participants; probe reasons for non-use.
- **If** an always-on / constant-connection feature is presented as unambiguously positive **then** it creates privacy friction and relational strain for some **— fix:** add privacy controls (blinds, off, selective deletion), support diverse placement, evaluate per-member costs.
- **If** a prototype was only tested on the lab's high-bandwidth firewalled network **then** it breaks in real homes **— fix:** pilot off-lab in conditions mirroring real homes, including the full multi-home topology.
- **If** a deployed system controls/replaces a critical home function (heating, sole comms channel) **then** failures dominate reactions and may endanger occupants (~100% uptime expected) **— fix:** fail-safe defaults, watchdogs, heartbeats, auto-recovery, alert emails.
- **If** the build adds "nice-to-have" features beyond the research question **then** cost and frailty rise without payoff **— fix:** ship the Minimum Viable Prototype; offload rare config to "email the researcher."
- **If** a study relies on diaries/self-report as the primary usage data **then** the data is incomplete (people forget; they want to use the tech, not write about it) **— fix:** triangulate interviews/observation/logs; map reporting to existing habits (email, not blogs).
- **If** parents are present during a child interview **then** they answer for/coach/correct the child **— fix:** interview the child separately, with friendly redirections.
- **If** a sensitive/taboo topic (finances, grief, conflict) is studied only via in-home family interviews **then** members self-censor to preserve harmony **— fix:** also study community/support-group settings where issues "spill over"; interview individuals privately.
- **If** recruitment draws only on the researcher's own network/snowball **then** the sample is homogeneous and over-cooperative **— fix:** stratify via context-specific forums, community sites, or a recruitment firm.
- **If** an evaluation reports only benefits of a multi-person system **then** it hides who is harmed **— fix:** measure positive AND negative effects per stakeholder (validated instruments), baseline vs. deployment.
- **If** autobiographical design (researcher's own home) lacks rigorous record-keeping or an outside check **then** designer bias distorts findings **— fix:** keep rigorous data, involve an unbiased outsider, consider a confirming external study.

## Industrial / physical products [ID]

- **If** a product/UI engages only sight (and maybe touch) **then** it under-uses sensory bandwidth **— fix:** add purposeful tactile/audio/motion feedback (demarcated dial clicks, weighted feel).
- **If** a mode/state is conveyed only by an abstract light/label/code **then** users won't build a reliable mental model **— fix:** map state to a physical/concrete representation.
- **If** a "smart" product announces newness with a radical, trendy look **then** it dates faster and erodes trust **— fix:** build new behaviors onto a trusted archetypal form (a smart lock that keeps a normal deadbolt look).
- **If** a product that learns from user data "locks in" (DRM, switching costs) rather than "wears in" **then** that's hostage-taking, not a relationship **— fix:** open API, interoperability, give users data control.
- **If** two products are combined only because tech allows it (toothbrush showing weather) **then** it feels tacked-on **— fix:** combine only always-paired sequential steps into a genuinely new whole.
- **If** playfulness fights core function **then** it's a toy **— fix:** integrate so the playful element supports or stays neutral to function.
- **If** a physical behavior is nudged via a smartphone app **then** integration is lost **— fix:** place the nudge in the same medium/moment (a smart bottle cap, not an alarm app).
- **If** a design handles only the "happy path" moment **then** thoughtfulness is missing **— fix:** design the whole narrative — moments before/after, edge cases.
- **If** an alert uses the same urgency for trivial and critical events **then** users mistrust or panic **— fix:** graduate the response to danger level and inform, don't just alarm.
- **If** an assistive/medical product looks clinical and "soulless" **then** it stigmatizes and goes unused **— fix:** design it as a desirable everyday object usable by all.
- **If** a utilitarian/behind-the-scenes product (disposable, lab gear, workplace tool) is left drab **then** dignity and perceived usability are lost **— fix:** apply real aesthetic care everywhere.
- **If** a product hides shoddy internals behind an opaque skin **then** it lacks the honesty that signals quality **— fix:** honestly reveal structure; make even unseen parts clean.

## Sustainability [Sustain]

- **If** a product bonds two materials or blends fibers (spout-in-carton, 80% cotton/20% rayon) **then** it's a "monstrous hybrid" recyclers won't touch **— fix:** pure/uni-material parts or snap-apart-by-material components.
- **If** a product uses many proprietary/inaccessible fasteners **then** it won't be repaired or recycled (disassembly time is the costliest part) **— fix:** standardize, minimize, expose fasteners; snap-fit; magnetic metal fasteners.
- **If** parts lack molded-in/affixed material-type labels **then** they go to trash **— fix:** mold deep, legible material codes into every part; indicate separation points/sequence.
- **If** a whole product must be junked when one cheap component fails (coffee-maker pump, sealed battery) **then** all the good components' impact is wasted **— fix:** modularize so worn/cheap parts are user-replaceable.
- **If** the design specifies PVC where a substitute exists **then** it carries severe toxicity and the highest full-cost **— fix:** substitute (ABS, HDPE, PET, bioplastics); if unavoidable, minimize quantity.
- **If** a "recyclable" claim is made **then** check whether it's actually recycled (recyclability ≠ recycling) **— fix:** ensure take-back/collection exists; design for the realistic disposal path.
- **If** styling is trend/fad-driven on a long-lived product **then** it invites premature cultural obsolescence **— fix:** classic styles, exchangeable cases, or materials that patina gracefully.
- **If** a product is sold as disposable/single-use **then** ask whether reuse would serve better **— fix:** refill/reuse systems (jars → glasses; reusable bags/diapers).
- **If** an environmental claim compares only one life-cycle phase (mpg) **then** the comparison may invert across the full cycle **— fix:** run a proxy/matrix LCA across all phases.
- **If** vampire/standby power is ignored **then** chargers/always-on clocks waste a large share of household electricity **— fix:** low-standby adapters, auto-off, no redundant always-on displays.
- **If** packaging is heavy, mixed-material, or single-purpose **then** it can dominate total impact **— fix:** lighten, separable recycled materials, mold labels in, make it double as shipping or be refillable.
- **If** marketing leads with vague green terms or over-promotes a small good deed (charity ad spend > donation) **then** it's greenwashing **— fix:** be specific, substantiate, plain language, stay silent until the advance is significant.
- **If** the solution adds energy/material to do what human power or an existing device already does **then** it likely worsens impact **— fix:** prefer human-powered, dematerialize, or transmaterialize (product → service; send the recipe not the object).
- **If** technical/back-end decisions are locked before the customer-experience front-end is defined **then** you get an efficiently-built unsuccessful offering **— fix:** synthesize the front-end (experience) before the back-end (engineering).
