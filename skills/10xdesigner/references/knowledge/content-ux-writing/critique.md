# Critique Checklist — Content & UX Writing

Self-contained, scoreable checklist for an external design-review tool. Each item: **check** (binary unless noted), **why it matters**, **severity** (high / med / low). Deduplicated and merged across all 30 books; not every item applies to every artifact — score N/A where a category is irrelevant and exclude it from the denominator. Items are grouped; high-severity items are the floor.

---

## A. Errors, validation & failure states
- [ ] **Error messages are free of "error/failure/invalid/illegal," error codes, jargon, and raw system strings (no bare 404/413/500, stack traces).** — Intimidating/technical errors cause abandonment at a fragile moment. — **high**
- [ ] **Every error both names the specific cause AND gives a constructive next step (or, if blocked, when/how it resolves).** — "Something went wrong" / "You cannot proceed" leaves users stuck. — **high**
- [ ] **No error blames or shames the user; the system shoulders the burden.** — Blame harms trust, adoption, retention. — **high**
- [ ] **Preventable errors are designed out (required/format rules show up front, lenient input parsing, invalid states disabled) before any message is written.** — The best error is one never seen. — **high**
- [ ] **Validation accepts valid-but-misformatted input and culturally diverse names (no min-length >2, hyphens/umlauts/2-char names blocked); it confirms rather than blocks where possible.** — Otherwise willing/real users are excluded. — **high**
- [ ] **No developer/test/placeholder strings (lorem, TODO, "Did I break something?") are visible in the shipped UI.** — Leaked dev copy confuses users and signals neglect. — **high**
- [ ] **Personalized/variable strings have coded fallbacks (no "Hi {{name}}" / "Hi none").** — Prevents broken output. — **med**

## B. Empty states, confirmations & transitional text
- [ ] **Empty states, 404s, and no-results screens explain + empathize + offer a path forward (not just "No items"/"Page not found").** — Blank dead ends lose users (77% of apps abandoned within 3 days). — **high**
- [ ] **Confirmations do more than "X completed successfully" — they speak to the user, restate the value, and present the next step.** — Orphaning the user wastes the moment. — **med**
- [ ] **Delayed/invisible work shows transitional ("Submitting…") then confirmation ("Submitted") text; long waits give a concrete estimate.** — Prevents uncertainty and duplicate actions. — **med**
- [ ] **Apologies own the specific harm and state what happens next (no "sorry for any inconvenience").** — Sincere apologies rebuild trust. — **med**

## C. Buttons, CTAs & links
- [ ] **Key conversion buttons state value/relevance, not a generic verb ("Get your free guide," not "Submit/Download/Register").** — Value-framed buttons can lift conversion ~40%. — **high**
- [ ] **CTA labels match the user's actual commitment level at that step (no over-committal verbs on exploratory/reversible actions).** — Over-commitment causes drop-off ("Register"→"Continue" = +45% / $300M; "Book a room"→"Check availability" = +17%). — **high**
- [ ] **Buttons are short (ideally 1–2, ≤5 words), verb-first, in the user's words, and mirror their title's verb.** — Short familiar buttons are used more and faster. — **high**
- [ ] **Destructive / Cancel-Confirm buttons are unambiguous about exactly what happens (explicit objects; Yes/No matched to the question).** — Ambiguous buttons cause wrong, sometimes irreversible, choices. — **high**
- [ ] **Destructive or data-losing actions are preceded by clear warning copy.** — Silent data loss erodes trust. — **high**
- [ ] **Link/button text describes its destination/action (no "Click here / Learn more / More" or bare nouns); unusual behavior (new window/download) is flagged.** — Vague links give no scent and break screen-reader link lists. — **high**
- [ ] **Link wording matches the headline of the page it lands on ("launch = land").** — Mismatch breaks trust and SEO. — **med**

