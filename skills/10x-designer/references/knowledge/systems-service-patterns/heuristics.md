# Heuristics — Systems & Service Patterns

"If X, then problem Y, fix Z" critique heuristics, deduplicated across sources.

---

## System coherence & cross-channel/cross-device seams

- **If** each channel/device/screen is well built but the seams between them are not, **then** silos persist (just arranged in a circle) and users fall into "experience crevasses," **because** small gaps that look trivial to the provider accumulate across the journey — **fix:** map the full journey and explicitly design the transitions/handoffs.
- **If** two UIs for the same system show contradictory state (app says 21°C, controller says 19°C) with no explanation, **then** users lose trust and think it's broken, **because** intermittent connectivity legitimately desyncs nodes — **fix:** synchronize on a clear model, show pending/last-updated state, confirm when a command lands.
- **If** the website promises what the store/call-center can't honor (online-only price/plan), **then** the brand reads as incoherent and untrustworthy, **because** customers experience one brand across channels — **fix:** align offers and staff authority across channels, or make the difference transparent and justified.
- **If** the same data/action has different labels across devices/channels (ON vs CONTINUOUS, AUTO vs SCHEDULE), **then** users won't realize they're the same thing, **because** they lack the model to infer it — **fix:** prioritize consistent *terminology* above all other consistency.
- **If** backstage systems (CRM language, billing) diverge from frontstage copy, **then** the spell breaks, **because** one discrepancy destroys trust — **fix:** align internal language/data to what the customer sees.

## Missing or eroded systems / duplication

- **If** a UI shows many near-identical-but-different variants of one element (37 button styles; 4 distinct designs across a flow), **then** there is no governing system, **because** patterns were created ad hoc per page — **fix:** run an interface inventory and consolidate to a small set of named patterns.
- **If** a component is named for where it lives or what it holds ("homepage carousel"), **then** it's hard to reuse and the library bloats with duplicates, **because** the name handcuffs its context — **fix:** rename to a structure-based agnostic name.
- **If** a pattern only handles the best case (one-line names, perfect photo, equal columns), **then** the UI breaks on real data, **because** real content is messy and variable — **fix:** design explicit variation states (overflow, empty, long/short, admin, first-use).
- **If** the site copies a successful pattern's surface form without understanding why it worked, **then** the imitation fails (Cargo Cult anti-pattern) — **fix:** understand the underlying force the original resolved before reusing it.

## Quality curve, timing & context

- **If** one touchpoint dramatically over-delivers relative to the rest, **then** it degrades overall perceived quality, **because** it raises expectations the next interaction can't meet — **fix:** flatten the experience curve.
- **If** a great touchpoint is delivered at the wrong moment/context (violinist at a quiet dinner; meal arriving just after a death), **then** it's worse than something average at the right time, **because** context and timing are part of the experience — **fix:** design for context and frequency; present when needed, invisible when not.
- **If** a redesign looks prettier but adds animation/steps in a time-pressured context (rail ticket machine for someone rushing a train), **then** it's worse in use, **because** the context is rushing, not a calm studio — **fix:** prioritize speed/flow over visual polish where time-pressured.

## Conceptual model, failure modes & control

- **If** a critical safety function (alarm, lock, smoke) depends entirely on cloud/phone connectivity, **then** it can silently fail when the Internet drops, **because** logic placement determines failure mode — **fix:** keep critical logic + a fallback at the edge; alert when the safety function is offline (absence of alarm ≠ all-clear).
- **If** the embedded device is stripped to minimum I/O and relies wholly on a phone/web UI, **then** control is lost when the phone is dead/absent or for guests, **because** you've made it dependent on things outside your control — **fix:** keep an on-device fallback (e.g., a single physical on/off).
- **If** a self-service touchpoint (kiosk, form) fails with no staff backup, **then** the poor UX becomes a total service failure, **because** it's the only path — **fix:** ensure fallback channels and design for real context.
- **If** an autonomous/learning system acts without explaining why, or asks permission for every action, **then** it feels creepy/uncontrollable or naggy, **because** users need predictability without overload — **fix:** provide an activity feed / "why did/why didn't" answers, batch consent, let users correct the model.
- **If** a device/data is repurposed (smart plug moved from lamp to hair-straighteners) without reconfiguration prompts, **then** unintended/dangerous outcomes occur, **because** the rule's assumptions no longer hold — **fix:** detect changed usage (e.g., power-draw pattern) and ask the user to confirm.
- **If** an automation system mixes "modes" (ongoing states) and "macros" (one-shot bundles), **then** it descends into confusing override states, **because** you can't reason about partially-overridden modes — **fix:** treat groupings as macros; reserve modes for genuine ongoing states (vacation).

