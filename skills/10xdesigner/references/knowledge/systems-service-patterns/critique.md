# Critique Checklist — Systems & Service Patterns

Self-contained, scoreable checklist for an external design-review tool. Each item: **check** · *why it matters* · **severity** (high/med/low).

---

## A. System coherence (the whole, not the parts)

1. **Has the whole experience been designed as one coherent system — not just individual touchpoints/pages/devices in isolation?** · Silos produce well-built parts that don't add up. · **high**
2. **Are the transitions/handoffs between touchpoints, channels, and devices explicitly designed (the "arrows," not just the boxes)?** · Seams carry the biggest experience risk; users fall into "crevasses." · **high**
3. **Is the experience consistent in quality and tone across all channels and over time (a flat curve, no spikes, no weak outliers)?** · Perceived quality = expectation−experience gap; a peak raises the baseline you must then sustain. · **high**
4. **Does backstage (CRM language, billing, internal terms) match what the customer sees frontstage?** · One discrepancy breaks trust. · **high**
5. **Is the offering consistent across channels — does the website never promise what the store/call-center can't honor?** · Users experience one brand regardless of channel. · **high**

## B. Reusable, context-agnostic components (UI systems)

6. **Can every screen be decomposed cleanly into reused parts (atoms/molecules/organisms) rather than bespoke one-offs?** · Reuse drives consistency and speed. · **high**
7. **Are there duplicate/near-identical components doing the same job (multiple button or input styles)?** · Signals a missing or eroded system; harms trust and maintenance. · **high**
8. **Is the UI consistent across the whole experience, including low-traffic pages (404, legal, support, checkout)?** · Users perceive one brand. · **high**
9. **Do components have explicit states for real content variation (empty, loading, error, overflow/long text, admin vs user, first-time vs returning)?** · Best-case-only designs break on real data. · **high**
10. **Are components named by structure (agnostic), not by page location or content type?** · Enables reuse, prevents library bloat. · **med**
11. **Are components fluid/flexible and tested across the full resolution spectrum (not just fixed breakpoints)?** · Resilience and reusability across containers/devices. · **high**
12. **Does each component obey single-responsibility (does one thing well) and stay DRY (defined once, included everywhere)?** · Overloaded patterns are unwieldy; duplication causes drift. · **med**

## C. Conceptual model & failure modes

13. **Is there a single explicitly-defined conceptual/design model, communicated through the system image (UI + behavior + docs)?** · A wrong mental model means users can't operate or recover. · **high**
14. **For each device/node going offline, is the resulting behavior defined, and are critical functions (alarm, lock, heating fallback) preserved at the edge?** · Undefined failure modes are dangerous and erode trust. · **high**
15. **Is state synchronized across all UIs, with clear "pending / last updated" indication and command confirmation?** · Async desync makes the system feel broken. · **high**
16. **Is terminology for the same data/actions identical across every device, channel, and UI?** · Inconsistent labels break the mental model. · **high**
17. **Is there an on-device/offline fallback for any task that must work when the phone/network is unavailable or for guests?** · Phone-only control strands users; a self-service-only path with no backup turns a touchpoint failure into total failure. · **med**
18. **Is composition (which device/channel does what) deliberate — mapped to context of use, power/connectivity, cost, and "must-work-when-X-fails"?** · Poor allocation creates fragile, confusing systems. · **high**

## D. Control, automation & intelligence

19. **For autonomous/automated behavior, is there always a working manual override (and a manual fallback if the override fails)?** · Loss of control is unacceptable, especially in the home. · **high**
20. **For automation, can the user see what happened and why (activity feed/event log) and correct or override it?** · Predictability + control are prerequisites for trust. · **high**
21. **Does the system avoid forcing programming-like effort disproportionate to the value delivered?** · Attention is scarce; over-configuration disenfranchises users. · **med**
22. **Are controls set-state (On/Off/Locked), not blind toggles, with defined resolution for conflicting user/rule/autonomous commands?** · Toggle conflicts flash devices and confuse. · **med**
23. **As device/control count grows, does the UX organize around activities/services/needs rather than a flat device list?** · Device-centric UX doesn't scale past a handful. · **med**
24. **Are multi-device commands buffered until interaction completes, then confirmed (no per-tap cloud calls)?** · Per-tap commands overload the system and lag. · **med**

## E. Data presentation

25. **Does the data UX lead with one or two actionable, contextualized insights (progressive disclosure), not a graph dump?** · Buried insight = no behavior change. · **med**
26. **Are numbers shown at honest precision and in relatable units (money/comparisons), matching real sensor accuracy?** · False precision misleads. · **low**

## F. Onboarding, setup & sign-in

27. **Can setup be done out of order, paused, and resumed, with always-visible progress and next step?** · Rigid setup is the top support-call generator. · **high**
28. **Do instruction media (print/app/device/labels) have non-overlapping roles with explicit handovers, and do diagrams match the real hardware exactly?** · Ambiguity causes "is it broken?" confusion. · **med**
29. **Is sign-in/registration delayed until genuinely required and limited to minimal fields?** · Registration is a barter; over-asking causes abandonment. · **high**
30. **Is the unique account identifier an email or OAuth identity (not a scarce username namespace)?** · Avoids "name taken" abandonment at scale. · **med**
31. **Are field requirements stated *before* the field, with inline validation and positive feedback?** · Reduces form drop-off. · **high**
32. **After an auth interruption, is the user returned to the exact prior context with entered data preserved (Sign-In Continuity)?** · Broken flows kill participation. · **high**
33. **Does the product use OAuth/OpenID/Connect rather than asking for a third-party password (no Password Anti-Pattern)?** · Teaches safe behavior; avoids phishing/ToS violations. · **high**
34. **Are there clear recovery paths for forgotten username AND password, with a labeled identifier type?** · Prevents lockout abandonment. · **med**
35. **Can experienced/returning users bypass instructional onboarding once learned?** · Relationship time changes needs. · **med**