## D. Forms, labels & helper text
- [ ] **Field labels are persistent and outside the field (no label-as-placeholder).** — Vanishing labels tax memory and cause errors. — **high**
- [ ] **Format/length/password rules are shown before the user types (near the label, tooltip on focus, or live indicator) — not in a vanishing placeholder.** — Prevents avoidable errors. — **med**
- [ ] **Required fields are marked and every "optional" field is justified.** — Removes guesswork; fewer fields = higher completion. — **med**
- [ ] **Requests for sensitive data (DOB, phone, gender, address) state the reason + a privacy promise inline; gender is separated from pronouns and is optional/editable.** — Unexplained requests trigger suspicion and abandonment; inclusion. — **high**
- [ ] **Sign-up / newsletter / contact entry points state a concrete benefit (2–3, with frequency + no-spam promise), not just fields or "Get updates."** — Users won't give email/register without a reason. — **high**
- [ ] **Constrained inputs show a concrete example and an appropriately sized box; the example is echoed in the error.** — Prevents first-try entry errors. — **med**
- [ ] **Drafts can be saved with empty mandatory fields; completeness is enforced only at phase-promotion (CMS/authoring).** — Populate-to-save forces risky filler. — **med**
- [ ] **Helper/warning text sits directly beside/above the control it governs, at the moment of need, and doesn't merely restate the control.** — Proximity + timing drive comprehension; restating adds noise. — **med**

## E. Voice, tone & humor
- [ ] **Tone matches the user's likely emotional state for this moment (calm/supportive in errors, stress, grief, hurry; humor only in good-news/low-stakes contexts).** — Misfit tone reads as not listening and can wound. — **high**
- [ ] **Voice is consistent across the product and aligned with the brand's visual personality and values.** — Verbal/non-verbal dissonance destroys trust. — **high**
- [ ] **No clever/witty filler sits on frequently-repeated actions.** — Novelty fades into annoyance. — **med**
- [ ] **One voice is held while tone varies per scenario (success/error/legal/urgent); a documented voice/tone guide exists.** — A single tone everywhere reads tone-deaf; consistency at scale. — **med** (guide existence: **low**)
- [ ] **The brand is identifiable from the copy alone (logo hidden).** — Voice is a neglected differentiator. — **med**

## F. Clarity, concision & jargon
- [ ] **Copy is free of empty modifiers/superlatives (amazing, intuitive, powerful, revolutionary, world-class, "never been easier") and unfalsifiable claims ("completely secure," "never").** — Fluff and false claims erode credibility. — **med** (false absolute claims: **high**)
- [ ] **Copy avoids jargon/buzzwords, Latin (i.e./e.g.), and tech-speak; acronyms are spelled out at first mention on each surface; unavoidable hard terms are defined inline.** — Jargon confuses and alienates, even experts. — **med** (undefined acronyms hurting new users: **high**)
- [ ] **Sentences are mostly active voice, subject-verb-object kept together, action in a strong verb, ~under 18–25 words; one idea per heading/button/tooltip/error/paragraph.** — Tangled/overloaded text is misread or abandoned. — **med**
- [ ] **Copy is clear over clever (clarity > brevity > style); accuracy is established first.** — Cleverness invents cognitive load; "short" isn't automatically clearer. — **high**
- [ ] **Copy passes the "read aloud / would a real person say this" test (active, second person, contractions where natural).** — Catches stiff, voiceless, or unkind phrasing; conversational style raises trust. — **med**

## G. Page structure, scannability & legibility
- [ ] **The page/message leads with the key message/answer (inverted pyramid), not background, welcome, or a CEO letter.** — Users decide relevance in the first few words. — **high**
- [ ] **Content is scannable: short paragraphs, headings, bullets/tables, surfaced keywords, active space (no wall of text).** — Users skim (~79% scan, ~16% read word-for-word); dense text loses them. — **high**
- [ ] **Body text is left-aligned, upper-and-lowercase, legible sans-serif, dark-on-light/high-contrast, ~50–70 chars/line (no centered/justified/ALL-CAPS/reverse-type blocks).** — Determines whether anyone reads it (caps ~15% slower, ~30% more space). — **high** (alignment/line-length: **med**)
- [ ] **The most important info / primary action is in the top/top-left hotspot, not bottom-right.** — Users scan top-left first (F-pattern). — **high**
- [ ] **No false bottoms (rules/large blank gaps implying the page ends) and headings group with the text below them (more space above than below).** — They stop scrolling / break grouping. — **med**
- [ ] **Real content isn't styled like ads, and there's no distracting auto-moving/blinking text.** — Banner blindness and distraction. — **med**
- [ ] **The most pertinent content is the most prominent element, not buried under chrome/ads/upsells.** — Content is why the user came. — **high**

