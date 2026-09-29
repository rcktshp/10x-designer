# Principles — mobile-responsive-web

Deduplicated, timeless principles. Each cites every source that asserts it. Strongest phrasing kept; named laws and concrete numbers preserved.

## Strategy & medium

- **Embrace the web's flexibility; the viewport is the canvas, not a fixed page.** The web reflows across monitor sizes, resolutions, fonts, and devices. Fixed pixel widths are a borrowed print habit that breaks for most users. Design for ebb and flow.

- **Responsive design = flexible grid + flexible images/media + media queries — all three, on a fluid foundation, as the default starting point.** None alone suffices ("media queries alone do not a responsive design make"). Layer media queries on a fluid base (less code, graceful fallback, future-proof), never on a fixed one. RWD can't be retrofitted late because it forces a units rethink (px → em/rem/%).

- **Mobile-first: design and code the smallest screen first, then progressively enhance upward with `min-width` queries.** The shrunken canvas is an editor that forces ruthless prioritization; enrich for ALL users as space grows; the absence of @media support is itself the first media query. Designing down from desktop drops features; designing up forces focus.

- **Constraints produce better design.** "Design is the process of gradually applying constraints until an elegant solution remains." Small screens, spotty networks, and partial attention force teams to cut interface debris and keep only what matters. Reduction is the best layout strategy.

- **Prioritize, don't dumb down — mobile users will do anything desktop users will, if presented usably.** Never strip core content/features on the assumption mobile users want less; hiding content because it "won't fit" ("hide 'n' cry") penalizes a growing audience. Content over navigation: lead with the answer, not the sitemap.

- **Don't infer user context from device class.** "Mobile" does not reliably mean "on the go, wants less" — much mobile use is stationary at home. Research how/where/why your audience actually uses the product; design for partial attention and interruption ("snorkeling, not scuba").

- **Desktop ≠ mobile: design distinct-but-coherent experiences per device, never a port.** Great mobile products are created, never ported. Optimize layout, touch, and form factor per device while keeping core functionality, IA, and visual language consistent ("different but similar" / transmedia / consistent ≠ identical).

- **Start from user needs and context, then pick devices and approach — never start with the tech.** Answer (1) needs/goals, (2) flows/contexts, (3) which approach fits, (4) which device plays which role — in that order. Distinguish the *need* ("I need to communicate") from inherited *solutions* (email); needs unlock invention. Devices are the means, not the end.

- **Design ecosystems and through-lines across devices; sync state to "pass the baton."** A product lives across phone/tablet/PC/TV (+IoT); value comes from how devices are used *together*. Long activities must sync progress/bookmarks so any device resumes seamlessly, and the cross-device value must be actively communicated (first-run, store copy, contextual cues) because ecosystem relationships are invisible.

## Performance

- **Performance is a design constraint, owned from day one — speed is king.** No mobile experience is usable unless fast; a frustrated mobile user quits in under a second. Latency, not bandwidth, is the mobile killer (~200ms/request on 3G vs ~20ms on cable; the same RWD markup loads ~10× slower on 3G). Send less: minify/concatenate, fewer requests, lean on CSS over images, cache, prefer micro-frameworks/vanilla JS over heavy libraries.

- **`display:none` does not save weight — it is "dark matter."** Hidden elements (and `<img>` inside them) are still parsed and downloaded, costing requests and latency invisibly. Hiding is not the same as not loading; serve appropriately sized assets and use conditional loading / RESS / responsive images instead.

## Touch & interaction

- **Go big: touch targets must be finger-sized, not cursor-sized, and well spaced.** Fingers are imprecise (pads 10–14mm, fingertips 8–10mm; MIT Touch Lab). Shrinking controls to fit a small screen is the wrong instinct — enlarge and space them. The whole row/tile can be the target; the touch hit-area may exceed the visible glyph. _Concrete thresholds (preserved):_ ~10mm/1cm square minimum (across major usability studies); 44×44pt (iOS HIG; ~7mm); 9mm/50px where a mistap is costly; ≥2mm spacing; 20–40px padding around sliders/switches; bump to 9mm for >2-gesture/>5s/major-undo costs.

