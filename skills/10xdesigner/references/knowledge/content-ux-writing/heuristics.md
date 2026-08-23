# Heuristics — Content & UX Writing

Deduplicated "if X → problem Y → fix Z" critique heuristics, merged across all 30 books. Each fires on something an agent can spot in an artifact. Grouped by surface.

---

## Errors, validation & failure states
- **If** an error message contains "error / failure / invalid / illegal / validation / unsupported," an error code, or a raw system string (404/413/500, "Entity Too Large," stack trace, kernel "oops") **then** it intimidates, blames, or baffles the user and they abandon at a fragile moment **→ fix:** drop jargon/codes, describe the specific problem plainly, and give a constructive next step.
- **If** an error only says "Something went wrong / You cannot proceed / Please try again" with no cause **then** the user is stuck **→ fix:** state the specific cause AND a concrete remedy (e.g., "Direct flights to Dublin are only in August — pick another date").
- **If** an error only describes a technical condition with no action **then** it's a dead end **→ fix:** lead with the verb-first instruction; if truly blocked, say when/how it resolves.
- **If** the error message could have been prevented by design **then** you're patching the wrong layer **→ fix:** Avoid→Explain→Resolve — mark required/format rules up front, accept any format where possible, disable invalid states; ask dev what triggers it and design it out.
- **If** copy blames or shames the user ("you did it wrong," "you are not protected") **then** trust, adoption, and retention drop **→ fix:** shoulder the burden, state the system cause, point to the resolution; reframe blame onto the object or use passive voice to soften.
- **If** developer/test/placeholder strings ("Did I break something?", lorem, TODO) are visible in the shipped UI **then** it confuses users and signals neglect **→ fix:** audit for and replace dev/placeholder copy before launch.
- **If** input validation rejects valid-but-misformatted input (phone, date) with no format guidance, or rejects culturally-diverse names (min length >2, no hyphens/umlauts, 2-char Chinese names) **then** willing users are blocked and excluded **→ fix:** accept any reasonable format, show the format/example up front, and switch from "block" to "confirm this is correct."
- **If** a personalized/variable string has no fallback (shows "Hi none"/"Hi {{name}}") **then** output breaks **→ fix:** always code an if-then fallback ("if no variable, serve 'Hi there'").

## Empty states, confirmations & transitional text
- **If** an empty state / 404 / no-results says only "No items / Page not found / No results" on a blank page **then** users leave and it can look broken **→ fix:** explain plainly (no "404"), show empathy, and offer a path forward ("To do X, do Y" + first-step CTA / did-you-mean / similar items).
- **If** a confirmation just says "X completed successfully" **then** it's impersonal and orphaning **→ fix:** speak to the user, restate the value gained, present the next step.
- **If** delayed/invisible work shows no transitional or confirmation text **then** users feel uncertain or repeat the action **→ fix:** show present-continuous ("Submitting…") then past-tense ("Submitted"); for long waits give a realistic concrete estimate, not "a long time."
- **If** an apology says "We apologize for any inconvenience" **then** it reads as a non-apology that signals you don't care **→ fix:** "We're sorry," name the specific harm, own it, and say what happens next.

