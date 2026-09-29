# Specialized Domains — Critique Checklist

Self-contained, scoreable checks for an external design-review tool. Each item: **check** · **why it matters** · **severity** (high/med/low).

Apply the cross-cutting section to any artifact; apply a domain section only when the artifact targets that domain.

---

## Cross-cutting (apply to every artifact)

- [ ] **Multi-stakeholder model, not a single "user."** Does the design name *whose* perspective it serves and account for other people with potentially conflicting goals (including non-users and the buyer-vs-user split)? — _why:_ "family"/"health seeker" is reflexive; one person is never a valid proxy, and kid-user ≠ parent-buyer. _severity:_ high. [Home][Care][Kids]
- [ ] **Grounded in real context, not lab/memory/assumption.** Was it studied/validated in the real setting with real intended users (in-situ, observed play, observed workarounds) rather than a lab, survey, or invented persona? — _why:_ context shapes use; latent needs hide in unreported friction; lab metrics miss social/relational effects. _severity:_ high. [Home][Kids][ID][Care]
- [ ] **Solves a real, validated need better than cheaper/lower-impact alternatives.** — _why:_ solving a non-problem (Segway vs. bicycles at ~2% cost) or duplicating components a paired phone already has wastes everything. _severity:_ high. [Sustain][ID][Home]
- [ ] **"Simplicity" is genuine clarity, not feature deletion or visual minimalism.** Self-evident purpose and intelligible states; redundancy/controls added where they cut cognitive load. — _why:_ minimal-but-confusing designs fail in use and get discarded. _severity:_ high. [ID][Sustain]
- [ ] **Full ability/gender/mode spectrum from the start.** No red/green-only coding (~10% of men are color-blind); combined renderings (visual + auditory); multiple input/interaction modes. — _why:_ "all technology is assistive"; inaccessible designs serve fewer people and get abandoned. _severity:_ high. [ID][Sustain][Care]
- [ ] **Behavior change via defaults/intrinsic motivation, not nagging or bolted-on rewards.** Responsible/desired choice is the default or intrinsically rewarding; no points/badges papering over a missing "why"; rewards not diluted by duplication. — _why:_ extrinsic rewards fade; forcing/scaring backfires. _severity:_ med. [Sustain][ID][Kids]
- [ ] **System-level reframing before the artifact.** Was the problem framed at the system/ecosystem level (and matched to its order of complexity) rather than jumping to a single device? — _why:_ a product-level fix to an organizational/systemic problem fails; new devices enter an ecosystem of dependencies. _severity:_ med. [Care][Sustain][ID][Home]

## Healthcare [Care]

- [ ] **Most relevant content/answer appears first**, above ads, related rails, and secondary nav. — _why:_ anxious/time-pressured health seekers can't dig through density. _severity:_ high.
- [ ] **Main content exposed to assistive tech first** (skip links; no duplicated nav to traverse). — _why:_ accessibility for impaired/older users. _severity:_ high.
- [ ] **Design assumes users may be in pain, anxious, or urgent** — not calm and rational. — _why:_ health seeking is emotional and intuitive, not stepwise-rational. _severity:_ high.
- [ ] **Dose/value fields prevent ambiguous numerics** (no leading/trailing zeros; unambiguous display; clinical language). — _why:_ prevents fatal medication errors (22 CPOE error situations documented in a key study). _severity:_ high.
- [ ] **Critical patient data synthesized in one view**, not fragmented across screens/systems. — _why:_ wrong-patient / wrong-med / missed-allergy errors. _severity:_ high.
- [ ] **Optimizes perceived speed of task completion** (no scroll/load lag) over engagement/aesthetics for clinical users. — _why:_ clinicians work in rapid bursts; any added delay is "completely unacceptable." _severity:_ high.
- [ ] **Preserves essential face-to-face/verbal/tacit exchanges** (handoffs, shift change) rather than replacing them with documentation. — _why:_ "can does not demand ought"; tacit knowledge transfer. _severity:_ high.
- [ ] **Research rigor matched to risk** (heuristic → RCT). — _why:_ high-hazard settings demand stronger evidence than consumer UX. _severity:_ high.
- [ ] **Locally usability/clinically tested before deployment** (no field treated as safe by default; beware vendors who withhold screenshots / use "hold harmless" clauses). — _why:_ prevents "information malpractice." _severity:_ high.
- [ ] **Current location indicated in navigation** (active state + breadcrumb). — _why:_ orientation/wayfinding. _severity:_ med.
- [ ] **Secondary content organized as an ordered topic hierarchy**, not a flat list mixed by content type. — _why:_ reduces scan/negotiation cost. _severity:_ med.
- [ ] **Specific conditions kept distinct from broad catch-all categories.** — _why:_ prevents frightening/incorrect mental models. _severity:_ med.
- [ ] **Clinical interface is minimalist** (no advertising, decorative imagery, unnecessary richness). — _why:_ precision and unambiguous action under high risk. _severity:_ med.
- [ ] **Existing manual/paper artifacts studied before being digitized.** — _why:_ endogenous artifacts (Kardex, whiteboards) encode real needs and provide resilience. _severity:_ med.
- [ ] **Clearly signals when the user has achieved their goal / completed the process.** — _why:_ health seeking has no inherent end state. _severity:_ med.
- [ ] **Supports patient/caregiver agency** (records, data, next steps, trajectory) rather than enforcing passive patiency. — _why:_ patient engagement and self-management. _severity:_ med.