## G. Voice, copy & comprehension

36. **Is system copy written in a natural, conversational, person-to-person voice (read aloud without cringing), with no jokes in sensitive contexts?** · Signals a human, welcoming space; humor misfires across cultures. · **med**
37. **Do error/empty messages take the blame on the system and explain what to do next?** · Never accuse the user. · **med**
38. **Are personal objects labeled "Your" (in social contexts), consistently?** · Engages the social rather than solipsistic mind. · **low**
39. **Can notification emails be replied to, with replies routed back into the conversation?** · Respects existing email habits. · **med**
40. **Is language comprehensible to laypeople across every channel (no jargon/legalese), structured around real "What if?" scenarios?** · Comprehension underpins trust and decisions. · **med**
41. **Is personalization genuinely personal, not creepy template personalization?** · Fake-personal damages the relationship. · **med**

## H. Social, reputation & moderation

42. **Before any user activity is published to a feed, is there clear opt-in/disclosure and a sharing-control link?** · Prevents privacy backlash (Beacon). · **high**
43. **Do visible metrics/points reward quality/performance rather than raw activity?** · Activity rewards drive grinding and dilute quality. · **med**
44. **Is the activity genuinely competitive before any leaderboard/ranking is shown?** · Leaderboards in non-competitive contexts distort community values (Code of Hammurabi effect). · **med**
45. **Does the community IA start minimal and grow on demand (no empty pre-built group tree)?** · Avoids Potemkin Village fragmentation. · **med**
46. **Can users sort connections into circles/buckets and control who sees location/activity broadcasts (with muting without unfriending)?** · Prevents Ex-Boyfriend Anti-Pattern exposure. · **high**
47. **Is there an easy, low-friction Report Abuse path with context auto-captured and an escalation plan behind it?** · Enables self-moderation that scales. · **high**

## I. Viability, validation & measurement

48. **Can a user answer: what is this, what's its value to me, and how do I use it (the 3 service-proposition tests)?** · Gates viability. · **high**
49. **Is there a viable business/funding model behind the service (even if free/public)?** · Otherwise it isn't sustainable. · **high**
50. **Have the experience and key/unknown touchpoints been prototyped with real people before build (in-browser for UI)?** · Services/UI can't be validated in the abstract; saves sunk cost. · **high**
51. **Is the design grounded in qualitative insight into real needs/motivations (not just stats or marketing assumptions)?** · Stats tell you what, not why. · **med**
52. **Are baseline metrics defined *before* launch, tied to specific touchpoint experiences, and tracked over time + across channels?** · No "before" = can't prove "after"; outliers reveal the real failures. · **med**
53. **Is the experience designed for staff (providers) as well as customers, with empowered/flexible frontline roles?** · Happy/empowered staff drive customer experience. · **med**
54. **Is quality made visible so customers don't decide on price alone?** · Invisible quality triggers a race to the bottom. · **med**
55. **Does the timing/frequency of each touchpoint match the user's context (present when needed, invisible when not)?** · Right thing / wrong time is a failure. · **med**
56. **Does the service let users return value (feedback, data, co-production), not flow value one direction only?** · Closing feedback channels pushes complaints to public forums. · **med**

## J. Process & governance (UI systems)

57. **Were front-end realities (flexibility, interaction, motion, performance, accessibility, device quirks) validated in the browser, not only static comps?** · Comps are hypotheses; the browser is the real medium. · **high**
58. **Is there a single source of truth keeping the pattern library and production in sync?** · Prevents drift and obsolescence. · **high**
59. **Is there a governance plan for how patterns are added, modified, deprecated, approved, and communicated?** · Adaptability and survival of the system. · **high**
60. **Are accessibility, performance, and responsiveness baked into patterns by default?** · Scales best practices regardless of implementer skill. · **high**
61. **Is the pattern library/style guide documented with usage + lineage, attractive, and visible to all disciplines (not a hidden dev-only doc)?** · Enables correct use, safe QA, shared vocabulary, adoption. · **med**
62. **Are pattern updates frictionless and the system funded/owned as a living product?** · The biggest existential threat is neglect. · **high**

## K. Hardware, security, privacy & responsibility

63. **Is the device secure-by-default (forced credential change, no hardcoded secrets, damage limited if compromised, compromise made visible)?** · Insecure IoT can harm people and the category's trust. · **high**
64. **Is auth friction matched to the risk/domain (low-friction for low-stakes, escalated only when warranted)?** · Security isn't the user's goal; mismatched friction causes abandonment. · **med**
65. **Is only the minimum personal data collected, with contextual "tact," visible capture state, and informed consent / Privacy by Default?** · Tactless data handling tanks adoption and may breach law. · **high**
66. **Does industrial design/styling communicate function, brand, and device-family grouping (since form rarely follows function)?** · Generic devices are forgettable and confusing. · **low**
67. **Is BOM weighed against upgradeability/future-proofing and end-of-life/e-waste, not just minimized?** · Hardware is permanent and consequential. · **low**
68. **Are economic, ecological, and social impacts (triple bottom line) considered, especially for public services?** · Broadens responsibility beyond shareholders. · **low**
69. **Have the ethical commitments (safety, privacy, growth tactics, moderation responsibility) been examined, avoiding "original sins" like spammy viral invites/address-book grabs?** · Cold-start shortcuts cause lasting harm and backlash. · **high**