## Buttons, CTAs & links
- **If** a key conversion button is a generic verb ("Submit / Download / Search / Register / Send / Order") **then** it under-converts by emphasizing the user's work not their reward **→ fix:** Value + Relevance ("Get your free guide"); ~40% lift possible.
- **If** a button is longer than ~2 words or doesn't match its title's verb **then** it's used less/slower and the action feels ambiguous **→ fix:** 1–2 words, verb-first, mirror the title ("Create Account").
- **If** a CTA names a higher commitment than the step actually is ("Book a room," "Register," "Draw Funds" at an exploratory step) **then** users hesitate and drop off **→ fix:** lower the perceived commitment to match ("Check availability," "Continue," "Review and Draw") — functionality unchanged (+17% to +45% in tests).
- **If** a Cancel/Confirm (or destructive) pair is ambiguous about WHAT it affects **then** users err, sometimes irreversibly **→ fix:** "Yes, [verb]" / "No, [verb]" with explicit objects; match dialog buttons to the question (Yes/No for questions).
- **If** a destructive/data-losing action has no warning **then** users lose work silently **→ fix:** state the consequence before it commits; reassure on "permanent-feeling" inputs that they can change them later.
- **If** link/button text is "Click here / Learn more / More / Read More" or a bare noun **then** it gives no scent, breaks screen-reader link lists, and hurts SEO **→ fix:** describe the destination/action, start action links with a verb, and warn on unusual behavior (new window/download).
- **If** a link's wording doesn't match the headline of the page it lands on **then** trust and SEO break ("launch ≠ land") **→ fix:** share the same keywords between link and destination headline.

## Forms, labels & helper text
- **If** a field's only prompt is a placeholder inside it (label-as-placeholder) **then** the prompt vanishes on typing and taxes memory **→ fix:** show a persistent label outside the field.
- **If** format/length/password rules live only in a vanishing placeholder or appear only after a failed attempt **then** avoidable errors occur **→ fix:** show rules before typing (near the label, tooltip on focus, live indicator); give per-rule inline ticks.
- **If** required vs. optional fields aren't marked **then** users guess and hit error walls **→ fix:** mark required fields; reconsider whether "optional" fields are needed at all.
- **If** a form requests sensitive data (DOB, phone, gender, address) with no explanation **then** users get suspicious and abandon **→ fix:** state the reason + a privacy promise inline; separate gender from pronouns; make it optional/editable/free-text.
- **If** a sign-up / newsletter / contact form just shows fields (or generic "Get updates / Be the first to know") with no reason to act **then** users won't convert **→ fix:** state a concrete benefit (2–3, not more), name exactly what arrives + frequency, and reassure on spam/privacy.
- **If** saving a draft is blocked until all mandatory fields are filled **then** authors/users insert risky filler **→ fix:** allow save always; gate only the transition to the next lifecycle phase on completeness.
- **If** intro/helper text merely restates the control beneath it, or sits far from the control it governs **then** it's redundant or unlinked to the decision **→ fix:** delete redundant restating; place must-know helper text directly above/beside the control at the moment of need.

## Voice, tone & humor
- **If** a friendly/quirky/exclamatory/joke tone is applied to a stress moment (error, billing problem, account suspension, accident report, processing a payment) **then** it lacks empathy and can wound **→ fix:** shift to calm/supportive/informational and recede the brand; keep humor to good-news/low-stakes contexts.
- **If** clever/witty copy sits on a frequently-repeated action **then** novelty fades into annoyance **→ fix:** keep routine actions simple and calm.
- **If** voice is one tone everywhere (or "all over the map" page to page) **then** it reads tone-deaf in high-stakes moments / erodes trust **→ fix:** hold one voice, define tone variants per scenario (success/error/legal/urgent); document voice in a style guide.
- **If** a serious/transactional product adopts a forced jokey "warm and fuzzy" voice **then** the tone mismatches the values **→ fix:** align tone to the brand's real values; neutrality is valid.
- **If** the brand can't be identified from the copy with the logo hidden **then** voice is generic/undifferentiated **→ fix:** tell the story only you can tell; pick a distinct, value-aligned vocabulary.

