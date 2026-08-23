# Principles — Systems & Service Patterns

Deduplicated, cross-referenced timeless principles.

---

## 1. The system is the unit of design, not the part

- **Design the whole, not the pieces.** A product/service is experienced as one coherent whole; users don't care about your individual touchpoints, devices, pages, or org silos. Even when every part is well built, the *system* may be undesigned. Scope and effort follow functionality and connections, not the count of pages/screens/devices. _All four:_ "design systems, not pages"; "design the system, not the device"; "services created in silos are experienced in bits"; design the rules of the social system, not all outcomes.
- **Design the connections, not just the boxes.** The transitions, handoffs, and seams between touchpoints/devices/screens carry the biggest experience risk, yet teams obsess over the tangible boxes and ignore the connecting arrows. "Gleaming towers, muddy dirt-track roads between them." In multi-device systems this is *continuity* — synchronized data and signposted task migration.
- **Conserve complexity; decide who absorbs it (Tesler's Law).** Every system has irreducible complexity; the only question is whether the user or the design/engineering absorbs it. Either *explain* complexity or deliberately *hide* it behind a simplified model — never leave the user to guess.

## 2. Decompose into reusable, single-purpose, context-agnostic parts

- **Decompose interfaces into a reuse hierarchy.** Atoms → molecules → organisms → templates → pages: irreducible elements compose into functional groups, then sections, then content-structure skeletons, then real-content instances. It is a mental model worked concurrently, never a linear "atoms first, pages last" process.
- **One component, one job (Single Responsibility Principle); keep it DRY.** Overloading a pattern makes the system unwieldy; simple parts are easier to test, reuse, and keep consistent. Build a pattern once and include it everywhere so one change propagates to every instance.
- **Name patterns by structure, not by context or content.** "Carousel" not "homepage carousel"; "card" not "product card." Agnostic names are portable and prevent library bloat. The social analogue: avoid Cargo-Cult copying of a pattern's surface form without understanding the force it resolved.
- **Build parts fluid and context-agnostic so they adapt to any container/viewport/platform.** The more fluid a component, the more resilient and reusable (container-query dream).
- **Separate content structure from content; design for the real range, not best case.** Templates define the skeleton (image sizes, char limits); pages pour in real content. Account for empty states, overflow (340-char headline, 87 cart items), first-time vs returning, admin vs user, missing images.

## 3. Communicate a clear conceptual model

- **Make the system image convey the conceptual model.** You can't design the user's mental model directly; you design the system image (UI + behaviors + docs) so the user model matches the design model, bridging the gulfs of execution and evaluation. This matters most where logic is hidden/distributed (where code runs).
- **Decide deliberately where code runs, because failure modes follow that choice.** The same feature behaves differently offline depending on whether logic lives at the edge, gateway, cloud, or phone. Critical functions (alarms, locks, heating fallback) must keep working when parts go offline.
- **Make the invisible visible.** Services and connected systems are intangible; surface backstage activity to customers (claim-process timeline), customer reality to staff, hidden resource use to everyone, and security/compromise state to users. Information is a design material.

## 4. Consistency, coherence, and perceived quality

- **Consistency builds trust and speed; inconsistency breaks it.** Inconsistent UIs impose cognitive burden (insurance site: 4 distinct designs in 5 clicks → distrust at the payment form) and slow teams.
- **Interusability: prioritize consistent terminology above all other consistency.** When function spans devices with different I/O, coherence rests on three pillars — composition (which device does what), appropriate consistency, and continuity. Rank *terminology* highest, then platform conventions, then aesthetic styling.
- **Perceived quality = the gap between expectation and experience; minimize it.** A flat, consistent experience curve beats spikes — whether budget or premium. Each interaction should set the right expectation for the next, then meet it.
- **Consistency beats peaks; exceeding expectations once sets up the next disappointment.** "Moments of truth"/hero-moment thinking is dangerous: a high point raises the baseline you must sustain. Surprise/delight works only *because* it is unexpected. Sometimes reduce a touchpoint's quality to keep the whole coherent.
- **Backstage consistency is as critical as frontstage polish.** CRM language must match the website; the online plan must match the first bill; ads must match the app. One backstage discrepancy breaks the spell.

## 5. Co-production: design with people, including staff

- **Services are co-produced; design *with* people, not just for them.** Value is created only at the moment of use; the customer is an active participant and frontline staff are co-producers and often the real experts. Treat human-delivered service as improvisational theater — design the conditions (set, roles, goals, props), not a rigid script.
- **Deliberately leave the social design incomplete (generative/meta-design).** Design the rules and affordances, not all outcomes; give users a rod and reel, not a fish (customization, tags, folksonomies, user-created groups). Find the boundary between the stable/fundamental and the malleable.
- **Pave the cowpaths; start small and grow organically.** Formalize the behavior paths users actually create rather than imposing idealized structure; do ethnographic homework first. Don't pre-build empty scaffolds of topics/groups ("if you build it, they will come" is a fallacy) — begin with one topic + welcome + help, fork on demand. Sites have killed themselves by outlawing the fun users improvised.
- **Empower frontline staff; happy staff = happy customers.** Disempowered, quota-stressed staff produce stressed interactions and service failures. Design staff tools/measures and give flexibility.

## 6. Keep the user in control

- **Always provide a working manual override (and a fallback if the override fails).** Hand jobs to autonomous systems only where machines beat humans (vigilance, computation); loss of control is unacceptable, especially in the home.
- **Remote control and automation are programming — match them to user ability/value.** Configuring actions displaced in space, time, or function breaks direct manipulation and imposes specification/coding/testing/debugging load on consumers. Don't force programming-like effort disproportionate to the value delivered.
- **"Be as smart as a puppy."** Systems that try to be human-smart and fail feel creepy (an interaction "uncanny valley"); design things known to be less capable than us, that fail endearingly and keep users in control.
- **Don't expect Internet-like glitches to be acceptable in the physical world.** Real objects respond instantly; latency, dropped commands, and out-of-sync state make the real world feel broken. IoT is largely asynchronous, so state across UIs can legitimately disagree for a while — surface pending/last-updated state.

## 7. Voice, copy, and onboarding

- **Talk like a person; UI copy is part of the UI.** Use conversational speech, not the voice of tax forms. Read it aloud; if you cringe, cut it. Use "Your," not "My," in social contexts to engage the social mind. Errors are the system's fault, never the user's — explain what went wrong, why, and what to do next. Don't break email (let people reply into the thread).
- **Comprehension underpins trust; radically simplify language.** Long legalese goes unread, so customers blindly (dis)trust. Simplify (Gjensidige cut policies 50–60%) and structure around "What if?" scenarios. Counter-intuitive threshold: a *one*-page contract tested as *less* trustworthy than ~5–10 pages (people feared hidden detail).
- **Sign-in/registration is a barter — delay and minimize it.** Don't require sign-in unless data must be stored, owned, or protected; defer to the last possible moment; collect only a unique identifier + password unless extra fields are clearly justified. Use the usage lifecycle (hear about → sign up → first use → ongoing) as a design lens, designing for both novice and returning users (let familiarity unlock faster paths).

## 8. Reputation, metrics, and gaming

- **Any number you display becomes a score, and scores get gamed (Code of Hammurabi effect).** People accumulate whatever you measure, diluting quality (Harriet Klausner: ~7 reviews/day). Reward *performance/quality*, not raw *activity*; avoid leaderboards outside genuinely competitive contexts.
- **Define and baseline metrics before launch; measure consumption, not just production.** You need "before" numbers to prove "after," tied to specific touchpoint experiences (not arbitrary top-down KPIs). Industrial lean optimizes efficiency but rarely improves customer experience — measure the experiences of agents and users.

## 9. Viability, validation, and lifecycle

- **Anchor every service in a viable proposition answering three questions.** (1) Do people understand what it is? (2) Do they see its value in their life? (3) Do they know how to use it? It must be win-win and have a business model (even if free/public). For novel categories, piggyback a known metaphor ("the Airbnb of cars").
- **Prototype the experience early; you can't rationalize a service in the abstract.** People become analytical and negative when asked to *imagine* but react authentically when they *experience* a tangible prototype. Get into the browser fast — development is design; static comps are hypotheses only the real medium confirms.
- **Ground design in qualitative insight, not just stats.** Statistics tell you *what* (70% don't cycle), not *why*. A small deep sample (9 people for Gjensidige) plus existing quantitative data can be enough.
- **A design system / service is a living, funded product, not a project artifact.** A style guide is an artifact of process; a design system is a living, funded product with a roadmap. The biggest existential threat is neglect. It needs ownership, governance, and frictionless updates or it dies.

## 10. Hardware, security, privacy, and responsibility

- **Form rarely follows function in IoT — use aesthetics to carry meaning, brand, and grouping.** Few archetypes exist and many functions have no physical manifestation; styling, character, color, and material communicate what a generic sensor does and tie a device family together.
- **Physical products are permanent and consequential.** Hardware doesn't vanish like an app; weigh BOM cost against upgradeability/future-proofing and end-of-life e-waste.
- **Security and privacy are systemic and must be usable.** Security is "a tax on the honest"; sophisticated measures used badly are less secure than simple ones used correctly. Collect minimum data, design with "tact" and contextual integrity, secure-by-default (force credential change, no hardcoded secrets), and match auth friction to risk. Privacy by Design/Default.
- **Respect the ethical dimension of social design.** Every social design carries commitments about safety, security, privacy. Avoid "original sins" (spammy viral invites, address-book grabs) to beat the cold-start problem. Keep asking: is opt-out enough? is disclosure adequate? whose responsibility is the bullying?
- **Consider the triple bottom line.** Economic + ecological + social impact, especially for public services — responsibility to stakeholders, not just shareholders.
