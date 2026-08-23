---  
cluster: research-testing-metrics  
type: critique-checklist  
books_merged: 12  
---  
  
# Research, Testing & Metrics — Critique Checklist  
  
Self-contained, scoreable checklist for an external design-review tool. Each item: **check** · _why it matters_ · **severity** (high/med/low). Pass/fail or 1–5. Grouped by concern. Self-contained — no source lookups required to score.  
  
---  
  
## A. Research method & evidence quality  
  
1. **Are key design decisions backed by observed behavior (or generative "why" research), not by opinions, surveys, focus groups, or satisfaction ratings alone?** — _stated preference and self-reported ease are unreliable; numbers show what, not why._ — **high**  
2. **Is the research method matched to the question (interviews for depth/context; usability for prototype reactions; analytics for scale; A/B for isolated causal effects; generative for IA/strategy)?** — _the wrong method produces invalid data; preference data can't drive IA._ — **high**  
3. **Are quantitative findings triangulated with corroborating qualitative evidence (and vice versa)?** — _numbers without context invite false interpretation; a flat/surprising metric needs a "why."_ — **high**  
4. **Is self-reported success cross-checked against measured/observed task completion?** — _users routinely believe they completed tasks they failed._ — **high**  
5. **Are tasks observed at the real moment of use (or with realistic, non-leading scenarios) rather than artificial assigned ones?** — _assigned tasks distort motivation and behavior._ — **med**  
6. **Is the team designing from evidence about real users rather than from itself ("next-bench"/self-design), running decisions through ≥3 other behavioral perspectives?** — _self-design bakes in age/skill/jargon barriers; you are not your user._ — **high**  
7. **Was the design tested early on rough artifacts (sketch/wireframe/comp), not only just before launch?** — _early problems are cheap to fix; late ones may be uncorrectable._ — **med**  
  
## B. Goals, hypotheses & metric selection  
  
8. **Does every design change / page / experiment have an explicit, measurable success metric tied to a business goal?** — _unmeasured changes can't be validated or prioritized._ — **high**  
9. **Were the metric of interest, success criteria, error definitions, and stopping rule fixed BEFORE data collection?** — _post-hoc choices enable cherry-picking and inflate the true error rate._ — **high**  
10. **Is the success metric falsifiable and not guaranteed to improve (not "clicks on the new feature")?** — _unfalsifiable metrics produce meaningless wins._ — **high**  
11. **Is the chosen metric sensitive enough to detect the size of change being made (not a holistic metric like NPS for a small copy tweak)?** — _insensitive metrics hide real UX effects._ — **med**  
12. **Are both a performance measure (success/time/errors) AND a satisfaction measure reported?** — _they don't always correlate; one alone misleads._ — **high**  
13. **Are success measures framed as rates with a meaningful denominator rather than raw counts?** — _counts move with traffic/seasonality and mislead._ — **high**  
14. **Are baseline and target metrics set even for a brand-new/greenfield product?** — _baselines are the only way to know later iterations improved._ — **med**  
15. **Does the team understand the concept/strategy ("why") before optimizing metrics ("how")?** — _optimization only reaches a local maximum._ — **high**  
  
## C. Sampling, rigor & study design  
  
16. **Is the sample drawn from a population representative of the real target users and tasks?** — _the one assumption no statistic can rescue._ — **high**  
17. **Were users randomly assigned to test/control from a single sample (not by arrival order, time-of-day, or "everybody else")?** — _arbitrary sampling confounds results._ — **high**  
18. **For formative studies, is sample size justified by a stated discovery rate p and goal (n = ln(1−goal)/ln(1−p)) rather than a blanket "5 is enough"?** — _low-p contexts (websites, p≈0.04) need far more users._ — **high**  
19. **Is testing run as iterative small rounds with fixes between, rather than one big study?** — _more rounds catch more problems and the point is to improve, not document._ — **med**  
20. **Is task coverage broad (many tasks), not just many participants?** — _tasks correlate with issues found; participant count does not._ — **med**  
21. **Are issues found by ≥2 evaluators/teams (or is the evaluator effect acknowledged)?** — _any single evaluator finds a non-overlapping subset; 60–75% of issues come from one team._ — **med**  
22. **For comparison studies, is assignment between-subjects (or preference-based) to avoid learning effects, with only one variable varied?** — _within-subject reuse and multi-variable changes confound results._ — **med**  
23. **Is any user-driven change supported by a pattern across multiple voices (≥5 distinct), not a single quote?** — _one voice is never a reliable pattern._ — **high**  
24. **Are screening criteria specific and behavior-based (not vague/attitude-based), confirming device/context presence?** — _vague criteria yield wrong-fit participants._ — **high**  
25. **Were named biases (design, sampling, interviewer, sponsor, social-desirability, Hawthorne) accounted for, and satisfaction collected anonymously / out of moderator view?** — _bias can't be eliminated, only weighted for; in-person ratings inflate._ — **med**  
  
## D. Statistics & metric interpretation  
  
