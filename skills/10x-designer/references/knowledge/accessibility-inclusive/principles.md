# Accessibility & Inclusive Design — Principles

Deduplicated, cross-referenced principles synthesized from decades of established UX research and practice.

---

## Foundations & mindset

- **Design for the edges first; it benefits everyone (the curb-cut effect).** Bring the most-excluded user — disabled, distracted, stressed, low-literacy, second-language — to the center and design outward, the way "mobile first" forced focus. Accessibility is a superset of usability; fixing it improves the experience for all (closed captions on muted TVs, text directions born as blind-access).
- **Accessibility/i18n is a built-in practice, not a late QA checkpoint.** Considering it at kickoff yields a stronger product for everyone; bolting it on after launch is "a wooden ramp stuck on the side of a beautiful building" and forces design compromises. Internationalization is cheap built-in, expensive retrofitted. No "accessibility cops" at the end.
- **People first — know real, varied users; don't generalize from one.** People with disabilities (or from another culture) are people first, varied in ability, aptitude, and attitude. "We are not our users" applies hardest across cultures, where culture is "like the air you breathe" — invisible from inside.
- **Aim for one universal/inclusive version; a separate "accessible"/text-only version is separate-but-not-equal.** Universal design > equivalent use > accommodation (separate version), most-to-least desirable. Dependent third-party "accessible" versions break when the API changes (Easy Chirp vs. Twitter).
- **Form follows function — define the function before the form.** The web's two functions are communication (condition: *accessibility*) and interaction (condition: *functionality/operability*). Decide form only after function is honored.
- **Design is collaborative; designer and user share control — never seize the user's domain.** The user "redesigns" every page at view time (text size, colors, width, styles/images on-off). Don't override text size, link underlines, window size, cursor focus, new-window behavior, or auto-refresh — users can *implement* these themselves; imposing them leaves users who need the opposite no recourse. Forcing `target=_blank` breaks the Back-button strategy.
- **Make the business case in money, savings, or risk.** Inclusive/compassionate design wins support when framed as: makes money (new audiences, differentiation), saves money (lower support/call costs, higher retention — retention is 5–25× cheaper than acquisition; GDS projected £1.7–1.8B savings), or decreases risk (avoid backlash).

## Structure, semantics & code

- **Separate content from presentation; build for transformation.** Structured HTML + CSS so users can resize text, change colors/contrast, and reflow without breaking. Pages are dynamic, not posters — they must survive enlarged text, narrow/wide windows, custom colors, and styles-off. CSS Zen Garden proves one document supports many alternate views.
- **Mark up meaning, not appearance (semantic markup).** Tag what an element *is* (H1–H6, P, EM, STRONG, UL, lists, landmarks), not how it looks. Software derives titles, headings, citations only from structural tags. Use native HTML first, ARIA to fill gaps; never repurpose a semantic element for decoration.
- **Source/code order is reading order — design for linear access ("inverted pyramid").** Screen readers and keyboards traverse the DOM top-to-bottom regardless of CSS positioning. Put the most important content first (before nav); the unstyled source must read logically, like a printed version read aloud.
- **Build from a no-frills baseline up; layer enhancements separately (progressive enhancement).** Start with a site that fully works with no JavaScript, no Flash, and no mouse, then add slick presentation. Keep behavior layers out of content (no inline JS). Code for the floor, not the ceiling — don't assume current hardware/software/settings (a JAWS upgrade costs $800+, so many run old versions).
- **Favor real text and HTML over images-of-text, PDF, Flash.** Graphic text and Flash/PDF-only content can't be resized, restyled, machine-read, or recolored. Use nonstandard formats only as an alternative *to* an accessible HTML equivalent, never the only path.
- **Code to standards (valid, DOCTYPE).** Valid, standards-based markup gives predictable cross-browser/AT rendering and exposes structure to AT and search engines.

## Perception — never rely on a single channel

- **Never use color (or shape, size, location, sound) alone to convey meaning.** Always add a redundant cue: text label, icon shape, position, or line/fill style. Applies to status, charts, form errors, links, instructions, and audio cues (which need a visual equivalent / "visual bell"). ~350M people have color deficiency (~10% of men; ~5% of population). Check designs in grayscale.
- **Provide a text/sensory alternative for every non-text element.** Functional or descriptive alt for images (null `alt=""` for decorative), captions + transcript for audio, audio description for video visuals, NOFRAMES/NOSCRIPT fallbacks. Equivalent information must always be reachable.
- **Provide multiple ways to do things — no single solution works for everyone.** Multiple navigation paths (menu, search, sitemap), multiple cues (color + shape + text), and media alternatives. Diversity of need requires diversity of access.

## Operation — keyboard, motion, time

