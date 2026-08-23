# Principles — Content & UX Writing

Deduplicated, timeless principles merged across all 30 books in the cluster. Where many books assert the same idea it is stated once, sharply. Concrete numbers and named laws are preserved.

---

## I. Status of words in design

**P1. Writing is designing — words are first-class design material, not decoration applied afterward.** Strip the words out of almost any interface and little remains. Copy builds the user's understanding, feeling, and outcome, and must be iterated, researched, and produced alongside (not after) visuals and code. _Near-unanimous._

**P2. The fastest, cheapest way to improve an interface is usually to improve the copy.** Words can rescue a confusing interaction faster than visual redesign. Reach for language first.

**P3. Unwritten copy is incomplete design.** Lorem ipsum, "CTA goes here," and squiggly placeholder lines hide unresolved decisions and unnamed components; design built on fake content breaks on real words. Never design with placeholder text.

**P4. Content is the experience; UX is only the path to it.** "Content is the treasure; UX is the treasure hunt." A flawless interface for content nobody wants, or content that is missing/wrong/stale, has failed regardless of polish. People come for the content, not the navigation or the design.

---

## II. Serve the user (and the business through the user)

**P5. Every piece of content must serve a user need AND/OR a business objective; content that serves neither is clutter.** Words that advance no goal are waste that costs money to make and maintain.

**P6. You are not your user — adopt the user's mental model and vocabulary, validated by research, not assumption.** Designers default to themselves as the baseline. Use the words users actually use (from reviews, support logs, search/co-search terms, interviews); experts overestimate others' grasp of their jargon by ~25–30%. Structure content around the user's mental model, never the org chart. _Near-unanimous._

**P7. Content people work for the user; you are the user's advocate.** The reader's attention is the precious, central thing; online there is no captive audience. When client/internal goals clash with user goals, advocate for the user — because what hurts users hurts the business (enlightened self-interest).

**P8. Match content to the user's full context, not just their goal.** Context = what users are doing, how they feel, what they're capable of (physical/emotional/cognitive). A 3am subway lookup needs *now*; an ER call differs from a weekday allergist visit. Always give an option to see more.

---

## III. Clarity, concision, and structure

**P9. Clarity beats cleverness; clarity beats brevity; brevity beats fluff — in that order.** Make it true first (accuracy), then understandable (clarity), then trim (brevity). "Short" is not automatically clearer. Frilly/clever wording invents cognitive load and belongs (if anywhere) in marketing, not UI. _Near-unanimous._

**P10. Lead with the point — inverted pyramid / BLUF.** Put the conclusion/key message first (the headline "bite," then the "snack," then the "meal"); the most-scanned word goes at the start (or end) of a string. School/narrative build-to-a-conclusion fails online.

**P11. Optimize for scanning, not reading; users forage and satisfice.** ~79% of users skim and only ~16% read word-for-word; eyes follow the F-pattern, top-left first, and people pick the first "good enough" option (satisficing) following the "scent of information." Use short paragraphs, bullets, headings, surfaced keywords, active space; never a wall of text.

**P12. Say just one thing at a time; one idea per heading, button, tooltip, error, paragraph.** Writers stall and readers get lost when a string carries multiple messages; if a message can't fit, the feature is too complex — stop wordsmithing and simplify the flow.

**P13. Write conversationally and human; read it aloud.** Use active voice, contractions, second person ("you"), connecting words; if you wouldn't say it to a person at your kitchen table, rewrite it. The internet created a third register — polite/precise yet warm/natural.

**P14. Use plain, jargon-free language — even for expert audiences.** Even lawyers, scientists, and PhDs prefer clear copy; "professional" ≠ pompous, and plain language "isn't dumbing down, it's opening up." Translate technical/internal terms (HTTP codes, "Entity," org-speak) into human words; define unavoidable hard terms inline.

**P15. Show, don't tell — replace empty modifiers with concrete, verifiable specifics.** Cut "amazing/intuitive/powerful/revolutionary/world-class/never-been-easier"; give the real benefit, number, or differentiator. "1,000 songs in your pocket" beats "large storage capacity." Accuracy can make copy *more* compelling.

---

## IV. Voice and tone

**P16. Voice is the constant brand personality; tone flexes with the moment.** "Voice is the climate; tone is the weather." Voice stays recognizable everywhere (404s, errors, marketing, signage); tone is a channel switcher (not a volume knob) that adapts to the user's emotional state and situation. _Near-unanimous._