26. **Does every reported mean/rate carry a confidence interval (or error bars)?** — _point estimates from small samples are always off and hide uncertainty._ — **high**  
27. **For completion/conversion rates, was the adjusted-Wald method used (not raw Wald) at small n?** — _Wald badly understates coverage below n≈100._ — **high**  
28. **Is average task time reported as geometric mean (n<25) or median+CI (n>25), not arithmetic mean?** — _task times are skewed; the mean is inflated._ — **med**  
29. **When two designs are compared, is there a significance test AND an effect-size/difference CI?** — _separates real noticeable differences from noise and from trivial-but-significant ones._ — **high**  
30. **Was the statistical test chosen correctly for data type and design (binary vs. continuous; within vs. between; benchmark vs. comparison)?** — _wrong test = invalid p-values._ — **high**  
31. **Were α, power, tails, and method decided before data collection, with Type I vs. Type II costs considered (α=0.05 is a convention, not a law)?** — _post-hoc choices inflate the true error rate; a missed improvement can cost as much as a false alarm._ — **high**  
32. **Were outlier/contaminated times filtered (impossibly fast or idle-long sessions)?** — _unfiltered automated time data is invalid._ — **med**  
33. **Is ordinal data (rankings, level-of-success, Likert categories) reported as distributions rather than averaged?** — _intervals between ranks aren't equal._ — **med**  
34. **Are rating scales positively/end-anchored with 5–7 points and no negative/zero labels?** — _scale design biases responses; reliability rises to ~7 steps._ — **med**  
35. **Is perceived usability measured with a standardized questionnaire (SUS/PSSUQ poststudy; SEQ/SMEQ post-task) interpreted against empirical norms, not the scale midpoint?** — _reliability/comparability; SUS mean is 68, not 50; ~10% of SUS datasets are miscoded._ — **med**  
36. **If many tests were run, is alpha inflation controlled or findings flagged as needing replication?** — _20 tests at .05 ≈ 64% chance of a false positive._ — **med**  
  
## E. A/B testing & experiments  
  
37. **Does the A/B test isolate a single variable, use random assignment, and run a significance test?** — _otherwise the cause of any difference is unknown._ — **high**  
38. **Did the test run for at least one full business cycle (whole multiples of 7 days) with adequate sample/power for the minimum detectable effect?** — _avoids seasonality bias; underpowered tests "fail" blindly._ — **med**  
39. **Was the test allowed to reach its predetermined sample/run-length before reading results?** — _early results often reverse once powered._ — **high**  
40. **Was a surprising/large result replicated before acting?** — _~1 in 20 significant results at p=0.05 is a false positive._ — **high**  
41. **Is rollout staged (1%→5%→25%→50%) with a holdback group rather than jumping to 100%?** — _small-sample wins may not scale; holdbacks measure lagging effects._ — **med**  
42. **Is the team avoiding split-testing stable core navigation/flows users rely on?** — _testing core consistency erodes trust and habit._ — **med**  
43. **Is the design NOT artificially inflating the measured feature (giant button) to "win" the test?** — _prominence inflates engagement and misattributes the result._ — **med**  
  
## F. Findability, attention & visual hierarchy  
  
44. **Can a first-time visitor identify what the product is, who's behind it, and what they can do within a few seconds on the entry/landing page?** — _wrong first-seconds assumptions cascade into being lost; impressions form in ~50 ms._ — **high**  
45. **Is the correct target/CTA placed where first fixations land and visually loud enough to spot "from 50 feet" (not subtle)?** — _web users move fast and miss subtle cues; unexpected placement causes failed searches._ — **high**  
46. **Does the primary action/link look clickable and visually distinct from advertising?** — _elements mistaken for ads get ignored even when noticed._ — **high**  
47. **Is the page free of "kitchen sink" clutter that hides what users need?** — _noise prevents users finding the signal._ — **high**  
48. **Are competing/look-alike elements (semantic competitors) sufficiently differentiated from the intended target?** — _they cause hesitation and wrong selections._ — **med**  
49. **Is navigation consolidated (no redundant/duplicated nav areas competing for attention)?** — _scattered attention causes inefficiency._ — **med**  
50. **For attention-critical content, is it both noticeable (size/contrast/location) AND interesting (relevant content)?** — _noticeability without interest = wasted impression._ — **med**  
  
## G. Labels, mental model & IA  
  
51. **Does the interface use the user's own language/conventions (and match their search terms) rather than internal jargon?** — _mismatched labels break the mental model._ — **high**  
52. **Does the workflow/flow match how users think about the task sequence?** — _flow mismatch is a top, high-leverage source of error._ — **high**  
53. **Are any two navigation labels ambiguous or overlapping in meaning (fails the Hallway Test)?** — _ambiguity causes dithering and failed task starts._ — **med**  
54. **Is top-level IA derived from user mental spaces rather than the org chart?** — _org-derived IA forces costly re-architecture cycles._ — **high**  
55. **Does the interface match the target user's mental model of the activity (is it "intuitive," anchored to familiar conventions rather than novelty)?** — _poor fit makes everything harder to learn._ — **high**  
56. **Does the design avoid relying on domain jargon users may not actually recognize?** — _assumed shared vocabulary often isn't shared._ — **med**  
  
