# Onboarding & Product — Principles

Deduplicated, cross-referenced principles for the onboarding-product cluster. Each entry merges every source that asserts the idea and keeps the sharpest phrasing.

---

## A. What onboarding is

- **Onboarding is a journey over time toward a successful outcome, not a one-time first-run moment or a completed checklist.** It connects activities across days/weeks/months, starts before the product (with the motivation to change) and ends at the user's real-world success, with the user as the star. Optimize for the user reaching a "successful moment" of real value — completion (100% of a progress bar, filled fields) is correlation, not causation.
- **Onboarding is an interpersonal/relationship problem, not an interface problem.** You are progressing a relationship and welcoming a guest, not introducing a UI. Behave like the world's best butler (or a good restaurant waiter who greets and walks you through the menu), never a disinterested DMV teller. A welcome should set tone, offer a contact touch point, and give one clear next step.
- **Onboarding is continuous and everyone's job; it never ends at signup.** It spans marketing, growth, product, sales, and support, and must re-onboard existing users at every new feature, redesign, or returning ("re-boarding") moment. Silos create jarring transitions that "read like an office directory" (Conway's Law). Distribute ownership and organize patterns by user need, not under "onboarding."
---

## B. Design backward from the end state

- **Design backward from the engaged/core user, not forward from first run.** Define the end state — "core use" / the fully-engaged user's scorecard / the 3–6 recurring habit routines — then strip back to reveal what to surface first. Classify every action as Required (force in onboarding), Encouraged (nudge after), or Eventual (discoverable later).
- **Start from the business need and the user need, never from the screen; design flow and context before the screen.** A measurable, achievable business goal plus a validated user problem drives every decision. Flow = the order/how of tasks; context = the where/when (device, location, interruptions, connectivity). The on-screen interaction is one moment; the experience is that moment plus everything around it.
- **Nail the core habit-building loop before onboarding, discovery, or mastery.** Game Thinking order: Habit (Core Loop) → Onboarding → Discovery → Mastery. Building onboarding on a leaky core loop is a "leaky bucket." Complete and make reliable the core job before broadening scope — SaaS rewards reliable+complete over bloated+buggy.
- **Ship the smallest learnable thing ("find the core").** Distinguish minimum *required* scope (won't break, can still learn) from minimum *desired* scope (what the team wants). Goal: smallest version that solves a user problem AND lets you measure the business metric. Validate the riskiest (likelihood × severity) assumption with the smallest viable test before heavy build.
---

## C. Design for jobs and motivation, not features or attributes

- **Customers "hire" a product to do a job; design for the job/motivation/situation, not for the feature taxonomy or persona attributes.** People buy the quarter-inch hole, not the drill. Many people with diverse attributes share identical motivations, so attribute-based design artificially shrinks your audience. A product competes with anything hired for the same job (milkshakes vs. bagels/bananas).
- **Specify features as Job Stories, not user stories: "When [situation], I want to [motivation], so I can [outcome]."** This captures situation, motivation, and outcome without coupling to a persona or a presupposed implementation — so when a feature fails you can tell whether the build or the assumed motivation was wrong.
- **Onboard people toward becoming "better people," not toward activating features.** Frame value as a single human improvement (Evernote = "better at remembering," not "better at storing notes"). Lead with the end state — the dream of the improved self ("fire flower" / Karate-Kid trophy) — then immediately ground it in the concrete mechanism ("ok, how?"). Never lead with the chores.
- **Every UI element must trace back to a job/anxiety it resolves.** In a well-designed feature each element eases a specific anxiety or advances a specific motivation; annotate each element with its job and remove/redesign those that resolve none.
- **Define where your product stops — own the smallest painful subset of the workflow.** A Goldilocks problem: too little and it isn't worth installing; too much and it collides with tools users already rely on. Start at the first step you can add value, leverage existing infrastructure, and stop where entrenched leaders, varied methods, or different end-users take over.
---

## D. Reach value fast — the aha moment and quick win

- **Generate the "aha moment" early — ideally before signup — and frontload it within the user's real-world context.** Most users never reach an in-app aha if it requires significant futzing or a high-touch demo; blind faith is not an acceptable requirement for progressing. Anchor value in the user's real workflow, not inside your screens (POP's step 1 isn't even in the app).
- **Pick ONE achievable "quick win" / base camp for the first visit, defined as real success — not "learned the interface."** It must demonstrate the core essence, be doable in one sitting, rely on a current intent, and not depend on others, IT/clearances, or content the user lacks. Lead with an action everyone is ready for (Twitter → "follow"; Timely → suggested quotes lifted activation 7%→70%).
- **Don't make users explore — give them a task; lead them through the *required* actions only.** "Let users explore" is a terrible goal, including for B2B and games (a game hides the rocket launcher until needed). Ask one piece of info at a time, hide advanced features until needed.
- **Don't mistake activity for achievement; define a workflow by its outcome, not its steps.** Every step is another chance to drop off. Cut steps that don't advance the real goal; defer, default, or autosave the rest (survey-creator: 8 steps → 3). Sometimes splitting a step raises completion — but never confuse "passed our steps" with "got what they came for."
---

## E. Guidance: bake it in, deliver it just in time

- **Use guided interaction — weave guidance into the actual interactions so users learn by doing.** It is the middle ground between front-loaded instruction (videos, tours, slideshows, carousels) and unsupported immersion. The best guidance blends in so seamlessly the user barely notices it (Plants vs. Zombies level 1). Honor the paradox of the active user: people skip manuals and dive in.
- **Bake guidance into the baseline product first; treat additive UI as supplemental.** A product that explains itself beats one propped up with coachmarks and tours — if it needs more interface to introduce itself, fix the interface. Affordances, IA, microcopy, animation, presets, and empty states inherently onboard; that is what remains when a user skips the tour. Tours signal onboarding was tacked on; if one stays, make it guide through *doing* an action, not restate button labels.
- **Deliver information "just enough, just in time"; reveal features progressively as usage evidence accumulates.** Teach in the moment a piece becomes useful (Super Mario Bros. reveals only the next slice of the level). Front-loading everything guarantees early stalls; fewer, behavior-triggered messages reach more of the right people.
- **Reinforce key concepts via spaced, contextual repetition, not single exposure.** Memory drops sharply within a day (Ebbinghaus); distributed contextual exposure builds retention and routine. If you can't find a contextually relevant moment to reinforce something, it may not be important enough to show at first run.
- **Match guidance strength to your confidence in the user's context, and prefer the least disruptive presentation.** The more confident an action is relevant and achievable now, the harder you can prompt. Order of preference: inline cues → hints → overlays → setup wizards. Show overlays only at natural pauses or in response to user action — interruptions are ignored even when important.
- **Differentiate onboarding for different segments and learning styles — there is no one-size-fits-all.** Companies (startup/SMB/enterprise) move at different speeds; individuals learn by reading, watching, or doing. Provide multiple "scaffolds" (docs, videos, demos, live help) toward one shared goal: value extraction.
---

## F. Reduce friction and remove gates

- **Cognitive resources are finite fuel; eliminate Points of Friction and Points of Disconnect on the critical path.** The brain depletes attention like oxygen. Friction = any moment the user halts (CAPTCHA, password rules, credit card, unresponsive UI). Disconnect = any door that lets attention drift off-path (coupon search, email-confirmation detour into the inbox).
- **Defer commitment; give a "free sample" before asking for signup, and reduce signup to the minimum with progressive profiling.** Let users experience value before an account is required. Ask too much and they abandon; ask too little and they churn — collect only what's needed now and build the profile over time. Base "progress" on what the *user* wants, not the business. Offer social login where it fits (92% of people have left a site rather than recover a login — Janrain).
- **Never force a detour out of the flow to continue** (e.g., email confirmation before app access, or installing code/importing data first). Grant provisional access with a non-blocking "confirm your email" banner; defer the technical step (Intercom deferred JS install + added CSV import → email-to-signup conversion ~30%→45%).
- **Strip navigation and distraction from critical/focus flows (checkout, first-run task).** Intent-to-complete leaks away with full header/nav and cross-sells; re-engage with cross-sells only after the task completes (Amazon). When using focus mode, keep the real app faintly visible behind the task ("Emerald City in the Distance," Quora interest picker) to avoid untethered anxiety.
---

## G. Teams, switching, and friction beyond the individual

- **Model team/B2B onboarding as flexible parallel paths, not a blocking linear chain.** Different steps belong to different people (credit card, admin/integration, legal, end user); a linear chain means only the busiest person (the CEO) can finish unassisted. Provide escape hatches to skip ahead, let users invite the right colleague to unblock a step, and identify an onboarding leader/internal champion (crucial to B2B adoption).
- **To make people switch, work all four forces — quality is only one.** Switching = Push (current pain) + Pull (new solution magnetism) − Anxiety (fear of the new) − Habit/Attachment (status-quo inertia). Two forces help, two fight you. Reduce switching friction: show why the old way no longer makes sense, prove switching is safe/quick, dissolve attachment.
- **Expect a ~10x improvement before mainstream switching (the 9X Effect), or attack a non-quality force.** Users overvalue what they have 3x and you overvalue your innovation 3x → a 9x perception gap; marginal gains don't trigger switching.
---

## H. States, feedback, and momentum

- **Handle blank/empty states as opportunities to paint future value and guide the next action — never as accusations or bare blanks.** Replace "you have no friends / your campaign is empty" with encouragement plus a clear CTA. Prefer "content-as-tutorial" (real seeded content that instructs — Trello welcome board, Basecamp "Explore Basecamp!" project) over fake "dummy data" that only illustrates and confuses.
- **Every output on a screen needs a matching input; keep asking "What happens next?" until the user's intent is fully met.** Any non-hard-coded data (UGC, catalog, copy, A/B variants) needs an interface to create/edit/delete it, plus rules and empty/error states. A flag button with no admin/notification/resolution path is a broken half-feature.
- **Make every interaction responsive and human; make errors specific, actionable, and linked to help.** Silence after a submit makes the user turn inward ("did I do something wrong?"). State why an error occurred, give an actionable option to resolve, link to resources (TransferWise retake-photo).
- **Structure each onboarding action as prompt → work → follow-up, and acknowledge/celebrate completion (Peak-End).** The prompt makes the case, the work guides subtasks, the follow-up acknowledges success and gives meaningful next steps. Never let a finished setup silently disappear — celebration costs nothing, has outsized emotional effect, and is a prime moment for the next recommendation. Use a quest/checklist with endowed progress (some items pre-checked) and a visible progress meter.
- **Use interpersonal motivators (faces, social proof, encouragement, social bonds) INSIDE the product, not just in marketing — and ground proof in real outcomes.** Faces are processed primally; spread them across pages (and in-app) rather than clustering ("crabs in a bucket"). Social proof should show concrete impact ("average user saves $4,985") over vanity follower counts. Social ties create accountability that drives retention; lifecycle emails are the connective tissue pulling users back.
---

## I. Measurement and ethics

- **Measure user-behavior change and the whole funnel — not vanity metrics; trigger on behavior, not calendar time.** Acquisition, signups, installs, and step/profile-completion are vanity metrics that don't predict stickiness; pair them with retention/engagement and always track danger/health metrics you must not harm. Message/intervene based on usage milestones (10th session, day-3 success action), not "it's been 7 days." The convert decision is made early in a trial, not at day 28–30. Build an early-warning system for at-risk users while you can still influence them.
- **Pair quantitative "what" with qualitative "why"; interview recently-switched users.** Metrics alone can't explain behavior, and emotional jobs-to-be-done never appear in dashboards. Interview users right after the switching moment while emotional memory is fresh; ask about past behavior, not imagined futures.
- **Never use dark patterns.** Any element that benefits the company at the expense of a fully-informed user (pre-checked opt-ins, hidden subscriptions, deliberately hard cancellation, holding the user's work hostage to force signup) backfires long-term via churn and bad word of mouth.
- **Don't optimize a fundamentally wrong onboarding; know when to redesign vs. tune.** Plot performance against context-change: new + performing well → optimize; old + underperforming after big shifts → redesign. Reject button-color "whack-a-metric" optimization in favor of outcome-driven design.
---

## J. Craft and consistency

- **Keep one continuous narrative and consistent personality/voice across every touchpoint; maintain the "scent of information."** Each touchpoint must stay consistent with the user's expectation from the prior one (ads → landing → signup → first run → emails → errors). If marketing's promise doesn't match the page it points to, the user is "doomed from the start" — no wizard fixes a wrong expectation.
- **Use familiar affordances and conventions, and a working style guide / component library.** Reuse familiar IA, navigation, labels, and verb-based microcopy so users don't relearn (Jakob's Law); bad novel metaphors backfire (Microsoft Bob). Maintain a reusable library of elements/layouts/code (not a brand sheet) so buttons look like buttons and engineers can assemble screens consistently.
- **Use design patterns because they fit the user's behavior, not because they're popular.** Pinterest's grid, Facebook's feed, and Tinder's swipe work because they match what that user is doing; borrowing them wholesale ("Pinterest for corporate docs") creates usability nightmares. Onboarding "best-practice patterns" are not universal — consumer patterns often fail in B2B.
- **Set presets/defaults for success — most users never change them** (<5% of word-processor users changed defaults).
- **Write 5–8 actionable, research-grounded design principles to judge designs against.** Good ones are descriptive, pithy/shareable, and judge-able ("It should feel like a conversation," "It needs to fit in a shirt pocket"). "Fast and easy / delightful / intuitive" are too broad to be useful.
- **Meet the full audience: accessibility, localization, performance, and inclusive (non-binary) options at first run.** ~70% of reviewed sites had critical blockers for visually impaired users; slow/janky first runs lose new users disproportionately; forced binary/category choices exclude audiences.