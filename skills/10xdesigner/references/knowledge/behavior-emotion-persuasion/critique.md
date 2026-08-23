# Critique Checklist — Behavior, Emotion & Persuasion

Self-contained, scoreable checklist for an external design-review tool. Each item: **check** (binary unless noted) · **why it matters** · **severity** (high/med/low). Grouped for scanning; IDs stable for scoring. Deduplicated across all 8 cluster books.

## A. Focus & call-to-action
- **C1.** Does each page/screen have a single, unambiguous primary goal, with all elements supporting it (no competing CTAs of equal weight)? — Multiple goals split scarce attention and lower conversion. — **high**
- **C2.** Is the primary CTA above the fold, visually distinct, action-worded (not "Submit"), and repeated ~every screen on long pages? — The CTA is the single most important element; users won't hunt for it. — **high**
- **C3.** Is the primary action's affordance obvious (looks clickable) and is the page gist graspable in a ~2-second glance? — Users scan, not read; unclear affordances kill the action. — **high**
- **C4.** Do affordances match frequency/risk (primary actions prominent; rare/destructive actions de-emphasized)? — Wrong affordances cause mis-engagement or accidental destructive actions. — **high**
- **C5.** Is there a clear visual hierarchy directing attention to one element per screen (vs. many items competing equally)? — Overcrowding raises negative arousal and causes avoidance (Hick's Law). — **high**

## B. Scent, congruency & value proposition
- **C6.** Does the landing page echo the ad/search keyword and surface relevant content in the first screen? — Relevance is judged in <1s; broken scent = bounce. — **high**
- **C7.** Is there one clear message per page (congruency), with no conflicting CTAs/offers, and does the value prop support rather than bury the thing the user came for? — Mixed messages create friction and abandonment. — **high**
- **C8.** Is the value proposition unique, desirable, and provable (not "best service/lowest price")? — Generic claims fail against instant comparison shopping. — **high**
- **C9.** On click-through, does the clicked item/image reappear on the next page (continuity preserved)? — Broken continuity breaks scent and trust. — **med**
- **C10.** Is copy custom (not manufacturer boilerplate) and is the design visually distinct from competitors? — Sameness makes the brand forgettable and unconvincing. — **med**

## C. Trust, professionalism & social proof
- **C11.** Are recognized, verifiable trust/security signals present near sensitive fields (SSL/https, seals, guarantees), AND is visual craft polished enough to signal competence? — Sensitive fields reactivate fears; trust is a gut/aesthetic judgment. — **high**
- **C12.** Are any trust seals/testimonials genuine, third-party verifiable, and FTC-compliant (not self-issued or fabricated)? — Self-issued seals correlate with *lower* trust; fake testimonials are illegal. — **med**
- **C13.** Are trust/assurance elements validated per-persona rather than copied from competitors? — The same assurance reassures one audience and raises suspicion in another. — **med**
- **C14.** Are appeals authentic and personal (faces, names, human voice) rather than impersonal/spammy? — Impersonal sources trigger automatic rejection. — **med**

## D. Personality, tone & emotion
- **C15.** Is one consistent, authentic personality expressed across visuals, microcopy, voice, error states, packaging, and marketing? — Inconsistency reads as dishonesty and destroys trust. — **high**
- **C16.** Is the tone appropriate to content and audience (no humor on serious/high-stakes topics like finance, health, hardship)? — Mismatched tone is tone-deaf and erodes trust. — **high**
- **C17.** Does the product deliver its key emotions through its own features/form/interaction (supported), not just surrounding marketing (associated)? — Supported emotion is authentic, durable, and cheap; associated-only is fragile. — **high**
- **C18.** Does every emotional claim/promise have an experience that genuinely backs it up? — Unbacked claims convert delight into betrayal and brand damage. — **high**
- **C19.** Is the visual form intentionally designed to connote target emotions and read as ordered/clean (signaling competence), not arbitrary or cluttered? — Form is the most constant emotion source; people infer quality from visual order. — **med**
- **C20.** Do "delightful" elements (mascots, animations, copy flourishes) stay off the workflow's critical path and never deliver errors/stats/help? — A mascot that blocks a busy user destroys goodwill. — **high**

## E. Aesthetics, arousal, color & motion
- **C21.** Does the aesthetic richness/arousal level match context (rich for experiential; calm for task/high-stress)? — Mismatched arousal fails to motivate or overwhelms stressed users (tunnel vision). — **high**
- **C22.** Do priority elements use sufficient color saturation and figure-ground contrast to command attention? — Saturation/contrast drive arousal/attention independent of hue. — **med**
- **C23.** For global audiences, is hue meaning localized/validated rather than relied on alone for semantics? — Hue meaning is culturally variable and can invert intent. — **med**
- **C24.** Does the page avoid distracting flashing/competing animation that diverts from the goal? — Distractions pull attention from the conversion goal. — **med**
- **C25.** Are base needs (functional, reliable, usable) satisfied *before* delight is layered on? — Delight on a broken/confusing base backfires into a rant-inducing disaster. — **high**

## F. Interaction & social rules
- **C26.** Does every user action receive immediate visual (and where useful, auditory) feedback, with a progress indicator for anything longer than a few seconds? — Missing feedback breaks the social "conversation" and erodes trust. — **high**
- **C27.** Are error/system messages free of user-blaming, using empathy/ownership/reassurance? — Negatives are over-weighted (hedonic asymmetry) and create lasting distorted impressions. — **high**
- **C28.** For tool/assistant roles, does the product take a complementary (deferential/submissive) role and let the user lead? — Users prefer to "dominate" their tools; dominant tools frustrate. — **med**
- **C29.** Does content satisfy Quality, Quantity, Relevance, and Clarity (Grice's maxims), and does the interface greet/acknowledge transitions? — Violating conversational/etiquette rules frustrates users and feels rude. — **med**

## G. Forms, choices & cognitive load
- **C30.** Are forms reduced to essential fields only, with autofill/auto-advance and no "Clear" button beside "Submit"? — Long forms cause sharp drop-off and raise privacy fears. — **high**
- **C31.** Are choices kept few, grouped, with intelligent defaults to avoid choice overload? — Too many options → no decision or regret. — **med**
- **C32.** Is cognitive overhead minimized (action and its consequence obvious; no non-obvious logical leaps)? — Each "if I do this then maybe that" taxes the user even when physically easy. — **med**
- **C33.** Could any required work be cheated away — defaulted, automated, or made incidental — leaving only informed consent? — Engineering the action away beats persuading the user (auto-enroll notably raises participation). — **high**

## H. Behavior-change mechanics
- **C34.** Is the desired action explicitly stated and asked for (not merely implied)? — Every mental leap between cue and action loses people (stating + personalizing roughly tripled response rate in one study). — **high**
- **C35.** Is the user given a cue at the moment of action (asked now, or via implementation intentions), not relying on them to remember later? — The cue is the first and most-skipped stage; no cue = no behavior. — **high**
- **C36.** Has the action been pared to its minimum viable form (repeated→one-time where possible, no nice-to-haves, ≤~12 chunks)? — Every extra step reduces completion. — **high**
- **C37.** Are benefits framed as immediate/near-term and effort as future (countering temporal myopia)? — Present-bias drives procrastination. — **med**
- **C38.** Is there a clear, immediate, meaningful reward for any repeated action meant to become a habit, tied to a single-purpose cue? — Habits require cue-routine-reward with immediate reinforcement. — **med**
- **C39.** Are direct cash payments avoided for repeated voluntary behaviors? — Extrinsic rewards crowd out intrinsic motivation; behavior collapses when they stop. — **med**

## I. Outcomes, metrics & the unhappy path
- **C40.** Is the success metric a concrete, measurable, observable real-world outcome (not a "state of mind")? — Unmeasurable goals hide the wrong-product risk and invite endless argument. — **high**
- **C41.** Do success metrics measure real value, not just what's easy to count (clicks, comments, features)? — Easy metrics get gamed and detach from goals (Goodhart's Law). — **high**
- **C42.** Is the causal link between the target action and the outcome explicit and plausible (or tested), not a multi-step leap? — A big action→outcome leap is the most common silent failure. — **high**
- **C43.** Has the design been red-teamed for the unhappy path and abuse cases? — Survivorship bias hides catastrophic failure modes and harms. — **high**
- **C44.** Is the whole funnel/journey optimized end-to-end (entry → final conversion), not just one landing page? — Fixing one page while checkout leaks most of it accomplishes nothing. — **high**
- **C45.** Has someone physically walked the complete journey (home-to-home, including before-arrival and after-exit) as the user? — Surfaces invisible friction the maker can't see from inside their assumptions. — **med**

## J. Waiting, navigation & edge cases
- **C46.** Are waits/loading states announced up front with expected (slightly over-quoted) times and filled with useful/engaging content? — Perceived wait drives satisfaction more than actual duration. — **high**
- **C47.** Can the point-of-contact resolve common questions on the spot without bouncing the user around? — Bounce-arounds turn manageable friction into abandonment. — **high**
- **C48.** Are non-standard users (accessibility, locale/language, novices, edge cases) given explicit, discoverable paths — and is there always an off-ramp to a human/alternative? — Standardized-only flows abandon real users at dead ends. — **high**
- **C49.** Is product availability and concrete delivery/timing shown before checkout? — Surprises at payment (out-of-stock) kill conversion and trust. — **med**

## K. Content fluency & ordering bias
- **C50.** Does important/trustworthy content *look* easy to read (scannable chunks, imagery, plain language), not just *read* easy? — Users judge task difficulty and believability from visual fluency before reading. — **high**
- **C51.** Is plain language used for safety/health/legal/critical info (target ~3rd–8th grade reading level)? — Plain language measurably improves comprehension, trust, and outcomes. — **high**
- **C52.** Is the top/first item in any ranked list there because it's genuinely most important, not merely most recent? — Users treat top position as most authoritative (serial position effect). — **med**
- **C53.** For evaluative/judgment screens, is biasing-but-irrelevant identity info (name, photo, school, employer, race, location) removed or deferrable? — Its presence triggers mere-exposure and pattern-matching bias and produces unfair outcomes. — **high**

## L. Friction at high stakes
- **C54.** On high-stakes or irreversible actions, is there purposeful friction (confirmation, slow content, reflective prompt) rather than a frictionless rush? — Fast thinking causes regret-prone, harmful errors. — **high**
- **C55.** Is there a reflective speed bump before users post potentially hurtful content? — A two-sentence "are you sure?" prompt cut adolescent hate-posting by over 90% in one program. — **med**

## M. Defects, maintenance & touchpoints
- **C56.** Are there any out-of-place defects (typos, dead links, broken images, inconsistent theme, stale data) that break the illusion? — A single contradiction can negate the whole moment's credibility. — **high**
- **C57.** Is internal machinery / raw error / implementation seam hidden ("backstage") behind clean status/empty/error states? — Anything not supporting the experience detracts from it. — **med**
- **C58.** Have "trivial" touchpoints (packaging, empty/error states, confirmations, microcopy, loading, 404s) been intentionally designed for emotion? — Every touchpoint emits emotion whether designed or not; low expectations make them high-yield. — **med**
- **C59.** Is there a defined plan to maintain and continuously improve the experience post-launch? — Experiences decay; broken-windows neglect spreads; returning users expect more. — **med**

## N. Change management & inclusion
- **C60.** When changing the interface, are users given a choice ("you may", opt-back-out) and a gradual/foreshadowed rollout rather than a forced switch? — Forced change breeds backlash; familiarity is itself pleasurable. — **med**
- **C61.** Is there an error/outage communication plan that leads with honest facts and regular updates before any levity? — Wrong tone during failure churns stressed users. — **high**
- **C62.** Do assistive/accessibility accommodations help without stigmatizing, and do identity/demographic inputs match reality (open field, no fixed radio set or "Other")? — Stigma and notational bias cause rejection and erase identities. — **med**
- **C63.** Does the design avoid rigid gender stereotyping ("shrink-and-pink")? — Stereotyped products fail their audience. — **low**

## O. Ethics & dark-pattern firewall (run on every persuasive element)
- **C64.** For each persuasive technique present, would the user endorse it if they fully understood it — and would you openly disclose *why* the layout/default favors a particular option? (the **disclosure test**) — The good/evil line is whether it serves the user's reflective interest; if not, it's a dark/gray pattern. — **high**
- **C65.** Is participation genuinely voluntary, disclosed, and free of hidden manipulation or coercion (no action taken on the user's behalf without opt-out)? — Crosses the ethical bright lines and undermines lasting change. — **high**
- **C66.** Are all consent/marketing/data/add-on checkboxes opt-in (unchecked by default)? — Pre-checked boxes manufacture consent via inertia. — **high**
- **C67.** Are optional fields clearly separated from required ones so adjacency doesn't imply requiredness? — Adjacency-to-required is a dark pattern that harvests unwanted data. — **med**
- **C68.** Is cancellation/unsubscribe/account-deletion at least as easy as sign-up? — Asymmetric exit friction is a defining dark pattern. — **high**
- **C69.** Is the full all-in price (including fees) shown before the user commits effort or data, and are hard terms disclosed up front (not after investment)? — Late-revealed cost exploits sunk-cost. — **high**
- **C70.** Are any "original price"/"was $X" anchors real and verifiable, and are scarcity/urgency cues (countdowns, "low stock", "N viewing") truthful? — Fake anchors and fabricated scarcity are deceptive pressure (and overuse desensitizes). — **high**
- **C71.** Are "savings"/discount calculations shown with their math, and if tokens/credits are used, is the real-money value plus expiry/refund terms clear? — Hidden math and token currencies obscure real cost and profit from breakage. — **med**
- **C72.** Is the user-beneficial choice on the default/easy path (not buried behind extra clicks)? — Desire lines determine what most users actually do. — **high**
- **C73.** Do reward/engagement mechanics avoid undisclosed variable-reward (loot box/gacha) loops, disclose odds where present, and provide stopping cues? — Variable reinforcement drives compulsion. — **high**
- **C74.** Does the design avoid manufacturing frustration (artificial waits/limits) solely to sell its removal (pay-to-skip)? — Pay-to-skip monetizes engineered pain. — **med**
- **C75.** Are privacy/legal disclosures in plain language and located at the point of decision (not dense/off-path)? — Off-path dense copy is deliberate obfuscation. — **med**
- **C76.** Are surveys, CTAs, and questions worded neutrally (no leading/push-poll framing)? — Leading questions implant conclusions and skew feedback. — **low**
- **C77.** Where social features rely on anonymity, are situational norms, persistent pseudonyms, and visible moderation in place? — Deindividuation removes accountability and invites antinormative behavior. — **med**

## P. Process & stakeholder alignment
- **C78.** Are all stakeholders aligned to one higher-order purpose statement that overrides siloed incentives (and ranked standards that pre-decide tradeoffs)? — Misaligned incentives silently sabotage the design. — **high**
- **C79.** Is change pitched/optimized one-thing-at-a-time and hypothesis-driven (not brute-force multivariate or drastic blind redesign), and validated in the field? — Brute force dilutes learning; no behavioral magic wands exist. — **med**
- **C80.** Is feedback collected in a way that protects dissent (anonymous, agree/disagree without reply, riskiest decision scheduled first)? — Open collection triggers bandwagon effect/false consensus; decision fatigue depletes judgment. — **med**