## Children [Kids]

- [ ] **Target age range is narrow (~2-year band)** and design matches that band's cognitive/motor stage. — _why:_ a 3yo and 6yo need different designs. _severity:_ high.
- [ ] **Under-6: clear visual distinction between interactive and decorative elements** (border/size/brightness). — _why:_ kids can't infer hierarchy. _severity:_ high.
- [ ] **Under-6: navigation stays static** (no rollover wiggle/sound). — _why:_ kids associate one behavior per object and won't click "moving" nav. _severity:_ high.
- [ ] **Under-6: icons are literal/concrete**, not abstract adult symbols. — _why:_ no abstract thought yet. _severity:_ high.
- [ ] **6–8: goals/rules explained up front**, in multiple formats (text + audio/video), in a sentence or two. — _why:_ 6–8s won't start without facts and may not read yet. _severity:_ high.
- [ ] **Social features limited** (canned chat, moderation, abuse-reporting, age-gating, parental opt-in) rather than open free-form chat. — _why:_ predator/cyberbullying/COPPA risk. _severity:_ high.
- [ ] **COPPA handled**: verifiable parental consent for PI (geolocation, photos/video/audio of child, persistent tracking IDs); planned before building. — _why:_ FTC fines ~$50k–$3M + up to 20-yr audits; retrofit is expensive. _severity:_ high.
- [ ] **Under-4: limited palette** (~5 bright colors on a plain ground). — _why:_ color overload kills usability; color is the primary preattentive cue. _severity:_ med.
- [ ] **Under-5: strong foreground/background separation** by detail and saturation. — _why:_ no flat-screen depth perception until ~age 5. _severity:_ med.
- [ ] **Every sound has one consistent meaning** (per a sound inventory). — _why:_ kids map meaning to sound. _severity:_ med.
- [ ] **Feedback after each child action/milestone** (esp. positive). — _why:_ kids reward effort and sustain engagement on it. _severity:_ med.
- [ ] **8–10: teaching via contextual post-failure messages**, not only up-front instructions. — _why:_ self-styled "experts" skip directions. _severity:_ med.
- [ ] **Progress is saved/resumable** (and ideally print/share take-aways). — _why:_ continuity/permanence clicks from age ~6. _severity:_ med.
- [ ] **"Winning" de-emphasized; always a low-stakes "try again."** — _why:_ losing anxiety from age 4. _severity:_ med.
- [ ] **Ads clearly separated and labeled** (for 8+). — _why:_ kids now distrust hidden ads. _severity:_ med.
- [ ] **Parents' section present** (goals, what the child gets, "set-and-forget" controls). — _why:_ parents are the buyers and pass the device back unattended. _severity:_ med.
- [ ] **Content stays under the Parental Threshold for the Revolting (PTR)** for the target age. — _why:_ parents won't approve/download. _severity:_ med.
- [ ] **10–12: mobile-first and focused on a narrow interest** (offer complex decisions via a simple interface). — _why:_ 'tweens browse on phones and over-deliberate dense interfaces. _severity:_ med.
- [ ] **Large touch targets, broad gestures, bottom-corner nav** for the youngest. — _why:_ clumsy hands; whole-hand scrolling under 5. _severity:_ low.