## H. Consistency, naming & terminology
- [ ] **One term names one concept everywhere (incl. docs and across channels); a button's verb matches its confirmation; pronoun perspective and casing are consistent.** — Inconsistency breaks recognition, raises cognitive load, and multiplies localization cost. — **high**
- [ ] **Navigation/category/tab labels are concrete, intuitive to end users, and lead with the differentiating keyword (not generic "Advanced/Options/Settings" or internal jargon).** — Findability depends on recognizable nomenclature. — **med**
- [ ] **Labels/URLs/terminology use audience vocabulary (from research/search logs), not expert/internal jargon.** — Findability and comprehension. — **high**

## I. Accessibility & inclusion
- [ ] **Meaning never relies on color or an icon alone; supporting words make it stand alone when read aloud.** — Color-blind, low-vision, screen-reader, cross-cultural users. — **high**
- [ ] **Informative images have meaningful ALT-text; videos have captions/transcripts; headings use real tags.** — Assistive tech and findability. — **high**
- [ ] **Action verbs are device-agnostic (Choose/Select/View, not Click/Tap/Press) and instructions are chronological (not "the button below/above").** — Voice/adaptive and screen-reader inclusivity. — **med**
- [ ] **Units/key info are inside the main string, not only after the input field.** — Screen readers skip text after a field. — **high**
- [ ] **Body/large-text contrast ≥ 4.5:1 / 3:1, and the UI is keyboard-operable with a visible :focus state.** — WCAG compliance; ~20% of users excluded otherwise. — **high**
- [ ] **Reading level matches the audience (~6th–8th grade general, <10th professional); verified where it matters.** — Even fluent speakers aren't fluent readers; covers dyslexia/ADHD/ESL. — **high** (verification rigor: **med**)
- [ ] **Person-language is identity-respectful and inclusive (no "confined to," "suffers from," "you guys," "master/blacklist"; singular "they" for unknown person).** — Avoids exclusion and offense. — **med**

## J. Globalization (apply when the product ships in >1 locale)
- [ ] **Source copy is free of idioms, humor, clichés, and culture-specific references; emotional/brand content is transcreated, not literally translated.** — Idioms mistranslate or offend; emotion doesn't translate. — **med** (high if multilingual)
- [ ] **Language/locale selectors label options by language name (endonym), never by country flag.** — Flags misrepresent shared/multi-language countries. — **high** (if multilingual)
- [ ] **An obvious global gateway is reachable near the top (world-map cue) and persists a preferred locale; key tasks are searchable/completable in the target language.** — Otherwise international users can't reach (or re-find) their site. — **high** (if multilingual)
- [ ] **Text is kept out of images; layouts tolerate ~2× text expansion; sentences ≤26 words (≤24 for MT).** — Internationalization without re-engineering. — **med** (high if multilingual)
- [ ] **Imagery avoids hand gestures and culturally sensitive depictions; maps/flags are current and appropriate.** — Gestures/photos can be vulgar or offensive abroad. — **med**

## K. Content strategy, purpose & governance
- [ ] **Each page/section traces to a defined business objective AND/OR user need, with a stateable single purpose.** — Content serving neither is clutter that buries the rest. — **high**
- [ ] **Navigation is organized around user tasks and mental models, not the org chart / product codes / departmental silos.** — Insider structure forces users to assemble answers. — **high**
- [ ] **Every core page offers a relevant forward path / next step (no blind alleys), and CTAs respect the user's emotional/task context.** — Dead-end pages waste acquired attention; mismatched asks convert poorly. — **med**
- [ ] **Content is current (reviewed within ~a year), accurate, and free of ROT, stale dates, dead links, and "coming soon" for shipped items.** — Stale content signals neglect and misinforms. — **high**
- [ ] **Each content area has a named accountable owner and a review/maintenance cadence (RACI).** — Unowned content rots (the "Day Two Problem"). — **high**
- [ ] **There is an authority empowered to say "no" to off-strategy content.** — Without one, politics and pet content override quality. — **high**
- [ ] **Substantive/core content is delivered as native web/HTML, not only as page-bound PDF/Word/Flash downloads.** — Page-bound formats lose search, sort, share, and skim. — **high**
- [ ] **There is a living style guide (mechanics + voice/tone) accessible to all contributors, with preferred diction.** — Consistency, not uniformity, at scale. — **low**