**P17. Match humor and tone to the user's emotional state — never joke in failure, stress, grief, or repetition.** The same word ("Oops!") is charming on a 404 and tone-deaf on an account suspension; clever copy on a repeated action grates by the 30th time and never mocks a confused/angry user. Don't assume the user's state; neutrality is itself a deliberate tone choice.

**P18. Derive voice from values/principles and document it — make voice teachable and decidable, not subjective.** Define the brand's ~3 core values (or a voice chart of product principles × six aspects: Concepts, Vocabulary, Verbosity, Grammar, Punctuation, Capitalization) and a "this-but-not-that" list, so word debates resolve against an objective artifact.

**P19. There is no universal best practice — the right answer depends on your users and context.** "Buy" vs. "Purchase," serial commas, tone, content length: base it on research and the situation, not on what any single big-name company does or a rule of thumb.

---

## V. Errors, empty states, and feedback (the conversational turns)

**P20. The best error message is the one the user never sees — prevent first, then explain, then resolve.** Apply Avoid→Explain→Resolve: design the flow so the error can't happen (mark required/format rules up front, accept any format where possible, disable invalid states); only then explain the specific cause and give a constructive next step. Some impossible-to-write errors expose a business-centered policy that should be challenged.

**P21. Error/feedback copy must be specific, blame-free, jargon-free, and actionable — lead with empathy.** Drop "error/failure/invalid/illegal," error codes, and raw system strings; never blame or shame the user; state plainly what went wrong AND exactly what to do (or, if truly blocked, when/how it resolves). Shoulder the emotional burden.

**P22. Treat every empty/dead-end state as an opportunity, not a void.** Empty states, 404s, no-results, empty carts: say what *could* be there, what the feature does, and the next step ("To do X, do Y" + a first-step CTA) — not just "No items." Empty can look broken.

**P23. Confirmations and transitional states must reassure and orient, not just announce.** Beyond "X completed successfully," speak to the user, restate the value gained, and present the next step; show present-continuous transitional text ("Submitting…") then past-tense confirmation ("Submitted") so delayed/invisible work feels complete and isn't repeated.

**P24. Address users' concerns and objections explicitly at the moment they arise.** Name and refute spam fear, privacy, payment security, free-trial charges, irreversibility, social-login posting. Reassure that "permanent-feeling" inputs (username, URL) can be changed later. Don't make required-data requests ("why do you need my DOB?") go unexplained.

---

## VI. Buttons, labels, links, and consistency

**P25. Buttons and CTAs: short, verb-first, value-led, and matched to the user's commitment level.** Tested buttons of 1–2 words outperform longer ones; lead with an active verb in the user's words; state value/relevance ("Get your free guide") not a generic action ("Submit"); and never name a higher commitment than the step really is.

**P26. Make link text describe its destination/action; never "Click here / Learn more / More."** Vague links give no scent, break screen-reader link lists, and hurt findability; start action links with a verb, match the link wording to the destination page's headline ("launch and land"), and warn when behavior is unusual (new window/download).

**P27. One concept, one term — be consistent in names, labels, pronouns, casing, and structure.** Use the same word for the same thing everywhere (incl. docs and across channels); 1:1 term↔concept mapping; mirror a button's verb to its title; pick one pronoun perspective and one casing scheme. Inconsistency raises cognitive load, breaks recognition, and multiplies localization cost. _Near-unanimous._

**P28. Labels are persistent; never store essential info only in a vanishing placeholder.** Keep a visible label outside the field; show format/length/password rules before typing (near the label, in a tooltip on focus, or as a live indicator) — not as placeholder text that disappears at first keystroke. Show a concrete example for constrained inputs.

---

## VII. Accessibility, inclusion, and globalization

**P29. Accessibility is usability; inclusion is the broader aim — build it in from the start, not bolted on.** Inaccessible words are a design choice that excludes people; fixing accessibility costs ~$25 in design vs. ~$15,000 after release. Don't rely on color/icon alone; meaning must survive being read aloud. Designing for one constraint helps situational users too.

**P30. Write device-agnostic, translatable, culturally portable copy.** Use Choose/Select/View not Click/Tap/Press; write chronologically ("Next…") not spatially ("the button below"); avoid idioms, humor, rhetorical questions, and culture-specific references/colors/gestures/flags; use singular "they"; provide a plain "language 0" for translators.