- **Place primary controls in the thumb zone; "content on top, controls on bottom."** Controls must never sit above the content they affect (the hand obscures the screen). Phone one-handed grip → bottom; Android app → top (OS owns the bottom); tablet → side/top corners (gripped at the sides); mobile web → footer anchor (top Menu link jumping to nav at page bottom, since web pages can't reserve bottom space).

- **Input type and grip — not screen size — drive control placement and sizing; assume every screen is a touchscreen.** Large tablets and hybrids break "small=touch, big=mouse." Design every interface finger-friendly.

- **Make content the interface; prefer direct manipulation over buttons; strip chrome.** Buttons are a hack — a skeuomorphic middleman from the mouse era — let primary content act as the control (NUI: "what you do is what you get"). Reserve buttons for abstract actions; offer gestures as supplements. Spend scarce pixels on content, not decorative chrome ("content, not chrome" — Metro).

- **Hover does not exist on touch — never depend on it.** Move hover-revealed content/actions onto the screen, behind a tap/swipe, onto a separate screen, or remove it; provide explicit press/active states. Still define `:hover`/`:focus` for indirect-manipulation (keyboard/trackball) devices.

- **Perceived affordance and discoverability beat clever gestures; tappable must look tappable.** Recognition-based input (gestures, voice) is ephemeral, low-discoverability, low-memorability, error-prone (even 99% recognition feels unreliable). Provide a redundant visible path to every feature; reserve novel gestures for the most frequent actions and teach them contextually (game-derived coaching / leveling up / power-ups; build new gestures on familiar ones, e.g. pull-to-refresh extends swipe-to-scroll). Make buttons look like buttons — subtlety fails on mobile, and flat design weakens affordance.

- **Design symmetrical, consistent interactions; one gesture = one action.** Whatever gesture opens a menu also closes it, in the same place. Keep navigation consistent screen-to-screen; don't reuse a gesture for two meanings (swipe ambiguity). Prefer generic commands (same action → conceptually same result everywhere, e.g. pinch-zoom, one Back/Home) over overloaded commands (same action → different results); distinguish "Back as undo" from "Back as up."

- **Motion should be subtle, purposeful, and meaning-bearing — supporting, never starring.** Effects are easy to overdo into "an annoying, pulsating monster"; motion must reinforce content meaning and stay short (~0.2–0.3s for feedback). Disney's 12 animation principles (staging, slow-in/out, arcs, timing) apply to transitions and help ground anchorless NUIs.

## Content, IA & navigation

- **Defer secondary info to secondary screens (progressive disclosure); structure by users' tasks, not org chart or A–Z.** First screen ruthlessly focused on the top point; "more" on demand. Order by task logic / natural order (size, difficulty, category); reserve alphabetical only for unambiguous known-item lookups. Keep mobile IA shallower than desktop; deliver bite-sized linear stories (mobile sessions ~17 min vs ~39 min desktop).

- **Reading comprehension is ~twice as hard on a small screen — write concise, scannable, front-loaded text.** Complex content scored 18.9% comprehension on mobile vs 39.2% on desktop. Use bullets, front-loaded keywords, true summaries, full (untruncated) headlines/names; chunk long copy with white space. Keep line length ~45–75 chars (45–65 is comfortable; never near 120); cap fluid width or tune type per breakpoint.

- **Every page is actionable; no dead ends — and every screen has one clear primary action.** A good mobile flow always offers a next step (share/save/buy/check-in). Design with intent: navigation looks like navigation, the primary action is unambiguous.

- **Design from a grid + reusable templates/components, not pages.** It's impossible to mock every device/viewport/setting permutation. Define one grid (margins, alignment) and modular atoms (buttons, nav, cards, tables) once, assembled into layouts the environment determines; content lives in databases, not screens. Layout hierarchy: Position → Size → Shape → Contrast → Color → Form. Every element must justify its space.

- **Set breakpoints from content, not device dimensions.** Start with a fluid layout, start small, and expand until the layout looks like shit — time to insert a breakpoint. No design — fixed or fluid — scales well beyond the context it was designed for; chasing "common device sizes" is a losing game (they don't exist and change constantly). Consolidate near-duplicate breakpoints.

## Forms & input

- **Don't take before you give: don't force registration/permissions/manuals before showing value ("Let Them Pee").** Commitment is near zero on a freshly downloaded app/site; up-front demands cause permanent abandonment. Dump users into real content/products; let them act and save locally (guest/session token); ask for commitment only at the natural moment (e.g. checkout).

- **Ruthlessly minimize fields; embrace input as opportunity, not something to avoid.** Every extra field lowers conversion; cut redundant Confirm-Email/Password. Then make input *easy*: smart defaults (~4× faster than empty), prefill/compute known values (state from ZIP, card type from number), import from contacts, scan card, type-ahead, and use device capabilities (camera, voice, GPS, NFC, QR) — natural mobile inputs over the keyboard. Preserve user-entered data on error/interruption/connection loss.

- **Keep form labels visible above the virtual keyboard; placeholder is a hint, not a label.** The keyboard covers ~half the screen — top-align labels (or persistent in-field labels / Float Label) and keep inputs + primary button in the top half. A placeholder-only label disappears on focus and can be mistaken for a pre-filled answer. Long forms beat artificial pagination; if steps are needed, show "step X of N" subtly. Use correct HTML5 input types (`email`/`tel`/`url`/`number`) to summon the right keyboard and free validation; disable autocapitalize/autocorrect on case-sensitive fields; validate on the server too.

## Platform, conventions & standards

- **Follow OS conventions: "whatever the OS does, do that"; don't port one platform's UI to another.** iOS, Android, and Windows Phone each have distinct guidelines (Tab Bar/Toolbar; Action Bar/Up/Overflow; App Bar/Pivot). A great iOS design is suboptimal on Android. Match platform conventions even when imperfect, because that's what the user expects (Jakob's Law); keep your product essence consistent. Don't override native browser/OS controls just because yours "look better" — "the web is about reach, not control."

- **Progressive enhancement / graceful degradation by default; build on a semantic foundation.** Make core content and function work everywhere, then layer richer experiences for capable browsers; everything falls back to a usable baseline. Provide a solid fallback *before* the enhanced rule (RGBA, gradients, `picture`'s trailing `<img>`). Confine advanced/unevenly-supported CSS to the non-critical "experience layer" (interaction, feedback, motion), never the critical layer (branding, usability, accessibility, layout).

- **Detect features, not browsers — but on mobile, server-side detection is a "necessary evil."** Test for capability (Modernizr) rather than sniffing named browsers; future-proof as browsers go evergreen. Caveat (mobile): feature detection gives false positives and can't detect e.g. a hardware Back button, so RESS / server-side detection (WURFL/DeviceAtlas) is sometimes warranted. Adopt a feature when the browsers your visitors actually use support it, not when the spec is "done."

- **Choose semantics by meaning, not appearance; prefer declarative markup and real text over images.** Pick `header`/`footer`/`aside`/`section`/`article` by content role (a sidebar isn't automatically an `aside`); each `section` needs a heading. Move common JS patterns into native HTML attributes/types. Real HTML/CSS text downloads faster, is resizable, indexable, and accessible — avoid text baked into images (inaccessible, unsearchable, fuzzy on Retina, scales illegibly in fluid layouts).

- **Set `<meta name="viewport" content="width=device-width">`.** Without it, mobile browsers assume a ~980px desktop layout and shrink the page, defeating any small-screen design.

- **Accessibility is mandatory and the web's mandate is universal access.** Provide text alternatives (meaningful ALT, captions/transcripts in the visible DOM not as fallback content, accessible `canvas` source), resizable text, keyboard/focus states, and non-graphical/non-JS navigation paths. Legally actionable (Section 508). Don't break familiar control affordances or remove native focus indicators.

## Process

- **Be on the real device; prototype early, cheap, and disposable; test repeatedly.** Simulators, desktop browsers, and window-resizing don't reveal touch, density, type size, performance, or device-browser quirks. A prototype is about feedback, not technology — keep it fast and throwaway (avoid the "prototype trap"). A design is a hypothesis; validate interaction in the medium where interaction happens (HTML/prototype), don't debate it over static comps.

- **Every design deliverable has ONE stated purpose.** State what a wireframe/comp/prototype communicates AND what it doesn't. Overloaded deliverables bloat, confuse critique, and stall projects (and grayscale wireframes get mistaken for visual design). Build mobile collaboratively and continuously — RWD kills the waterfall, since a single button change ripples across UX, design, and dev.