## Domestic / family tech [Home]

- [ ] **Evaluated in situ (real homes), not only a lab/living lab.** — _why:_ realism and ecological validity are the core value. _severity:_ high.
- [ ] **Household treated as individuals with conflicting goals**; states "whose family" and the unit of analysis. — _why:_ "family" is reflexive; proxies invalidate data. _severity:_ high.
- [ ] **All stakeholders consulted, including non-users and affected non-participants** (consent beyond IRB minimums). — _why:_ ignored members cause withdrawal, non-use, or sabotage. _severity:_ high.
- [ ] **Varied privacy needs supported** for always-on/awareness features (blinds, off, selective deletion, diverse placement). — _why:_ constant connection strains some relationships. _severity:_ high.
- [ ] **Prototype piloted off-lab** in conditions mirroring real homes (full multi-home topology; home bandwidth/routers/firewalls). — _why:_ lab networks hide deployment-killing failures. _severity:_ high.
- [ ] **If it controls/replaces critical infrastructure, it fails safe** (watchdogs, heartbeats, auto-recovery, alerts). — _why:_ failures dominate reactions and can endanger occupants (~100% uptime expected). _severity:_ high.
- [ ] **Multiple redundant data-collection methods** and ≥2 recordings; not diary-reliant. — _why:_ field data is fragile; diaries go unfilled. _severity:_ high.
- [ ] **Children and quiet members interviewed directly and separately** from dominant members. — _why:_ parents are poor proxies; their presence biases responses. _severity:_ high.
- [ ] **Privacy protection is visible and on-site** for sensitive/taboo topics (not just post-processing). — _why:_ being *seen* to protect privacy builds the trust needed to open up. _severity:_ high.
- [ ] **Positive AND negative effects measured per individual and relationship** (validated instruments; baseline vs. deployment). — _why:_ surfaces who is harmed and the real trade-offs. _severity:_ high.
- [ ] **Build scoped to a Minimum Viable Prototype** (rare config offloaded to manual/email). — _why:_ extra features add cost and frailty without research payoff. _severity:_ med.
- [ ] **Participants recruited for genuine need/benefit and given ownership** (choosing partners, placement). — _why:_ need and ownership drive real use and rich data. _severity:_ med.
- [ ] **Plan respects the family's temporal rhythms** (seasons, school, work shifts, holidays). — _why:_ wrong timing kills recruitment and skews data. _severity:_ med.
- [ ] **Sensitive home issues also studied outside the home** (community/support groups). — _why:_ in-home interviews suppress self-censored conflict ("spillover" appears elsewhere). _severity:_ med.
- [ ] **Video-chat studies plan setup time, time-zone confirmation, ice-breakers, artifact-capture workarounds.** — _why:_ remote interviews fail differently than in-person. _severity:_ med.
- [ ] **Field visits staffed by ≥2 people** (interviewer, note-taker/tech expert) with researcher-safety planning. — _why:_ safety, coverage, and rapport in unknown homes. _severity:_ low.

## Industrial / physical products [ID]

