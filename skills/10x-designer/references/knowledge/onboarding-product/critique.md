# Onboarding & Product — Critique Checklist

Self-contained, scoreable checklist for an external design-review tool. Each item: **check** · **why it matters** · **severity** (high / med / low). Deduplicated across all 6 cluster books.

---

## Value framing & the aha moment

1. **Is onboarding value framed as a single human improvement ("better at X") rather than a list of features?** — Feature/attribute framing fails to motivate; users want to know how their life improves. _severity: high._
2. **Can a first-time visitor reach an "aha moment" (envision the improvement AND how it's delivered) from pre-signup touchpoints alone, ideally in under ~30s?** — Most users never reach an in-app aha if it requires heavy futzing or a demo. _severity: high._
3. **Does each high-level value claim immediately answer "ok, how?" with a concrete mechanism?** — Unanswered claims read as dubious. _severity: med._
4. **Is value anchored in the user's real-world workflow rather than inside the app's screens?** — Users buy the job outcome, not your UI. _severity: med._
## First win & flow scope

5. **Is there a clearly defined first-run "quick win" that is achievable in one sitting, self-contained (no dependence on others/IT/clearances/missing content), and tied to a current intent?** — 40–60% of trial users never return for a 2nd visit; activation lives here (Twitter "follow", Timely 7%→70%). _severity: high._
6. **Does onboarding lead the user through only the *required* actions to reach value (not "explore"), asking minimal info at a time?** — Reduces overwhelm and drop-off; people want the task done. _severity: high._
7. **Has every first-run step been audited and trimmed to only those that advance the real outcome (deferring, defaulting, or autosaving the rest)?** — Each step is a drop-off point (survey: 8→3); activity ≠ achievement. _severity: high._
8. **Is there a clear, fast core habit loop / aha the user reaches early, built before onboarding/discovery/mastery?** — Onboarding on a leaky core loop is a leaky bucket. _severity: high._
9. **Is the core job complete and reliable before new features are added?** — Expansion on a weak foundation makes things worse; SaaS rewards reliable+complete. _severity: med._
## Signup & friction

10. **Can a brand-new user experience meaningful value before being forced to create an account, install code, import data, or enter a credit card (free sample / guest mode / explore-first)?** — Early gates cause abandonment and fake accounts (Intercom ~30%→45% after deferring JS install). _severity: high._
11. **Is the signup flow stripped of every non-essential field, with no CAPTCHA or up-front credit card unless truly justified, using progressive profiling / social login?** — Each field is friction; 92% have abandoned rather than recover a login. _severity: high._
12. **Does signup avoid forcing email confirmation (or any inbox/coupon detour) before app access?** — Confirmation is a major Point of Disconnect; users may never drift back. Use provisional access + non-blocking banner. _severity: high._
13. **Are all unnecessary points of friction and distraction removed from critical/checkout workflows (nav stripped during focus tasks)?** — Intent-to-complete leaks away; cross-sell only after completion (Amazon). _severity: high._
14. **Is first-run performance fast and free of jank/bugs, and does every interaction give immediate, human feedback?** — New users abandon disproportionately on poor performance; silence breaks the conversation (FT page-load). _severity: high._
15. **Are "limbo"/intro screens minimized, justified only by rarely-changing setup info, with the real app visible behind any focus-mode step ("Emerald City")?** — Expository screens delay and create untethered anxiety. _severity: med._
## Jobs, flow completeness & scope

16. **Can each feature be expressed as a solution-free Job Story ("When [situation] I want to [motivation] so I can [outcome]"), free of attribute-based persona reasoning?** — Grounds design in motivation/situation, not who the user is; attributes shrink the audience. _severity: high._
17. **Does every visible UI element map to a specific job or anxiety it resolves (no decoration/noise)?** — Untraceable elements dilute the job. _severity: med._
18. **Does every feature have a defined User, Intent, Success condition, and a complete chain of actions until intent is met (no dead ends), and does every dynamic output have a matching input/management interface with rules and zero/error states?** — Prevents half-built, broken features and hidden complexity. _severity: high._
19. **Are there any "meaningless steps" (clicks adding no insight/decision, export→re-save→email loops, vague "someone commented" notifications)?** — Pure friction with zero value. _severity: high._
20. **Is the product's start/stop scope explicit — owning the smallest painful workflow subset and leveraging existing infrastructure?** — Too little isn't worth installing; too much collides with existing tools. _severity: high._
21. **Does the product answer the user's actual question rather than expose category-internal detail?** — Users buy outcomes, not domain intricacies. _severity: med._
## Switching forces

22. **Does onboarding/positioning address all four switching forces — push, pull, anxiety, and habit/attachment — not just product quality?** — Inertia, not lack of quality, often blocks adoption. _severity: high._
23. **Is the improvement over the incumbent plausibly ~10x, or does it instead attack a non-quality force?** — The 9X Effect means marginal gains don't trigger switching. _severity: med._
24. **Have indirect/competing desires been considered (does adopting this conflict with something else the user values)?** — A conflicting desire can block an otherwise-wanted feature. _severity: med._
## Guidance, tours & progressive disclosure

25. **Is the core onboarding built on guided interaction rather than a front-loaded video/tour/slideshow/carousel?** — Passive instruction is skipped, forgotten, and can make the product feel harder (NN/g). _severity: high._
26. **Does the UI stand on its own without coachmarks/tours as crutches — and if a tour exists, does it guide through *doing* an action rather than restate button labels?** — Tours signal a confusing, tacked-on onboarding. _severity: med._
27. **Are advanced features revealed progressively as usage evidence accumulates, with information delivered "just enough, just in time"?** — Front-loading everything causes early stalls (Super Mario). _severity: med._
28. **Are key concepts reinforced contextually over time rather than shown once at first run?** — Single exposure is forgotten (Ebbinghaus). _severity: med._
29. **Are overlays/popups shown only at natural pauses or in response to user action (no collisions), and are inline cues styled to complement content (no banner blindness)?** — Interruptions are ignored even when important. _severity: med._
30. **Is the experience differentiated by user segment/learning style (docs, video, demo, in-product), not one linear path for everyone?** — A single path fails diverse audiences; consumer patterns often fail in B2B. _severity: med._
## Team / B2B onboarding

31. **For team/B2B onboarding, can steps be done in any order, skipped (escape hatch), and delegated via invites to the right colleague, with an identified onboarding leader/champion?** — Linear chains break for groups; only the CEO can finish unassisted (reception-iPad: ~80% blocked at credit-card step). _severity: high._
## States, completion & emotion

32. **Do empty/blank/first-run states paint future value and give a clear next action (seeded example / content-as-tutorial), rather than a bare blank or accusation ("you have no friends")?** — Blank states give no model of success; prefer real content over fake dummy data. _severity: med._
33. **Is completion of any meaningful setup/quest explicitly acknowledged/celebrated (Peak-End) with a success state, leading into a next suggestion?** — Free, outsized emotional payoff that primes return. _severity: med._
34. **Are setup tasks chopped into a quest/checklist with a visible progress meter and endowed progress (some items pre-checked), reserved for related steps most users complete?** — Perceived nearness drives follow-through (Quora 3-of-5→60%); wish-list items poison the list. _severity: med._
35. **When progress/steps exist, is "progress" defined by the user's goal rather than business-only tasks (no gamified "invite 5 friends before complete")?** — Business-defined completion ≠ user success. _severity: med._
36. **Are points of anxiety and struggle addressed inline wherever they arise (forms, paywalls, permission prompts, empty states)?** — Unaddressed fear causes abandonment at friction points. _severity: high._
## Trust, social proof & consistency

37. **Is credibility established with social proof and concrete real-world outcomes (not vanity follower counts), with faces spread across the page/pages including in-app?** — Outcomes persuade; clustered faces and vanity numbers don't. _severity: med._
38. **Are interpersonal motivators (faces, social proof, human help, encouragement) present INSIDE the app, not only in marketing?** — They drive in-app engagement too. _severity: med._
39. **Do all touchpoints share one continuous narrative thread, consistent voice/personality, and maintain the "scent of information" (marketing promise matches the page it points to)?** — A broken story or mismatched promise dooms the user from the start. _severity: med._
40. **Is the product visually consistent against a working style guide (buttons, icons, type, layout, inputs), and are adopted patterns justified by the behavior they serve (not copied because trendy)?** — Consistency lowers cognitive load; wrong patterns create usability failures. _severity: med._
41. **Are presets/defaults researched and set up for success?** — Fewer than 5% of users change defaults. _severity: med._
42. **Does the product use familiar affordances/conventions, verb-based labels, and inclusive/accessible/localized first-run handling (no forced binary choices)?** — Familiarity saves teaching time; ~70% of sites had critical blockers for visually impaired users. _severity: high._
## Ethics

43. **Are there any dark patterns (pre-checked opt-ins, hidden subscriptions/charges, deliberately hard cancellation, work held hostage to force signup)?** — Unethical and backfires via churn and bad word of mouth (JustFab). _severity: high._
## Measurement, timing & research

44. **Does the flow define and drive toward a concrete "successful moment" / real user value, measured by retention/engagement — not step completion, signups, installs, or vanity metrics?** — Completion is correlation, not causation; vanity metrics don't predict stickiness. _severity: high._
45. **Is onboarding messaging triggered by user behavior/usage milestones and segmented, not blasted on time-since-signup to everyone?** — Elapsed time says nothing about value reached; time-based blasts over-send and mistarget. _severity: high._
46. **Does the trial surface core value within the first ~3 days, with a per-segment success action defined for day 3 and day 7, plus an early-warning mechanism for declining usage?** — The convert decision is made early, not at trial end; win-back after cancellation is too late. _severity: high._
47. **Does any experiment/feature define success quantitatively up front (falsifiable hypothesis) AND list danger/health metrics it must not harm, with the riskiest assumption validated by the smallest viable test first?** — Prevents uninterpretable tests, silent regressions, and building on a shaky assumption stack. _severity: high._
48. **Is qualitative "why" research paired with quantitative "what," including interviewing recently-switched users right after the switching moment?** — Metrics alone can't explain behavior; emotional jobs never appear in dashboards. _severity: med._
49. **Are new features re-onboarded in-context at the moment of user intent, not just blasted as a one-off announcement (treating onboarding as continuous)?** — "Get it used," not "get it launched" (Microsoft: ~90% of requested features already existed). _severity: med._
50. **Is there a single named onboarding owner per contributing team aligned to one shared goal, with the team periodically re-running the full flow with fresh eyes?** — Ownership gaps create org-chart seams (Conway's Law) and teams lose touch with the experience. _severity: med._
51. **Is there a lifecycle-email / re-engagement plan (welcome, "making progress," "come back," "running out of time") triggered by events/non-events, plus social bonds that create accountability?** — Emails are the connective tissue pulling users back; social ties drive retention. _severity: med._
52. **Are 5–8 actionable, research-grounded design principles in place to judge new designs against (not vague "fast and easy / delightful")?** — Keeps multi-team work coherent and judge-able. _severity: med._
53. **Are invisible-but-important items (tech debt, design debt, speed, bugs, iteration) given priority alongside new features, with UX involved early rather than late "to review"?** — Debt compounds and drives users away; surface usability tweaks can't fix wrong-user/no-demand/wrong-flow problems. _severity: med._