## Platform conventions & interaction detail

- **If** a companion app reskins a physical device (faux bezel, LCD font, skeuomorphic dial), **then** the touchscreen UX is clunky, **because** controls should be optimized per platform — **fix:** follow each platform's conventions (precise arrows on touch, dial on the device) while keeping semantic/visual coherence (Nest).
- **If** a control sends a command after every tap during value adjustment via the cloud, **then** the system overloads and lags, **because** intermediate states are pointless traffic — **fix:** buffer and send once interaction completes; confirm with feedback.
- **If** a connected control uses a blind toggle (flip current state), **then** multi-user conflicts flash devices on/off, **because** another user/rule may have already changed it — **fix:** design set-state controls (On/Off/Locked) and define conflict resolution.
- **If** the UI shows raw signal strength to consumers, **then** it needlessly worries them, **because** interference matters more than raw strength — **fix:** show connected / not-connected only; warn only when it actually stops working.
- **If** the dashboard reorders controls by guessing "most used," **then** users can't build motor memory, **because** moving targets defeat habituation — **fix:** stable placement or user-pinned controls.

## Data & insight presentation

- **If** a data product dumps a graph-heavy dashboard of all readings, **then** insight is lost and mainstream users disengage, **because** attention is scarce and many associate graphs with school math — **fix:** lead with one or two actionable headline insights (often plain text); progressive disclosure (insight → explanation → raw data).
- **If** numbers are shown to false precision (7,518 steps; raw kWh), **then** users over-trust accuracy or can't interpret meaning, **because** devices measure trends not exact values — **fix:** express in trends and money/relatable comparisons; match precision to real accuracy.

## Onboarding, setup & sign-in