## Clarity, fluff & jargon
- **If** copy contains empty modifiers/superlatives (amazing, intuitive, powerful, revolutionary, world-class, "never been easier") **then** it tells users how to feel and erodes trust **→ fix:** replace with the concrete fact/benefit/number that makes it good.
- **If** copy uses jargon/buzzwords (utilize, leverage, ideate, synergize, best-of-breed, next-generation), Latin (i.e./e.g./per se), or "Weblish/Frankenwords" **then** comprehension drops and it could describe any company **→ fix:** swap for the plain word ("use," "for example") or cut it; spell out acronyms at first mention on every surface.
- **If** a sentence runs long with extra info between subject and verb, or buries the action in a noun ("-tion/-ment") with a weak "to be" verb **then** readers lose the thread **→ fix:** keep subject-verb-object together, one fact per sentence/list item, action in a strong active verb.
- **If** an unavoidable hard term is awkwardly worked around **then** it confuses more **→ fix:** use the term and define it inline (tooltip / parenthetical).
- **If** the interface needs many words of explanation to be usable **then** you likely have a UX problem, not a copy problem **→ fix:** redesign the flow; let microcopy clear up only residual ambiguity.

## Page structure, scannability & legibility
- **If** a page opens with history/background/welcome/"About us" before the user's answer **then** it buries the key message and people leave **→ fix:** lead with the key message (inverted pyramid); move or cut background and running-start paragraphs.
- **If** body text is a dense wall (paragraphs >3–4 lines, all passive, no headings/lists) **then** eyes glaze and users skim past or leave **→ fix:** short paragraphs, active voice, bullets/tables, headings, active space, surfaced keywords.
- **If** body text is centered, full-justified, ALL CAPS, low-contrast, reverse type, or an odd/serif font for long blocks **then** legibility and reading speed drop (caps ~15% slower, ~30% more space) **→ fix:** left-aligned, upper-and-lowercase, legible sans-serif, dark-on-light, ~50–70 chars/line.
- **If** a heading floats equidistant from text above and below, or a rule/blank gap creates a "false bottom" **then** grouping is unclear and users think the page ended **→ fix:** more space above the heading than below; remove false-bottom rules/gaps; test across devices.
- **If** real content/links are styled like ads (small colorful right-rail boxes) or carry moving/blinking/auto-advancing text **then** users ignore them (banner blindness) or get distracted **→ fix:** don't style content like ads; remove non-explanatory animation.
- **If** the most important info or primary action sits bottom-right **then** users miss it (F-pattern) **→ fix:** move critical info/actions to the top/top-left.
- **If** a pathway/navigation/gallery page buries links under intro prose or a big picture **then** hunting users skip it and miss the links **→ fix:** make it mostly links, high on the page, prose only as short scannable descriptions.

## Consistency, naming & terminology
- **If** the same action/concept is named differently across the product or channels (Delete/Erase; notifications/alerts/messages; Activate button vs. "published" confirmation; Continue/Sign in variants) **then** recognition breaks, cognitive load rises, and localization cost grows **→ fix:** one term per concept everywhere (incl. docs); run a nomenclature audit; collect variants and ratify one standard in the design system.
- **If** the interface mixes pronoun perspectives ("My Account" / "Your Orders" / "About Us") **then** users get confused about who "me/us" is **→ fix:** pick one perspective ("you") or drop pronouns.
- **If** tabs/labels are generic ("Advanced," "Options," "Settings," "Edit") or a title bar lacks the object name **then** users can't find or stay oriented **→ fix:** concrete descriptive labels; include the feature/object name ("Edit Colors"); match the launching control.
- **If** copy/labels/URLs use insider expert jargon ("xerostomia," "illusion") instead of audience terms ("cotton-mouth," "magic trick") **then** users can't find or understand it **→ fix:** use audience vocabulary from research and search logs.

