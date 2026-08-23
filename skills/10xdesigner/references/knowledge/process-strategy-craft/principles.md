# Principles — process-strategy-craft

Deduplicated, timeless principles synthesized from decades of established UX research and practice. Concrete numbers and named laws preserved.

## A. Goals, problems & rationale

1. **No goal, no design — find "why are we doing this?" before any pixel.** Every design must serve an explicit, stated, measurable goal; without one, decisions collapse into opinion and the work is undefendable. Goals come before research, which comes before form.

2. **Every decision must answer: what problem does it solve, how does it affect the user, why is it better than the alternative?** Write the answers before any review; they are the basis of every defensible response. The corollary: "Why did you do that?" must always be answerable with a goal/research reason — "I can change it" means you don't own the decision.

3. **Solve the user's *goal*, not the feature or the task.** A product is a feature-set to its makers but a *tool to reach a higher goal* to its users. Goals are durable; features and tasks are the changeable means. Meeting a business goal only works by routing it through a genuine user goal.

4. **Lead with goals and benefits, never a feature list or "real-estate tour."** State the reason an element exists ("we placed share tools where testing shows highest interaction") before naming it ("here's a Twitter button"). An element with no goal-tied reason probably shouldn't exist.

5. **Convert "like / don't like" into "works / doesn't work."** Personal taste is not a success metric and is un-arguable; effectiveness against goals/users is. Strike "like," "pretty," "great" from critique vocabulary; "this works" / "this seems correct" replaces them.

## B. Research & validation

6. **You can't design without research, and you must do your own — handed-over research doesn't count.** Research is the keystone; it tells you *where* (not how) to design. Refuse spec/bake-off work produced before discovery — it's a guess.

7. **Get out of the building — answers live with customers, not in the conference room.** Debates about user behavior cannot be settled internally; give customers a voice on raw ideas far earlier than feels comfortable.

8. **Quantitative tells you WHAT/WHERE; qualitative tells you WHY.** Analytics show behavior at scale but never the reason or what to build instead. Pair both. Stories illuminate (never replace) the numbers; a story that fits no persona reveals an analysis gap.

9. **Observe behavior; never ask people to predict it or to design.** "What people say, what they do, and what they say they do are entirely different things." Users are great at describing pain, terrible at predicting behavior. Feature requests name a familiar *solution*, not the real *problem* — dig for the underlying problem. Distrust focus groups and "would you buy this?" surveys (focus groups rejected the Aeron chair).

10. **~5 users per round surface most usability issues; patterns emerge fast — iterate in small batches.** The widely-replicated finding that 5 users find ~85% of issues (confirmed across 83 studies). Statistical significance is the wrong frame for *qualitative* testing; fix the big problems, re-test to expose the ones they masked. Quantitative A/B tests, by contrast, *do* need significance and a control.

11. **Cost of fixing rises ~10× per stage — validate early and cheaply, before code.** $1 to fix in design → $10 in development → $100+ after release. Validate concept/IA on paper or low-fi before significant build; usability testing beats late User Acceptance Testing. First-to-market loses to best-experience-to-market.

12. **Every design is a hypothesis until proven — frame work as falsifiable, with a benchmark.** "We believe X; we'll know we're right when we see Y." Capture the baseline metric *before* the experiment, and tie ONE feature to ONE outcome for one persona so results are attributable.

## C. Scope, simplicity & restraint

13. **Build less: half a great product beats a half-assed whole one — make every feature fight to get in.** Cut the feature set, then cut again; the default answer to a request is "not now." Restraint test: would the product fail without this? If discovery isn't cutting away more ideas than it keeps, it's being done wrong.

14. **Simplicity = nothing left to take away; if removing it doesn't break a goal, it was clutter.** Establish a clear hierarchy ("receiving line"), with one dominant primary action per view; avoid the "make it bigger" arms race — shrink the neighbors instead.

15. **Design for a narrow, specific audience — not "everyone with a neck."** Building for everyone serves no one; identify the pivotal ~20% ambassador users or a segment describable in ≤10 words with a severe, specific pain.

16. **Compete on experience quality, not feature parity.** Users benchmark you against the best products they use daily, not your direct competitors. Matching a competitor's feature matrix produces a "Frankenstein" product — feature-complete, unusable, too heavy to change. Differentiate by recombining proven patterns into a new context, not by copying.

## D. Form, fidelity & artifacts

17. **Match fidelity to the question you're asking; low-fi and disposable invites the right feedback.** Sketches ask about concept; wireframes about hierarchy/IA; hi-fi about aesthetics; coded prototypes about real interaction. Premature prettification biases testers toward politeness and surface comments, and sinks-cost the design. **Tension:** Rough mockups can invite distraction, and polishing before review can save time — clean up alignment, placeholders, and tool artifacts first.

18. **The artifact is a by-product; the deliverable must tell a story and be actionable.** Diagrams/specs/maps are props for shared understanding, not the product. Every artifact has a single purpose, every element serves it, and it's embedded in a narrative that brings a stranger up to speed and informs the next decision. "Shared documents aren't shared understanding."

19. **Sketch / build a real artifact instead of debating — "make over analysis."** There's more value in making the first version than arguing for half a day; a concrete thing to react to breaks deadlock. Mocking up the full-scale real thing converges disparate people on harmony.