- **If** setup forces a rigid single-sitting linear sequence, **then** interrupted users get stuck and call support (which doesn't scale), **because** people muddle through out of order — **fix:** detect what's done, allow any order, support pause/resume, always show where they are and what's next.
- **If** print/in-app/on-device instructions overlap ambiguously or a diagram no longer matches the hardware, **then** users can't tell if they erred or it's broken — **fix:** give each medium a defined non-overlapping role with explicit "now switch to the app" handovers; keep diagrams 100% matched to the real part.
- **If** sign-up requires a unique username, **then** the namespace fills and late joiners get "name taken," **because** scarce namespaces punish growth — **fix:** allow a non-unique display nickname; use email/OAuth as the unique identifier.
- **If** field rules (length, allowed chars) are only revealed in an error message, **then** users hit avoidable failures, **because** expectations weren't set up front — **fix:** state requirements before the field; validate inline with positive feedback.
- **If** a sign-in is interrupted and the user is bounced to the home page, **then** they lose their place and abandon, **because** the flow was broken — **fix:** Sign-In Continuity — return to the exact context, preserve entered data.
- **If** you ask for the user's email *password* to find friends, **then** you teach phishable behavior and may breach ToS (Password Anti-Pattern) — **fix:** use OAuth/OpenID/Connect so authorization happens on the data-owning site.
- **If** the "invite friends" prompt appears right after registration, **then** users can't meaningfully recommend the site, **because** they haven't experienced its value — **fix:** surface invites only after enough participation; never spam contacts.
- **If** instructional/onboarding elements can't be bypassed once learned, **then** they annoy returning users, **because** relationship time changes needs — **fix:** design for both novice and experienced; let familiarity unlock faster paths.

## Social, reputation & moderation

- **If** users' activities are auto-published to a feed without opt-in disclosure, **then** expect backlash (Facebook Beacon "ruined Christmas"), **because** people weren't informed or given control — **fix:** in-line disclosure for in-depth contributions, modal confirm for quick ones, plus a sharing-management link.
- **If** you award points for activity (10 pts/post), **then** users grind low-quality contributions, **because** the incentive rewards repetition not value — **fix:** reward performance/quality; reserve activity rewards for hard-to-game first-time actions.
- **If** you add a leaderboard/prominent comparative stats to a non-competitive activity, **then** the community over-values whatever you measure and games it (Code of Hammurabi effect; Orkut country-counter) — **fix:** avoid leaderboards outside competitive contexts; de-emphasize raw counts; weight quality signals.
- **If** you build an elaborate empty tree of forums/groups before launch, **then** early momentum dissipates across cubbyholes (Potemkin Village) — **fix:** start with one topic + welcome + help; fork only on clear demand.
- **If** the system suggests unwanted connections (an ex) or broadcasts location/activity to the *entire* network, **then** users suffer harmful exposure (Ex-Boyfriend Anti-Pattern) — **fix:** provide circles/buckets, granular privacy + broadcast controls, and muting without unfriending.
- **If** report-abuse makes the reporter re-type known info or hides how reports are handled, **then** abuse goes unreported and moderation can't scale, **because** friction and opacity discourage self-moderation — **fix:** auto-capture context, set clear (non-over-promising) expectations, return the user cleanly, build an escalation strategy.
- **If** UI copy contains jokes/sarcasm, **then** some segment is confused or offended (worse across cultures) — **fix:** strike outright jokes; be witty only via shared references; let users joke with each other.

## Voice, copy & comprehension

- **If** documents/contracts are long, legalese-heavy, and unread, **then** customers blindly (dis)trust and can't decide, **because** comprehension underpins trust — **fix:** radically simplify (Gjensidige cut policies 50–60%), structure around "What if?" scenarios. Caveat: a *one*-page contract tested *less* trustworthy than ~5–10 pages.
- **If** "personalized" communications are clearly templated (wrong name, scripted disinterest), **then** they read as creepy/insincere, **because** humans detect whether interactions are genuinely personal — **fix:** be genuinely personal, or low-key and honest.

## Process, governance & validation

- **If** front-end developers are brought in only after design is "approved" (waterfall handoff), **then** the live result loses polish and disciplines clash, **because** static comps make impossible assumptions — **fix:** code from day one; decide in the browser.
- **If** the pattern library and production code can drift out of sync, **then** the library becomes obsolete, **because** there's no single source of truth — **fix:** pursue the "holy grail" — share CSS/JS via versioned CDN and markup via common templating.
- **If** updating a pattern/doc/app is slow and high-friction, **then** the system is neglected and dies ("the biggest existential threat is neglect") — **fix:** make updates and deployment frictionless; automate change notifications.
- **If** every new request spawns a brand-new pattern, **then** the library becomes a bloated Wild West, **because** there's no governance gate — **fix:** only promote to a shared pattern when a second team needs it.
- **If** a concept is approved on slides alone, **then** people rationalize and reject it abstractly, **because** they react authentically only to tangible experience — **fix:** prototype the experience early with real people.
- **If** research talks to customers once, or only about one channel, **then** you miss how expectation-vs-experience shifts over the relationship and across touchpoints — **fix:** measure across journey stages AND touchpoints.
- **If** customers can only compare offerings on price (quality is invisible), **then** the market races to the bottom — **fix:** make quality visible (what's covered, what help they get).
- **If** the company calls itself a "Product Group"/sells a service as a product, **then** it organizes in silos and underdelivers, **because** product mindset optimizes discrete-object efficiency not joined-up interaction — **fix:** reframe as a service; restructure measurement around customer satisfaction.

## Security & privacy (connected products)

- **If** a device ships with default/blank/hardcoded credentials or treats WiFi as trust, **then** it's trivially compromised (Shodan, insecam, hardcoded PINs), **because** users rarely change defaults — **fix:** secure-by-default, force credential change, limit damage if compromised, make compromise visible.
- **If** a simple device requires auth friction equal to its task (log in to nudge the heat), **then** users abandon security or the product, **because** security isn't the user's goal — **fix:** low-friction "something I have/am," sensible defaults, escalate auth only to match risk.
- **If** a wearable/recording device gives no clear capture cue (Google Glass), **then** bystanders feel violated and adoption stalls, **because** it's an asymmetric, tactless relationship — **fix:** make capture state visible; design for "tact" and contextual integrity.
- **If** a generic sensor has nondescript industrial design and no conceptual cue, **then** users can't remember what service it belongs to, **because** form doesn't follow function in IoT — **fix:** use styling, naming, character, and shared design language.