## Accessibility, inclusion & globalization
- **If** meaning relies on color or an icon alone **then** color-blind, low-vision, screen-reader, and cross-cultural users lose it **→ fix:** add explanatory words so the message stands alone when read aloud.
- **If** action verbs are device-specific (Click/Tap/Press) or instructions are spatial ("the button below," "see above") **then** voice/adaptive and screen-reader users are excluded/misled **→ fix:** device-agnostic verbs (Choose/Select/View) and chronological wording ("Next…").
- **If** a unit/note/label appears only AFTER an input field **then** screen-reader users miss it **→ fix:** put units/key info in the main string ("Timeout limit (minutes):").
- **If** an informative image has no/empty ALT-text, or video lacks captions/transcript **then** assistive-tech users lose the content and findability drops **→ fix:** write meaningful ALT-text (the "describe it over the phone" test); add captions/transcripts; real headings via tags.
- **If** body/large-text contrast is below 4.5:1 / 3:1 or the UI can't be operated by keyboard with a visible :focus **then** ~20% of the audience is excluded and it fails WCAG **→ fix:** raise contrast; ensure keyboard operability + :focus style.
- **If** source copy uses idioms, humor, clichés, rhetorical questions, or culture-specific references **then** it mistranslates or offends and burdens MT **→ fix:** write plain, literal, universal source text; transcreate (not translate) emotional/brand content per locale.
- **If** a language/locale selector uses country flags as language labels **then** it's wrong/offensive for shared or multi-language countries (Canada, Portugal vs. Brazil) **→ fix:** label each option by language name (endonym).
- **If** there's no obvious global gateway, or it doesn't persist a preferred locale **then** international users can't reach (or must re-pick) their site and leave **→ fix:** add a visible global gateway/button near the top with a world-map cue and a "remember my region" option.
- **If** text is baked into images or layouts are too tight for ~2× expansion **then** every locale needs manual re-editing/overflows **→ fix:** keep text out of images; design templates with slack.

## Content strategy, governance & structure
- **If** a page maps to neither a business objective nor a user need **then** it's dead weight that buries useful content **→ fix:** cut it or redefine its purpose and audience.
- **If** the site is bloated with ROT (redundant/outdated/trivial), stale dates, dead links, or "coming soon" for shipped items **then** governance has failed and content rots **→ fix:** assign a named owner + review cadence; run a ROT/audit pass; cut or consolidate.
- **If** navigation is organized by business unit / product codes / org chart **then** it serves insiders not users and forces silo-hopping **→ fix:** reorganize around user tasks and mental models (Top Tasks).
- **If** a page answers the user's question but offers no relevant next step **then** it's a blind alley that wastes acquired attention **→ fix:** add a forward path tied to the page's user context.
- **If** a CTA/upsell ignores the user's emotional/task state (e.g., "Donate!" right after reading about melanoma) **then** it's intrusive and converts poorly **→ fix:** reframe the ask to match the mindset ("If you think cancer research matters, you can help").
- **If** core/in-depth content (specs, manuals, support) is only a PDF/Word/Flash download while marketing gets the web treatment **then** users lose search/sort/share and hit dead ends **→ fix:** publish substantive content as native web/HTML.
- **If** there's no owner with authority to say "no" **then** politics and pet content override quality (cluttered homepage, orphaned microsites) **→ fix:** establish strategic + implementation authority; one accountable owner per content type (RACI).
- **If** the visual look-and-feel changed but the copy/tone/taxonomy didn't ("design-only relaunch") **then** old copy breaks templates and tone belies the brand **→ fix:** audit content against the new message architecture; budget for both design and content.

## Structured, connected & mobile content
- **If** content is one freeform WYSIWYG body "blob" with inline styling and hand-typed dates/links **then** it can't be reused, reflowed, layered, or queried **→ fix:** break into named semantic chunks/fields; store meaning, style at render.
- **If** content elements are labeled by page position ("sidebar," "right column") **then** the system can't decide whether/where they're needed elsewhere **→ fix:** relabel by meaning ("quick facts," "timeline").
- **If** mobile/responsive offers only a subset of content with a "full desktop site" escape link **then** users pinch-zoom, search breaks, and parity is violated **→ fix:** publish all content on mobile; never redirect a search result to the mobile homepage.
- **If** headlines/teasers/summaries/body/images are truncated at an arbitrary character count with an ellipsis **then** content becomes meaningless **→ fix:** author purpose-built short and long versions; don't recycle body copy as a teaser.
- **If** a responsive layout dumps the sidebar to the bottom for every template **then** conversion-critical content gets buried below long copy **→ fix:** set per-content-type rules; interdigitate key modules into the main flow.
- **If** the same fact/spec/disclaimer is hand-duplicated across pages/PDFs **then** versions drift and a global update is costly (~$250K in one case) **→ fix:** single-source/transclude it from one managed instance.
- **If** a template only looks good with the richest example (best photo, fullest copy) **then** it breaks on sparse real content **→ fix:** design and test against thin AND rich live content, never lorem ipsum.
- **If** navigation/page content via JavaScript changes no URL **then** it can't be bookmarked, shared, or indexed and the back button breaks **→ fix:** distinct topics/layouts = distinct server-rendered URLs; reserve Ajax for in-page view changes (sort/filter/tabs); provide an accessible no-JS fallback.