20. **Use real content, not Lorem ipsum — design IS the content.** Dummy text reduces content to a visual shape and hides real variation (long names, expanding tables, field widths). Nobody comes for the design; they come for the content/service, which the design supports.

21. **Design for three states: regular, blank/first-run, and error.** Designers swim in data-rich states and never see the empty one — yet the blank slate is where new users judge worth, and the error state defines trust when things break. Also design the "moments in between" (transitions, abandonment, cross-device return).

## E. Communication, critique & collaboration

22. **The most articulate person wins, not the best idea — selling your work is a core, non-optional skill.** Good design does not sell itself; confidence (earned by research) is itself a deliverable. If someone else presents your work, you don't get to complain about the feedback.

23. **Aim for support and forward momentum, not consensus or approval.** You'll never get everyone to agree on a specific solution; you can get agreement to move forward. Design-by-committee produces a watered-down hodgepodge; design is never democratic — but it is collaborative.

24. **Critique is analysis (element → objective → why), not reaction, direction, or preference.** Distinguish the three forms of feedback; only critique improves a design. It requires a shared foundation of objectives (goals, principles, personas, scenarios), and analysis must be separated from problem-solving — the brain can't do both at once. Critique in the ~20–80%-baked sweet spot.

25. **Lead with "yes"; treat a prescriptive request as a symptom, then uncover the real problem.** Begin responses with genuine agreement (never "yes, but"). When a stakeholder says "move this button" or "make the logo bigger," ask "what problem are you trying to solve?" — people state solutions, not problems.

26. **Negative feedback is more valuable than positive — explicitly give permission to go negative.** Unspoken expectations become seething frustration that erupts when the budget is gone; "hope isn't a design word."

27. **Document the *why*, not just the *what*, and send the recap fast.** Notes recording only decisions force you to re-litigate. Send the follow-up (with rationale) within an hour, or at least within a day, before anyone forgets and reverses it.

28. **Collaborate continuously across disciplines — solve together, execute apart; kill the waterfall handoff.** Designers, info designers, engineers, researchers, and content strategists ideate jointly early, then own their pieces with frequent check-ins. Handing finished specs to engineers to "implement," or showing them prototypes only at sprint planning, kills the design in transit. Find the valuable-usable-feasible sweet spot with a cross-functional triad.

## F. Engagement, trust & the experience as a whole

29. **Good UX maintains engagement: keep the user's focus on their goal, not on operating the tool.** Anything that breaks the "fourth wall" — lag, missing feedback, jarring inconsistency, an unfamiliar pattern, a confirmation glance — both *causes* and *signals* difficulty. Reduce the friction between the user's task and the tool.

30. **Every consequential action needs immediate feedback — the UX equivalent of "uh-huh."** Missing acknowledgment makes users doubt it worked and re-trigger it. Feedback (not literal data) often solves the perceived problem (eBay's freshness timer; a working-state spinner).

31. **Trust drains like a leaky bucket and is required to convert.** Big bugs drain it fast, many small ones slowly; once gone, it's gone. Dated/off-brand visuals, premature requests for sensitive data, and missing trust signals all erode it.

32. **Design for the whole arc, not isolated screens — give an explicit value moment and a satisfying end.** Experiences are linear stories (the peak–end rule); design a clear high point where the user experiences value, and a "home better than before" — never end on a bare confirmation. A product built one feature at a time becomes a Frankenproduct; map the whole story first (iterative + incremental, like a painting).

## G. Conventions, standards & governance

33. **Balance convention and novelty — familiarity reduces friction; novelty must serve the goal or it's decoration.** Honor users' prior-tool expectations (eBay's "illogical" Back button); adopt established patterns for login/checkout/comments, then verify them in *your* context. Differentiate innovation from trend; trend-chasing backfires.

34. **Context can rightly trump consistency — give each moment exactly what it needs.** "Intelligent inconsistency": don't add a global nav/search/footer to a page just to match the rest of the site. Few users notice when nav/logo/color shifts; they scan for the one link to their goal. Much established practice holds consistency as a core good. *Resolution for an agent:* enforce consistency by default for shared/structural patterns; allow deliberate, justified per-context exceptions when a clear user need dominates.

35. **Standardize to enable creativity, and tie standards to strategy — undocumented standards don't exist.** A standards framework (tokens, templates, a living pattern library, baseline grid) frees people to focus on substance instead of re-deciding execution. Standards without a defined strategy degrade into taste debates. Document them in a citable, web-ready format with rationale and owner; enforce preventively (CMS gates, templates), not by after-the-fact takedown.

36. **Separate decision *authority* from production work — match authority to expertise.** A governance framework specifies *who decides*, not who does the hands-on work. Input (from those with an interest) is not the same as a decision (by the expert with leadership's blessing); consensus-by-everyone stalls. You can't redesign your way out of a governance problem. Involve every stakeholder who can kill the project from day one (no "stealth stakeholders"); name a single decision-maker per area (no design-by-committee).

## H. Story as a tool

37. **A story must add the *why* (motivation/emotion), be honest/authentic/accurate to research, and live in the audience's mind.** A flowchart of events with no motivation is a use case — if you don't supply the why, the audience invents one. Use just-enough detail (deliberate gaps), choose perspective deliberately (there's no neutral POV), and match specificity to stage (generative → expressive → prescriptive).