- [ ] **Critical modes/states represented unambiguously and persistently** (ideally physical/concrete, checkable at a glance). — _why:_ abstract status invites error in high-stakes/low-attention contexts. _severity:_ high.
- [ ] **If it learns from user data, it "wears in" not "locks in"** (works with other products, gives data control). — _why:_ lock-in is anti-user and erodes trust. _severity:_ high.
- [ ] **Latent struggles found via observation** (not just surveys); edge cases / loose ends handled. — _why:_ thoughtful detail is where empathy becomes tangible. _severity:_ high.
- [ ] **Alerts/feedback graduate by severity and tell the user the right action**, not just signal. — _why:_ undifferentiated alarms cause mistrust or panic. _severity:_ high.
- [ ] **Beautiful — beauty treated as a requirement** (dignity, honesty), not a skin, even for utilitarian/disposable/medical products. — _why:_ aesthetics drive perceived usability and respect for the user; "not beautiful = not complete." _severity:_ high.
- [ ] **Medium (physical vs. digital) chosen for fit per behavior** — no default screen; no direct translation of screen patterns into physical space; nudge placed in the same medium/moment as the behavior. — _why:_ wrong-medium choices break the experience. _severity:_ high.
- [ ] **Engages more than sight** — purposeful touch, sound, weight, or motion. — _why:_ multisensorial products feel higher quality and more alive. _severity:_ med.
- [ ] **Form avoids trend-driven styling** in favor of a quintessential, enduring archetype. — _why:_ trendy forms date faster than they break. _severity:_ med.
- [ ] **Each converged/combined feature is a genuine synergy of always-paired steps**, not a tech-enabled mash-up. — _why:_ pointless convergence adds complexity. _severity:_ med.
- [ ] **Playful/delightful elements intrinsically integrated** so they support (or don't harm) core function. — _why:_ playfulness fighting function makes a toy, not a product. _severity:_ med.
- [ ] **Form honestly reflects function, material, and manufacturing** (no facade hiding poor quality; even unseen parts clean). — _why:_ honest products demand and signal quality throughout. _severity:_ med.

## Sustainability [Sustain]

- [ ] **Disassembles into separable, single-material parts** using few standardized, accessible fasteners. — _why:_ disassembly cost decides recycled-vs-landfilled. _severity:_ high.
- [ ] **All parts clearly labeled with material type** (molded-in or affixed). — _why:_ unlabeled parts are diverted to trash. _severity:_ high.
- [ ] **Avoids "monstrous hybrids"** (bonded dissimilar materials / blended fibers). — _why:_ effectively unrecyclable. _severity:_ high.
- [ ] **PVC avoided** (or minimized where unavoidable). — _why:_ highest-toxicity, highest-full-cost common plastic (ᴶ34× the full-cost of HDPE). _severity:_ high.
- [ ] **Toxic materials eliminated/substituted and minimized in quantity.** — _why:_ worker/environment/customer health and liability. _severity:_ high.
- [ ] **Material and energy use minimized** (lighter, smaller, fewer components/types). — _why:_ ~80–90% of impact is set in manufacturing. _severity:_ high.
- [ ] **High-impact/worn components user- or service-replaceable** so the whole product isn't junked. — _why:_ extends life, preserves embodied impact. _severity:_ high.
- [ ] **Extends useful life** (durability, classic styling, upgradability, serviceability). — _why:_ doubling life ~halves replacement impact. _severity:_ high.
- [ ] **Genuinely usable, clear, and accessible** for intended users and modes. — _why:_ poor fit drives returns/abandonment (most returns are non-functional, costing billions in unsaleable electronics). _severity:_ high.
- [ ] **Reuse or take-back/closed-loop path designed in** (not just "recyclable"). — _why:_ recyclability ≠ recycled. _severity:_ med.
- [ ] **Life-cycle assessment (proxy/matrix or full) run across all phases** before claiming benefit. — _why:_ single-phase comparisons can invert. _severity:_ med.
- [ ] **Standby/vampire power minimized** with energy-saving/auto-off modes. — _why:_ a large share of U.S. household electricity is wasted standby. _severity:_ med.
- [ ] **Packaging light, separable, recycled/recyclable, refillable, or multi-purpose.** — _why:_ packaging is a large hidden share of impact. _severity:_ med.
- [ ] **Materials/energy sourced locally/renewably where life-cycle math supports it** (not naïve "food miles"). — _why:_ proximity usually helps but regional differences can flip the math. _severity:_ med.
- [ ] **Could be transmaterialized (offered as a service) or informationalized** (send recipe/data). — _why:_ can radically cut material/transport impact. _severity:_ med.
- [ ] **Engages deeper levels of significance (meaning/values)**, not just fleeting emotion. — _why:_ deeper engagement lengthens keeping and reduces disposable consumption. _severity:_ med.
- [ ] **Claims specific, substantiated, plain-language, and significant** (not greenwashing). — _why:_ false/vague claims mislead and damage credibility. _severity:_ med.
- [ ] **Social impacts considered** (who makes/services it, where, at what labor cost). — _why:_ social sustainability is part of the triple bottom line. _severity:_ med.