## H. Feature scope, value & coverage  
  
57. **Does the design address the user's actual goal/intent (usefulness), and does every feature map to a real user behavior with exactly one primary home?** — _orphan/useless features waste effort and clutter; usefulness gates all other quality._ — **high**  
58. **Do the most frequent (~75–80%) everyday tasks work flawlessly and prominently, ahead of esoteric "5%" features?** — _effort is commonly wasted on leading-edge features users rarely touch._ — **high**  
59. **Are in-business-scope user needs with no primary support flagged as opportunities/gaps?** — _these are the highest-value gaps._ — **high**  
60. **Is the solution scoped to one coherent audience rather than a monolith serving incompatible audiences?** — _monoliths make every task harder for everyone._ — **high**  
61. **Are personas/segments defined by behavior/reasoning rather than demographics, and does the design serve 2–3 reasoning patterns rather than one generalized happy path?** — _demographics don't cause reasoning; one path fits a diverse audience poorly._ — **high**  
  
## I. Errors, recovery & critical tasks  
  
62. **Does the design prevent errors (not just report them), with helpful plain-language messages (no bare codes) and clear undo/redo/exits?** — _error prevention/recovery is the most neglected area of system design._ — **high**  
63. **Can users recover gracefully when lost or after an error (clear path back, reversibility)?** — _recovery is where real-world frustration concentrates._ — **high**  
64. **Are critical (data-loss / support-call / harm) tasks error-resistant, recoverable, differentiated, and held to strict binary near-100% success?** — _severe consequences; even a 1% misread can injure._ — **high**  
65. **Does error/empty/help copy avoid implying the user is at fault (no "Having trouble?", "Are you sure?", "Need more help?")?** — _user-blaming copy provokes shame and erodes trust._ — **med**  
  
## J. Prioritization, fixes & responsiveness  
  
66. **Have usability issues been rated on BOTH severity and frequency (criticality) before prioritizing?** — _prevents chasing flukes over real obstacles._ — **med**  
67. **For each known serious problem, is there a committed *small* fix (tweak targeting the observed problem) rather than a deferred full redesign?** — _deferred redesigns leave users suffering; over-scoping wastes resources and risks breaking working parts._ — **high**  
68. **When fixing, was "take something away" considered before "add something"?** — _adding often worsens an already-cluttered page._ — **med**  
69. **For multi-step processes (checkout, registration), is per-step drop-off instrumented as a funnel?** — _aggregate completion hides the specific failing step._ — **high**  
70. **Are key page load times under the ~3–5s acceptability crossover?** — _slower triggers "unacceptable" ratings and physiological stress._ — **med**  
  
## K. Analytics interpretation  
  
71. **Is each metric judged against a relevant comparison (similar pages of the same type, prior period, or proportion) rather than in isolation or an external benchmark?** — _no number is meaningful without context._ — **high**  
72. **For multi-audience sites, is data segmented by persona/intent before drawing conclusions (segments generalized, not over-specified)?** — _blended averages hide opposing group behaviors; narrow personas capture almost no one._ — **high**  
73. **Are on-page success actions instrumented to distinguish "satisfied and left" from "frustrated and left" on high-exit/high-bounce pages?** — _exit/bounce alone is ambiguous._ — **med**  
74. **Are goals/KPIs anchored to deliberate task-success actions (confirmation pages, deliberate forms), not mid-page links or engagement thresholds?** — _engagement/vanity goals count accidental behavior._ — **med**  
75. **Do important conversion/promo elements have a clear explicit CTA and context (sale/new/benefit)?** — _ambiguous promos get near-zero engagement._ — **med**  
  
## L. Moderation, consent & reporting  
  
76. **Do task prompts and moderator questions avoid leading (no on-screen vocabulary, no suggested answers, no "right path"), with the facilitator staying neutral?** — _leading prompts fake success and invalidate findability data._ — **high**  
77. **Is explicit consent obtained for contact, participation, and recording, with only goal-relevant data collected and stored securely?** — _legal/ethical requirement; trust is needed for natural behavior._ — **high**  
78. **Could this experiment harm users beyond the interface (deception, social/emotional manipulation, vulnerable populations, PII)?** — _ethical/legal risk; participants should face no risk beyond normal daily life._ — **high**  
79. **Are observers insulated from participants (muted line, hidden chat, moderator as filter), with a field team kept small (≤2)?** — _leaked observer input and crowds bias/disrupt sessions._ — **med**  
80. **Were colleagues/stakeholders brought in to observe, and are findings delivered as a story (clips, quotes, faces) in the form each audience can act on, with analytics cited inline?** — _the largest lever for research impact; undigested reports get ignored._ — **high**  
81. **Are usability problems stated as behavior + interpretation + concrete example (actionable), and is the topline labeled "early impressions, not formal analysis"?** — _abstract issues can't be fixed; premature implementation is a risk._ — **med**  