## Authoring experience (CMS / back-office copy)
- **If** a field/label/nav exposes a file path, node ID, slug, or developer term **then** storage paradigms leaked into the authoring UI and authors err **→ fix:** add a translation layer; relabel in the author's domain language.
- **If** a content type has dozens of fields/metadata axes or sprawls across screens **then** authors are overwhelmed and error rates rise **→ fix:** find the minimum viable distinction; cluster into tabs/sections; keep structure consistent across types.
- **If** a reference is shown as a raw/truncated URI instead of a content snippet + edit link **then** the author can't tell what's linked **→ fix:** render a snippet/title with "open for editing."
- **If** the editor is a full WYSIWYG (bold/italic/font/color) feeding one output **then** presentation is baked into stored content and reuse breaks **→ fix:** semantic/structural controls (typed emphasis, named heading levels) — WYSIWYM.

## Measurement & research
- **If** success is reported using only traffic/pageviews, or a single metric **then** it's unproven and invites optimizing the wrong (or unethical) thing **→ fix:** tie to an objective and pair ≥1 behavior + ≥1 perception data point.
- **If** an A/B "winner" is accepted without asking why, or a frictionless flow boosts an action while support calls to reverse it rise **then** the win may be false (users rushed into errors) **→ fix:** pair A/B with qualitative; measure outcome quality, not just volume.
- **If** a survey asks "Would you buy this?" (predicted behavior) **then** the data is unreliable **→ fix:** ask about perception ("Did the content help you decide?").
- **If** a metric is judged on a timescale shorter than the customer journey **then** long-game content looks like a false failure **→ fix:** match the evaluation horizon to the journey length; segment by journey stage before declaring failure.
- **If** a word's only justification is "it's in the style guide" or "Legal said so" **then** it may be an unvalidated assumption or CYA caution **→ fix:** content-test high-frequency words; ask Legal which exact law requires the wording.

## Marketing / conversion copy
- **If** the first screen is dominated by a big logo with no headline, or reads like an ad **then** the prime selling space is wasted and users tune out **→ fix:** shrink the logo, add an editorial benefit-driven headline; sell benefits not features ("…which means you can…").
- **If** a landing page keeps full navigation, multiple offers, or autoplay/long forms ("sagging page syndrome") **then** distractions bleed conversions **→ fix:** one hyperfocused offer, minimal nav, essential form fields only, no autoplay.
- **If** a landing-page headline doesn't echo the ad/email that drove the click **then** message mismatch causes bounce (45% of pages fail this) **→ fix:** repeat the source offer's copy in the headline.
- **If** copy speaks about the company ("We do X," "we/us" ≫ "you/your") **then** it's company-centric and disengaging **→ fix:** rewrite as customer value ("You get Y"); count "you" vs. "we."
- **If** a decline/opt-out uses self-shaming language ("No, I don't want to save money") **then** it's a dark pattern that fails short- and long-term **→ fix:** neutral, honest opt-out copy. _(Some marketing guidance endorses urgency/scarcity/NLP tactics adjacent to this — apply only ethically.)_