- **Every interaction must work without a mouse.** All functionality (links, buttons, forms, menus, media controls) must be keyboard-operable with logical tab order, visible focus, and no focus trap. Some users have no vision, use switches/voice, or have tremor. Submit/last actions go last in tab order.
- **Don't take actions users can already do themselves.** Don't autoplay media, force new windows, auto-advance carousels, auto-refresh, or autofocus. Respect the user's environment, settings, and browser controls.
- **Be generous and forgiving with time and input.** Warn before timeouts, allow extend/turn-off, auto-save/retain data on failure (rule of thumb: if 5 min suffices, allow ~15). Apply the Robustness Principle (Postel's Law) to humans — request only fields you truly need; accept the broad, messy range of real input rather than forcing rigid categories.

## Understanding — content & language

- **Plain language is accessibility for content; write to be skimmed.** Write so the audience can find, understand, and act; "plain" depends on audience, not grade level, and is not "dumbing down." Break into headed chunks, front-load keywords in headings/sentences/links, keep content current and links live. Creators overestimate audience reading ability (avg US adult ≈ 9th grade) — test with Flesch-Kincaid.
- **Under stress, users literally can't think.** Cognitive resources are finite; crisis or distraction depletes them. "Don't make me think" becomes "they can't think." Prioritize ruthlessly, use plain language, remove fluff. Lead sensitive topics with a few broad, inclusive categories, not many narrow ones.
- **Be consistent — same things presented the same way.** Keep navigation placement and component labeling consistent across pages; wayfinding (navigation + orientation) depends on predictable mental models. The "familiar" convention may be culture-specific, so validate it.
- **Design simply; restraint creates emphasis.** Just enough emphasis to guide, never so much it distracts; in a busy page nothing stands out. Sprawling multi-feature designs are harder for everyone (Remove, Organize, Hide, Displace).

## Compassion, bias & stress cases

- **Treat fringe situations as "stress cases," not "edge cases."** "Edge case" defines the boundaries of who you care about; a "stress case" is a real person under duress who urgently needs help. You don't decide when users arrive in crisis — they do. Every product has stress cases.
- **Compassion is empathy plus action, not "being nice."** Feel someone's struggle and be moved to help, even at the cost of your ego/agenda. Not coddling — you can still say no, but from kindness, not judgment. Humor/brand personality has a cost in stress contexts; lean on visual design for play, keep functional/touchy moments simple and neutral.
- **Surface and subvert your assumptions before shipping.** Every design encodes assumptions ("the user had a great year"); list them, negate each, and convert to research questions. Flag any "nobody would ever" as an UNSUBSTANTIATED ASSUMPTION. Use structured anti-groupthink tools (Designated Dissenter, premortem, question protocol) to manufacture an outside view.
- **Be intentional about every piece of data you request; communicate context and intent.** "That's what everyone asks" is not a reason — each field adds friction, erodes trust, creates risk and proxy-bias opportunities (salutation→gender). Tell users why you need data, how it's used, what stays private, and what will happen — especially before irreversible, public, or financial actions.
- **Match features to users' real priorities, not your imagined ones; frame by assets, not deficits.** Don't force users into a few preset "journeys"; omitting a need (e.g. period tracking) tells whole groups the product wasn't built for them. Asset-framing ("help landowners boost yields") centers agency; deficit-framing ("help poor farmers survive") others people.

## Cross-cultural & global

- **Never assume your users are WEIRD (Westernized, Educated, Industrialized, Rich, Developed).** Interfaces are cultural products, not neutral tools, and aesthetics ("clean grids, no decoration") are culturally constructed (Bauhaus-Western), not universal. Most of the global audience is none of these.
- **Think globally AND locally — design "multipoint," for each specific market.** Global thinking finds shared/universal needs (caring for kids, booking a hotel); local thinking digs into one culture. Design for shared structure first, then layer local variation — don't design for an abstract average.
- **Internationalize so it can go anywhere; localize to make it go somewhere.** i18n strips culture-specific attributes and externalizes strings/formats in code; l10n adapts copy, layout, imagery, formats for one locale. Do i18n in the architecture before l10n. Localization is more than translating words — match tone, idiom, detail-level, and formatting.
- **Find the differences that make a difference; culture lives in slow-changing layers.** Most cultural differences are texture; the skill is judging which actually affect *this* product (payment, reading direction, trust cues). Design for deep, slow layers (communication, trust, family roles) that "have all the power," not passing fashions (color trends, busy-vs-sparse pages). Nationality is a poor shorthand for culture.
- **Align taxonomy/IA and personas with the user's mental model, not your own.** Cultures organize content differently (thematic vs. functional; hierarchy vs. flat); high-power-distance audiences expect authority markers and deeper taxonomies. Build culturally flexible artifacts — challenge Western-name, "I"-voice, solo-device, individual-goal defaults; pair personas with intentional diverse imagery (text-only personas get filled with biased mental images).
- **The sender owes the receiver an explanation for every symbol.** It is never the user's job to decode an icon — icons are as abstract as the language they replace and are interpreted differently across cultures. Use type/icons designed by people from the target culture; never use stereotypography.
- **Research the actual context of use with real users / local facilitators, in their own environment.** A lab/focus group yields ~70–80% of usability answers but strips context; proxy testing (expats, students) misses reality (Gillette's MIT-tested Indian razor flopped). Same-culture facilitation surfaces more problems. Humanize findings (stories, photos, video, immersive reporting) so non-travelers connect; limit to ≤5 key implications.
- **Match the global design/governance model to the product.** One Product (Empire/central), Local Control (Confederation/franchise), or Global Template with Local Variations (Federation). Templates must be strong enough to work everywhere yet flexible enough to vary on local evidence. Mismatching strategy to product causes failures.
- **Design second-language (ESL) readers as a first-class case.** ~75% of the world speaks no English; only ~25% of users are native English speakers, yet 54% of top sites are English. Clear language, exposed structure, content-length cues, tooltips, and contextual help serve them — and everyone.

## Standards & frameworks (named)

- **WCAG 2.0 POUR** — Perceivable, Operable, Understandable, Robust; conformance A / AA (typical legal target) / AAA.
- **7 Principles of Universal Design** — Equitable Use; Flexibility in Use; Simple & Intuitive; Perceptible Information; Tolerance for Error; Low Physical Effort; Size & Space for Approach and Use.
- **Section 508 / ADA** — US legal accessibility obligations.
- **Hofstede's cultural dimensions** — Power Distance, Individualism/Collectivism, Masculinity/Femininity, Uncertainty Avoidance, Long/Short-Term Orientation; Indulgence/Restraint. A *comparison lens for nations, not facts about individuals* — "read it, put it back on the shelf, then do good listening."
- **Postel's Law / Robustness Principle** — Be conservative in what you ask, liberal in what you accept.
