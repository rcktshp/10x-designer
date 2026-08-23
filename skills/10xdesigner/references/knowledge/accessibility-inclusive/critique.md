# Accessibility & Inclusive Design — Critique Checklist

Self-contained, scoreable checklist for an external design-review tool. Each item: **check** · *why it matters* · **severity** (high/med/low). Deduplicated across decades of established UX research and practice; thresholds and WCAG criteria preserved inline.

---

## A. Color & contrast

- [ ] **Body text meets ≥4.5:1 contrast (≥3:1 for large text ≥18pt/14pt bold).** *Legibility for low-vision/aging users (WCAG 1.4.3/1.4.6).* **high**
- [ ] **All meaning carried by color is also conveyed by text, shape, position, or line/fill style** (status, links, charts, maps, errors). *~5% are color-blind; print/grayscale loses color (WCAG 1.4.1).* **high**
- [ ] **Links are identifiable by something other than color** (underline/border/button). *Color-blind/low-vision users must find links.* **high**
- [ ] **Body text avoids pure black on pure white** (uses off-black on off-white, e.g. #111/#eee). *Reduces glare/blur, esp. for dyslexic readers.* **med**

## B. Images, media & non-text

- [ ] **Every meaningful image has purposeful/functional alt; decorative/spacer/repeated-logo images have null alt=""; alt isn't a filename or a caption duplicate.** *Screen-reader equivalence without noise (WCAG 1.1.1).* **high**
- [ ] **Charts/graphs describe title, axes, and overall trend in alt** (not every data point). *Conveys the gist to non-visual users.* **med**
- [ ] **Video/audio has synchronized captions (speech + meaningful sounds), a transcript, and audio description of key visuals; captions are mixed-case and don't obscure the action.** *Deaf/HoH and blind access (WCAG 1.2.x).* **high**
- [ ] **Important audio cues have a visual equivalent (visual bell).** *Deaf users otherwise miss events.* **med**
- [ ] **Text is real text, not baked into images** (no graphic-text menus, addresses, nav). *Resizing, restyling, machine-reading, SEO (WCAG 1.4.5).* **high**
- [ ] **Critical content is not Flash- or scanned-PDF-only; an accessible HTML equivalent exists.** *Blind/low-vision/dyslexic/old-AT users excluded otherwise.* **high**

## C. Keyboard, focus & motion

- [ ] **Every interactive element is reachable and activatable by keyboard alone** (Tab to select, Enter/Space to activate), with no mouseover-only triggers and no focus trap. *Keyboard/switch/voice/screen-reader users (WCAG 2.1.1/2.1.2).* **high**
- [ ] **Focus indicator is preserved and clearly visible** (no `outline:none` / `:focus{outline:0}`). *Keyboard users must see current focus (WCAG 2.4.7).* **high**
- [ ] **Tab order follows the logical/visual sequence, with submit/last actions at the end.** *Prevents disorientation and premature submission.* **high**
- [ ] **No autoplay or uncontrolled motion; nothing flashes >3×/second; animations are static-until-interaction; carousels/audio have pause/stop/hide.** *Distraction, comprehension, seizure risk (WCAG 2.2.2/2.3.1/1.4.2).* **high**
- [ ] **Touch/click targets are large (≥~13×13px; ideally ≥0.5in×0.7in) and adequately spaced.** *Motor/tremor/touch accessibility.* **med**
- [ ] **Pop-ups/modals are closable via keyboard (ESC, spelled out) with an adequate close target.** *Motor-disabled users can't hit tiny X.* **med**

## D. Structure, navigation & layout

- [ ] **Headings (h1–h6) are present, sequential (no skips), descriptive, and used for structure — not styling.** *61% of screen-reader users navigate by headings.* **high**
- [ ] **A "skip to content" link and/or landmark regions (main/nav/banner/search) let users bypass repeated blocks** (hidden via off-screen text-indent, not display:none). *Efficient AT navigation (WCAG 2.4.1).* **med**
- [ ] **The unstyled HTML source reads top-to-bottom in a logical order, with main content first (before nav); page is usable with styles off.** *Linear AT/keyboard reading; styles-off users.* **high**
- [ ] **Layout reflows and stays usable when text is zoomed to 200% and at narrow/wide widths** (relative units, no fixed pixel widths; images/embeds/nav scale). *Low-vision and mobile (WCAG 1.4.4).* **high**
- [ ] **Markup is semantic (H1–H6, P, lists, EM/STRONG, landmarks), not FONT/B/I/BR or layout tables.** *Machine meaning and restyling.* **high**
- [ ] **Data tables have associated headers (scope/TH), CAPTION, and SUMMARY; table markup is absent from layout.** *Cell context for non-visual users.* **med**
- [ ] **Navigation placement and component labeling are consistent across pages; no untitled frames.** *Predictable mental models (WCAG 3.2.3/3.2.4).* **med**
- [ ] **Document declares a DOCTYPE and validates.** *Predictable cross-agent rendering.* **low**

## E. Forms, errors & time

- [ ] **Every form control has a programmatically associated, visible `<label for>` (not placeholder-only); related fields use FIELDSET/LEGEND.** *Field purpose for AT (WCAG 3.3.2/4.1.2).* **high**
- [ ] **Errors appear inline next to the field, downstream of the cursor, as explicit text (which field + why) with a correction suggestion and role="alert" — not color-only or page-top.** *Error recovery for AT/color-blind users (WCAG 3.3.1/3.3.3).* **high**
- [ ] **Any CAPTCHA has an audio/logic/honeypot/alternate path.** *Image-only CAPTCHA locks out blind users.* **high**
- [ ] **Every requested field passes a question protocol (who uses it, for what, required vs optional); no field is a hidden proxy for another (salutation→gender).** *Unneeded data adds friction, erodes trust, encodes bias.* **high**
- [ ] **Identity fields (gender, name, race, relationship) are omitted-when-unneeded or open enough (Custom/free text) to accept real diversity; non-standard names/diacritics/hyphens are never rejected as "not real."** *Rigid identity inputs exclude and endanger real users.* **high**
- [ ] **Required fields are truly required; users can leave unknown fields blank without falsifying data.** *Forced answers cause discomfort and unreliable data.* **med**
- [ ] **Timed tasks are generous (≈3× expected), warned, extendable/disableable, and auto-save/retain entered data.** *Slower, AD/HD, motor-disabled users get timed out (WCAG 2.2.1).* **med**

## F. Content & language

- [ ] **Link text is self-describing and keyword-first** (no bare "click here"/"read more"). *Scanning by sight and by ear (WCAG 2.4.4).* **med**
- [ ] **Content is plain language, chunked with short sentences (~10–15 words), short paragraphs, useful headings, and lists, keywords first.** *Low-literacy, ESL, cognitive, dyslexic, AD/HD, rushed readers.* **med**
- [ ] **Instructions don't rely on color/location alone** ("click the green button on the right"). *Non-visual users (WCAG 1.3.3).* **med**
- [ ] **Body text is left-aligned (ragged right), mixed-case, sans-serif with large x-height, line-height ≥1.5, and never over a background image.** *Prevents dyslexic "river effect," letter confusion (WCAG 1.4.8).* **med**
- [ ] **Copy is tested for reading level (Flesch-Kincaid) against the target audience, including ESL.** *Creators overestimate audience reading ability (avg US adult ≈9th grade).* **med**
- [ ] **Long pages provide length cues, a contents list, onboarding, tooltips for unfamiliar terms, and a working print stylesheet.** *Reduces disorientation for ESL/second-language readers.* **med**

## G. Compassion & stress cases

- [ ] **Default copy/imagery avoids assuming a positive emotional state** (celebration, success, "great year"). *Celebratory defaults are cruel for users in grief/crisis.* **high**
- [ ] **Error/rejection/warning copy is neutral and helpful — not jokey or accusatory** ("violates," "not real"). *Humor/blame in touchy moments reads as mocking or hostile.* **high**
- [ ] **Destructive, irreversible, public, or financial actions clearly state consequences and reversibility before commit; actions that publish/notify warn first.** *Uncommunicated consequences cause harm, abandonment, or outing.* **high**
- [ ] **There is a clear, findable path and content for users arriving in crisis/urgency** (emergency, deletion-in-a-hurry, deadline). *The most urgent users are most often abandoned.* **high**
- [ ] **For sensitive topics, options lead with a few broad inclusive categories, not many narrow ones.** *Stressed/low-literacy users skim and fail to self-identify.* **med**
- [ ] **Information for stressed users is prioritized and plain** (short, simple, inline instructions, no fluff). *Crisis depletes cognitive resources.* **high**
- [ ] **Features don't force users into a few preset "journeys" or assume their goal.** *Omitting a need tells whole groups the product wasn't built for them.* **med**
- [ ] **Automated/ML output is QA'd against sensitive subject matter (tragedy, disaster, identity, slurs) and keeps users in control (opt-in/recommend-and-confirm), not auto-applying with cleanup offloaded.** *ML fails badly and hurtfully out of context.* **high**
- [ ] **Goal/streak mechanics reward sustained, restartable progress rather than punishing a single lapse.** *Punitive streaks churn chronic-condition/long-term users.* **low**

## H. Cross-cultural & global

- [ ] **No typeface purports to "represent" a culture/country (stereotypography).** *Such faces carry racist connotations and damage trust.* **high**
- [ ] **All meaningful icons are paired with text labels; icon sets are consistent, high-contrast, single-meaning, and customizable.** *Icon-only UI is misread across cultures.* **high**
- [ ] **Buttons, menus, and microcopy tolerate 1.5–2× text expansion (German ~30% longer); no fixed widths, wrapping allowed.** *Translated strings overflow and break layouts.* **high**
- [ ] **RTL/vertical scripts are handled: mirrored layout (and reversed directional imagery), `dir="auto"` on mixed LTR/RTL text, directional icons mirrored but non-directional and video-player UI left as-is.** *Unmirrored RTL breaks reading flow; bidi scrambles punctuation.* **high**
- [ ] **Forms support locale-aware name order/length/diacritics, address formats, postal codes, and region lists.** *Rigid forms exclude real users and cause abandonment.* **high**
- [ ] **Currency, date, number, exchange rate, and VAT are locale-aware (dates stored UTC), shown clearly, and independently selectable; inauspicious numbers avoided.** *"7/1/2011" is ambiguous; single-currency billing and surprise tax drive abandonment.* **high**
- [ ] **Product fits local payment expectations (e.g. Brazil boleto, China deferred charging).** *Payment mismatch is a single point of failure for e-commerce.* **high**
- [ ] **Product is internationalized at the code level (externalized strings, locale variables), not custom-built per market.** *Retrofitting is expensive and blocks new-market agility.* **high**
- [ ] **Color choices were validated against local cultural meaning and a color-blindness simulator (not a listicle).** *Color symbolism is arbitrary and culture-bound.* **med**
- [ ] **IA/taxonomy matches the audience's mental model (thematic vs. functional; hierarchy vs. flat; authority markers for high power-distance).** *Mismatched structure raises errors and lowers recall.* **med**
- [ ] **Imagery is diverse, locale-appropriate, and free of WEIRD/smiling-stranger stock defaults and mismatched skin tones.** *Users disengage when not represented; wrong markers offend.* **med**
- [ ] **Personas are asset-framed (agency, strengths) and avoid baked-in Individualism defaults (Western name, "I" voice, solo device).** *Deficit-framing and individualist defaults design out collectivist/shared-device users.* **med**
- [ ] **Translation is human-reviewed for tone, idiom, slang, and detail-level (not literal/machine-only).** *Literal translation misses meaning and can offend.* **med**
- [ ] **Maps, borders, and territories were researched for disputed regions before display.** *A single "correct" border can offend whole audiences.* **med**
- [ ] **Local trust/communication norms are respected (plainer banking sites in Germany, real verifiable testimonials, full disclosure in Japan).** *Trust cues drive conversion and brand consideration.* **med**
- [ ] **Bandwidth-heavy assets are economical for constrained/pay-per-use markets.** *Infrastructure limits tolerance for video/Flash/heavy graphics.* **med**
- [ ] **Google Fonts / Google-API dependencies have a regional fallback** (blocked in mainland China). *Fonts silently fail to load otherwise.* **med**
- [ ] **A single coherent global strategy (One Product / Local Control / Global Template) is matched to its governance model.** *Ad-hoc per-market design yields incoherent brand and unmaintainable sprawl.* **med**
- [ ] **Sensitive idioms, icons, metaphors, colors, and predictive-text suggestions were audited** (e.g. "Israel" suggested on an Arabic keyboard). *Cultural defaults can be politically fraught.* **med**

## I. Process, baseline & testing

- [ ] **Accessibility/i18n was considered from kickoff, not bolted on at QA.** *Late fixes force design compromises and cost more.* **med**
- [ ] **The site favors one inclusive version over a separate "accessible"/text-only version.** *Separate is rarely equal and breaks on API change.* **med**
- [ ] **The baseline works with JavaScript and Flash disabled (progressive enhancement); no inline JS in content.** *Text browsers, locked-down terminals, some mobile and AT setups.* **high**
- [ ] **Nonstandard formats (PDF/Flash) are offered only as an alternative to an accessible HTML equivalent.** *HTML is the most universally usable path.* **med**
- [ ] **The design was validated with real users / local facilitators in their own environment in each key market — not just lab/focus groups, proxies (expats/students), or team intuition.** *Lab gets ~70–80%; proxy testing missed Gillette's real context.* **high**
- [ ] **Testing combines automated tools AND manual screen-reader/keyboard use.** *Tools can't make judgment calls (legit empty alt, illogical heading order).* **high**
- [ ] **Assumptions were documented, negated/challenged (Designated Dissenter, premortem), and converted into research questions before launch.** *Guards against groupthink, planning fallacy, and unexamined bias.* **med**