**P31. Reading-level targets exist — write to the actual audience.** Aim ~6th–8th grade for general/consumer audiences, below 10th grade for professionals; keep most sentences under ~18–25 words; cloze comprehension ≥60% is good, <40% too hard. (Readability formulas are imperfect for short UI strings — use for comparing versions, and scrub brand names before scoring.)

---

## VIII. Content strategy, structure, and governance

**P32. Do less, not more; omit needless content at every level.** Less content is easier to find, cheaper to maintain, and higher quality; "publishing everything" usually means "everything we can," not "everything users need." Cut needless content at site, section, page, and sentence level.

**P33. Strategy is a destination, not a tactic — trace every piece of content to a defined purpose and a known audience.** A blog/knowledge-base/social account is a tactic; strategy is the lighthouse that benchmarks each tactic. Define a core/message strategy specific enough to let you say "no" (test it against your last 10 projects). Every page needs a stated job (persuade/inform/validate/instruct/entertain).

**P34. Organize around the user's tasks and mental model, not the org chart; design inward-out from core pages, not the homepage.** Search and inbound links mean any page is an entry point and the homepage matters less than assumed; siloed, department-organized content ("showing your corporate underwear") forces users to assemble answers. Every core page needs a forward path — never a blind alley.

**P35. Separate content from presentation; model it as structured chunks, not page-bound blobs.** Store meaning (semantic structure + metadata), apply style at render; a "chunk" is reusable across devices/channels, a "blob" is trapped in one layout. Label chunks by what they MEAN ("quick facts," "timeline"), never by position ("sidebar"). One topic, one resource, one URL.

**P36. Aim for content parity across devices/channels; never withhold content because of an assumed "mobile context."** Device tells you nothing about intent; users choose the device, not you. Truncation is not a content strategy; write purpose-built short and long versions, and don't fork separate per-platform copies (a maintenance disaster). If it shouldn't be on mobile, it shouldn't be on desktop.

**P37. Content is a maintained, governed asset with a named owner — publishing it is only halfway done.** Online content is a "live green plant," not "dead-tree media": without an owner, a review cadence, and a budget, it rots (dead blogs, stale dates, broken links — the "Day Two Problem"). Put someone in charge with the power to say "no." Governance is the single most common point of failure.

**P38. Author experience is the flip side of user experience — design the CMS for the people creating content.** Authors are users too; a bad authoring environment (WYSIWYG nightmares, jargon, surfaced storage paradigms, populate-to-save) produces incomplete, inconsistent, error-prone content that breaks everything downstream. Constraints empower content; mandatory should gate phase-promotion, not save.

---

## IX. Measurement and iteration

**P39. Publishing is halfway — measure against goals, then iterate (test almost everything).** Content can't be called "working" without being measured against an intended job; build programs off objectives, not vanity metrics like raw traffic.

**P40. Pair quantitative ("what") with qualitative ("why"); interpret with context and always finish with an action.** A single metric invites optimizing the wrong (or unethical) thing; behavior data hides who/why; "context is worth 80 IQ points." Aim for ≥1 behavior + ≥1 perception data point per question. A high bounce rate can mean failure OR success — context decides. Never trust an A/B "winner" in a vacuum.

**P41. Validate words with users; content research is a pre-test, not a replacement for judgment.** Test comprehension, not just behavior; use cloze, 5-second, preference, and highlighter tests to find the strongest 1–2 candidates before risky live A/B, and reserve research for your Most Important Content. A runaway preference (e.g., 14 of 20) can skip A/B.

---

## X. Ethics

**P42. Respect the user: invite, don't command or shame; reserve urgency for genuine stakes.** Frame CTAs as benefit-led invitations the user is free to decline; never use confirm-shaming ("No thanks, I want my sales to remain low") or self-deprecating opt-outs — even coerced signups don't convert and the relationship is damaged. Don't bundle consents or use reverse-logic opt-outs. Misapplied urgency/hyperbole breeds long-term distrust. (Some marketing guidance advocates persuasion/NLP tactics — embedded commands, presuppositions, confirm-shaming-adjacent urgency — apply only the truthful, ethically-gated forms.)

**P43. Be honest and accountable; align projected values with perceived values.** Honesty = accuracy + sincerity; no overpromising, fake scarcity, asterisks/hidden fine print, or unfalsifiable claims ("completely secure," "never"). A real apology owns the specific harm ("We screwed up") — never "sorry for any inconvenience." Misaligned values read as dishonest and invite backlash.