## L. Structured, connected & multi-channel content (apply for multi-device/CMS products)
- [ ] **Content is broken into distinct, semantically named chunks (not one freeform blob), labeled by meaning not page position.** — Precondition for reuse, reflow, layering, and rules. — **high**
- [ ] **Content is stored separately from presentation (no inline font/size/color baked in); styling applied at render.** — Presentational markup breaks across devices and rebrands. — **high**
- [ ] **Full content remains available on mobile/responsive (content parity); nothing is reachable only via a "full desktop site" link or a search redirect to the mobile homepage.** — You can't predict a visitor's intent by device. — **high**
- [ ] **Headlines/teasers/summaries/body/images are free of arbitrary truncation; purpose-built short and long versions exist.** — Truncation produces meaningless, broken content. — **high**
- [ ] **On small screens, each element's shift/priority follows its meaning (no blanket "sidebar-to-bottom"); long body text scrolls rather than paginating needlessly.** — Blanket rules bury conversion-critical content; scrolling beats precise taps. — **med**
- [ ] **Shared facts/specs/disclaimers are single-sourced/transcluded, not hand-duplicated.** — Duplication drifts and is costly to update globally. — **med**
- [ ] **Templates are tested against thin AND rich real content, not lorem ipsum or the richest example.** — Templates must serve the whole mixed-bag inventory. — **med**
- [ ] **Distinct topics/layouts each map to a distinct, bookmarkable, indexable URL; in-page Ajax (sort/filter/tabs) doesn't break the back button or an accessible no-JS fallback.** — Preserves sharing, SEO, and accessibility. — **high**
- [ ] **(Authoring) CMS labels use the author's domain language (no exposed paths/IDs/slugs); references show a content snippet + edit link; the editor uses semantic controls (WYSIWYM).** — Author experience determines downstream content quality. — **high** (granular sub-items: **med**)

## M. Measurement, research & iteration (apply when judging a measurement/test plan)
- [ ] **Success is defined by an objective (not raw traffic), with a documented if-then statement agreed before testing.** — Programs off vanity metrics fail; prevents post-hoc reinterpretation. — **high**
- [ ] **At least one behavioral AND one perception data point exist per key question; an A/B "winner" is paired with qualitative "why."** — Single metrics optimize the wrong/unethical thing; false wins. — **high**
- [ ] **The evaluation horizon matches the customer-journey length, and metrics are interpreted with context before action.** — Long-game content judged short-term looks like a false failure; "context is worth 80 IQ points." — **high**
- [ ] **High-frequency/Most-Important copy has been validated with users (comprehension/preference/cloze/5-second), not justified by "it's in the style guide."** — Words you assume are clear often aren't. — **med**

## N. Ethics (gate before any persuasion tactic)
- [ ] **No confirm-shaming / self-deprecating decline copy; opt-outs are neutral and honest; consents aren't bundled or reverse-logic.** — Dark patterns fail short- and long-term and damage the relationship. — **high**
- [ ] **CTAs are benefit-led invitations the user is free to decline; urgency/scarcity is reserved for genuinely time-sensitive, true stakes.** — Commands/false urgency breed long-term distrust. — **med**
- [ ] **The goal this copy optimizes helps, not harms, the user (attention, comprehension, equity); the writer hasn't smuggled in manipulation (embedded commands, fake scarcity).** — UX writer is the ethics gatekeeper. — **med**
- [ ] **Marketing claims are honest and specific (no overpromising, fake scarcity, hidden fine print, or curiosity-gap clickbait); copy isn't dominated by company-centric "we/us" over "you."** — Inflated/self-centered claims erode trust and conversion. — **med**

---

### Scoring guidance
- Treat **high**-severity items as a pass/fail floor: any high failure should block "ship-ready."
- For a 1–5 or 0–10 rubric, score each applicable category (A–N) and exclude N/A categories from the denominator.
- The most universally load-bearing checks: blame-free + actionable errors (A); benefit/commitment-matched CTAs (C); persistent labels + reason-for-data (D); tone-matched-to-moment + consistent voice (E); clarity-over-cleverness (F); lead-with-the-point + scannable (G); one-term-per-concept (H); color-not-sole-cue + meaningful ALT/link text (C/I); purpose + owner + currency (K).
