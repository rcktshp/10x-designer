# Heuristics — mobile-responsive-web

Deduplicated "if X → problem Y → fix Z" critique rules. Merged across books; every supporting source cited.

## Layout & responsiveness

- **If** the outer layout uses a fixed pixel width (e.g. `width:960px`) **then** it forces horizontal scroll / clips content below that width and looks stranded on large monitors **because** the design is indifferent to viewport size — **fix:** express containers/columns as percentages (`target ÷ context`).
- **If** there's no `<meta name="viewport" content="width=device-width">` **then** mobile browsers render at ~980px and shrink-to-fit, defeating the small-screen layout — **fix:** add the viewport tag.
- **If** breakpoints chase "common device sizes" **then** layouts break on new devices **because** common sizes don't exist and the landscape changes constantly — **fix:** set breakpoints from content (expand until the layout breaks), consolidate near-duplicates.
- **If** the stylesheet starts from desktop using only `max-width` queries down **then** an @media/JS-blind browser gets the full desktop design crammed tiny **because** the default styles are desktop-centric — **fix:** invert to mobile-first `min-width`.
- **If** breakpoints/units are pixels throughout **then** layouts don't scale proportionally and resist zoom/maintenance — **fix:** use em/rem/% and em-based media queries (px ÷ 16); one base font-size change can then rescale the whole UI.
- **If** lines exceed ~75 chars on wide screens (or are painfully short at small widths) **then** reading is a chore / hierarchy breaks **because** no design scales beyond its origin context and proportional scaling preserves ratios but not appropriateness — **fix:** cap with `max-width`, re-column at breakpoints, or tune type/leading per range (comfortable measure 45–75 chars).
- **If** a single fluid layout is stretched across 320px and 768px+ **then** large screens waste space or look awkward **because** fluid stretch can't reorganize for 2.5× more space — **fix:** add breakpoints that reposition/resize/add/remove elements.
- **If** stacking multi-column content scatters related/important content far down **then** users go on a "scavenger hunt" **because** small screens flatten hierarchy — **fix:** apply content choreography (bunch-and-slide, flexbox `order`) or off-canvas.

## Images, media & performance

- **If** images lack a width constraint in a fluid container **then** they overflow and break the layout — **fix:** `img,embed,object,video { max-width:100%; }` (and `height:auto` if width/height attributes are set, else they squash).
- **If** desktop-size images are scaled down via CSS for small screens **then** mobile downloads oversized bytes **because** the browser fetches the full asset before scaling — **fix:** serve small assets by default; use `picture`/`srcset`+`sizes` (art direction + resolution), one request each.
- **If** content is "hidden" with `display:none` for small screens **then** users still download it ("dark matter") **because** hidden elements/images are still parsed and fetched — **fix:** conditional-load / lazy-load; don't ship desktop weight to mobile; audit with a HAR waterfall.
- **If** a responsive "mobile view" weighs roughly the same as desktop **then** RWD is hiding, not reducing, weight — **fix:** serve right-sized images, conditional loading / RESS, no `display:none` dark matter.
- **If** a page loads 30–40 images or an unbounded comment list **then** load time balloons and users abandon **because** each asset is an HTTP request — **fix:** paginate to ~6–10 per screen with "Load/Show More" (measured: pagination ~halves load time).
- **If** a `<script>` sits in `<head>`/mid-body without async/defer **then** it blocks parsing/rendering/downloads — **fix:** move scripts above `</body>`, or use `defer`/`async`.
- **If** a big JS library (jQuery/MooTools) is imported for selectors or simple effects **then** it drains battery and blocks rendering on mobile — **fix:** micro-frameworks (Zepto) or vanilla JS.
- **If** styles are mutated property-by-property in JS **then** each change triggers a reflow — **fix:** swap one class; batch DOM inserts via document fragment.
- **If** the page relies on parallax, heavy AJAX, or carousels **then** it stalls/breaks on many mobile browsers — **fix:** choose the effect OR mobile support, not both; rebuild for mobile.
- **If** the page is heavy with image-text where HTML+CSS would do **then** it hogs bandwidth and excludes search/AT **because** raster text doesn't reflow or render crisply — **fix:** real text / web fonts / SVG; reuse cached chrome across pages.

## Touch targets & interaction

- **If** touch targets are below the size minimum (~10mm/1cm, 44×44pt, or ~9mm where mistaps are costly) or spaced <2mm apart **then** users mis-tap and accidentally activate the wrong control **because** finger pads are 10–14mm and imprecise — **fix:** enlarge targets, make whole rows/tiles tappable, add airy spacing (closer buttons must be bigger).
- **If** the touch area equals only the visible glyph/icon **then** edge-of-target misses fail **because** users perceive a larger target than rendered (centroid/parallax) — **fix:** make the hit-area ≥ the visual target, filling gutter whitespace.
- **If** primary controls/navigation sit only at the top of a phone screen **then** they're outside the one-handed thumb zone — **fix:** phone app → pin to bottom; Android app → top (OS owns the bottom); tablet → top corners/sides; mobile web → footer anchor (top Menu link jumping to bottom nav).
- **If** destructive actions (Delete/Cancel) sit in the easy thumb zone **then** accidental destructive taps happen — **fix:** place destructive actions in the hard-to-reach corner.
- **If** the nav bar is fixed to the bottom of a mobile *web* page **then** it collides with browser chrome / device buttons — **fix:** fix menus to the top on web.
- **If** interactions rely on `:hover` **then** they fail on touch **because** there's no hover state — **fix:** surface the content/action on screen, behind a tap/swipe, or on a separate screen; provide explicit press/active states; keep `:hover`/`:focus` for indirect-manipulation devices.
- **If** an action requires an obscure gesture (long-press-and-slide) with no affordance, or a gesture is reused for two meanings **then** it's undiscoverable / erratic **because** gestures are ephemeral with no visual cue — **fix:** use a simple tap on a more/ellipsis or inline action; teach non-obvious gestures contextually and build on familiar ones; always provide a visible fallback path; one gesture = one action.
- **If** an element looks swipeable/tappable but isn't (or a flat screen gives no affordance) **then** users miss controls or mistake commands for labels — **fix:** match affordances to behavior; in flat design work harder on hierarchy/contrast so tappable ≠ static.
- **If** a skeuomorphic UI "looks like" a physical object but doesn't "act like" it **then** it misleads/frustrates and wastes pixels/bandwidth — **fix:** only adopt a metaphor you can fully support; otherwise go authentically digital, content-led.
- **If** feedback is small enough to be covered by the finger, or response lags **then** users can't tell if the action registered **because** the finger occludes the target — **fix:** show feedback around the finger; keep response snappy (swap WebKit's 300ms onclick for touch events).
- **If** transitions are abrupt/missing or over-the-top ("animation zazz") or every element animates **then** the UI feels disjointed/distracting **because** motion loses meaning when ubiquitous — **fix:** apply staging/slow-in-out/timing with restraint; keep durations ~0.2–0.3s; tie motion to content meaning.

## Navigation & IA

- **If** a mobile screen leads with a stack of nav bars (3–5) before any content **then** content is buried and only one item is visible **because** chrome eats scarce vertical space — **fix:** lead with content; cut nav count; one menu entry point.
- **If** the full desktop menu (dozens of options) is ported to mobile **then** it overwhelms and obscures core tasks — **fix:** distill to the handful of actions people actually do (Flickr 60+→6).
- **If** primary navigation hides categories behind unlabeled icons **then** "mystery meat" forces users to tap each to discover it — **fix:** add text labels or a labeled list/tab pattern.
- **If** the selected/active nav item isn't visually distinct (or action buttons overshadow it) **then** users can't tell where they are — **fix:** make the active state conspicuous and distinct from actions.
- **If** there's no "you are here" cue or nav location/metaphor changes between screens **then** users feel lost or think they've hit a different site **because** consistency is what keeps a learned interface working — **fix:** highlight the current section / breadcrumbs; keep nav in one fixed place site-wide.
- **If** the top-level menu offers more than ~5 choices, or content is buried >3 clicks deep **then** decision cost rises and users abandon — **fix:** group into 3–5 areas (Rule of Five); structure so the destination is reached/reassured within ~3 clicks. _(Era heuristics, use judgment.)_
- **If** the same command/gesture produces different results in different spots (overloaded) — multiple search fields, multiple "Home"s, Back meaning both undo and up **then** users issue the wrong action — **fix:** one official Home, consistent Back semantics, single search; prefer generic commands.
- **If** a side drawer/tray covers the full screen width or sits at the bottom **then** users lose their anchor or it conflicts with OS gestures — **fix:** size trays to 60–70% width (leave 30–40% visible), place on left/right, never require scrolling a primary menu.
- **If** a list/detail "Back" skips levels (C→A) **then** users get disoriented — **fix:** return exactly one level; limit nesting to 2–3 levels.
- **If** a swipe/paging nav has no page indicators or off-screen peek **then** users won't know to swipe **because** text prompts don't entice swipes — **fix:** add page dots, partial off-screen content, or a bump animation; show visible peek/arrows for hidden content.
- **If** rows of equal-weight same-size buttons ("Oceans of Buttons") appear **then** users must read every one **because** nothing signals primary vs. secondary — **fix:** use OS page-action controls (Action Bar/Toolbar) and tuck secondary actions under More/Overflow.
- **If** a long list/menu is alphabetical (or by org chart) when users don't know the exact name **then** they can't locate items **because** A–Z hides meaningful logic — **fix:** group by task category / natural order; reserve A–Z for unambiguous known-item lookup.
- **If** an article is split into linear "Next page" loads **then** users wait per page and can't jump/return easily — **fix:** one scrollable page, or chunked, directly-navigable, described units.

## Content & comprehension

- **If** a phone is served the full desktop site (multi-column, full chrome/features) **then** users scroll/zoom excessively, lose context, and fail tasks **because** desktop layouts bloat on a small viewport — **fix:** serve a mobile-optimized experience; single-column, cut features, link to full site for rare needs.
- **If** the design is a pixel-for-pixel scaled desktop clone **then** it's unusable on touch and ignores context **because** consistent ≠ identical — **fix:** optimize layout, touch, and form factor per device.
- **If** headlines/product names/labels are truncated or wrap **then** users can't disambiguate items **because** the visible prefix isn't enough scent (11 products all start "Blendtec") — **fix:** show full names, front-load the distinguishing keyword; ensure key labels fit (single-ellipsis truncation only on list/table descriptive text).
- **If** the screen has high information density / many simultaneous options **then** it overloads working memory in a distracting context (~3 visual objects held at once) — **fix:** one big idea per screen, low density, edit to essentials.
- **If** a flow runs more than ~3–4 screens **then** it's too long for one mobile sitting (~17 min avg) — **fix:** break into named sub-actions ("Add to cart" then "Checkout").
- **If** body text is all caps, on a patterned background, or below 3:1 contrast **then** legibility drops (~10% slower for caps; ISO 9241-3 floor 3:1) — **fix:** mixed case, plain background, target ≥10:1 contrast, mobile-suitable face (x-height 65–80% of cap height).
- **If** a page hides almost all info behind taps (near-empty first screen) **then** rushed users won't dig and leave — **fix:** put essential scannable info on the first screen; defer only genuinely secondary content (progressive disclosure).
- **If** a page ends in a dead end with no next step **then** the mobile flow fails — **fix:** every screen offers a clear primary action and a next step (share/save/buy).

## Forms & onboarding

- **If** the first screen/run demands registration, account creation, permission, or a manual before value **then** users abandon permanently **because** commitment is near zero — **fix:** dump users into useful content; let them act/save locally; ask for commitment at the natural moment (checkout) and explain why.
- **If** first launch fires a chain of dialogs (rate, location, push) **then** users are blocked before engaging (and may rate it zero) — **fix:** request permissions in context when needed; defer rating prompts until after real use; on iOS use an explicit "Use My Location" button (a denied permission can't be re-requested).
- **If** a form asks more than necessary or has redundant Confirm-Email/Password **then** completion drops **because** typing is costly on mobile — **fix:** trim brutally; prefill smart defaults (~4× faster), compute values (state from ZIP), import/scan, type-ahead.
- **If** login/form inputs aren't in the top half of the screen **then** the keyboard hides them and forces scrolling **because** it covers ~half the screen — **fix:** keep titles, inputs, and the primary button above the keyboard.
- **If** form labels are left/right-aligned beside fields, or horizontally aligned, on a phone **then** there's no room and labels vanish under the keyboard — **fix:** top-align (or persistent in-field/Float Label) labels; stack on small screens; `box-sizing:border-box` for fluid fields with fixed padding.
- **If** a placeholder is the only label **then** it disappears on focus / when filled and may be mistaken for a pre-filled answer **because** `placeholder` is a hint, not a label — **fix:** keep a real visible `<label for>`.
- **If** `type="text"` is used where a specific input type fits **then** you lose the right keyboard, native widget, and free validation — **fix:** use `email`/`tel`/`url`/`number`/`date`/`range`/`search`/`color`; disable autocapitalize/autocorrect on case-sensitive fields; falls back to text safely.
- **If** a form uses many `select` menus (e.g. 3 for a date) **then** input takes excessive taps (~4 each) — **fix:** touch-optimized controls (spinner/date picker), one numeric field; move long option lists to a full-screen selection page.
- **If** field requirements (password rules) are revealed only post-submit, or errors appear as a modal covering the field **then** users hit avoidable errors and can't see what to fix — **fix:** state requirements up front, inline real-time validation, plain-language inline errors with a constructive fix.
- **If** an irreversible action lacks confirmation OR a reversible/trivial action (add to cart, sign out) pops a confirmation **then** feedback is mismatched to risk — **fix:** confirm only irreparable actions (empty trash, not archive); use undo/toast/inline feedback otherwise (consider swipe-to-delete as proof of intent).
- **If** credentials aren't saved locally **then** returning users must re-login each visit — **fix:** store session; expose a visible sign-up path; offer SSO/social login; pair clear labels ("Sign up" + "Log in").
- **If** an onboarding tour frontloads many features/overlays **then** users feel overwhelmed and skip it **because** over half of dialog/tour/transparency patterns test poorly — **fix:** show don't tell, bite-size in-context learn-by-doing, skippable and re-accessible (the "Tip" pattern).

## Platform & markup

- **If** the design ports one platform's UI to another (iOS back buttons/tab bars/icons on Android, etc.) **then** it feels foreign and hurts adoption/ratings **because** it violates platform conventions — **fix:** adopt the target OS's patterns (Android hardware back, top tabs, native icons) while keeping product essence.
- **If** the design assumes Android hardware buttons or uses inherited skin tab/list colors **then** it breaks on devices lacking buttons / UI vanishes on Samsung/HTC skins — **fix:** on-screen action bars; custom controls with explicit colors.
- **If** structural elements (`aside`/`header`/`footer`/`section`) are chosen by visual position, or `div`s are swapped wholesale for HTML5 elements just to "use HTML5," or a `section` has no heading **then** semantics are wrong/empty — **fix:** choose by content role; keep `div` for pure styling; use `div` if a section has no natural heading.
- **If** `audio`/`video` uses `autoplay`/`loop`, or a transcript/caption sits *inside* the media tags **then** it hijacks attention/bandwidth and real users never see the transcript **because** that slot is fallback-only — **fix:** drop autoplay, provide `controls`, `preload="none"`; put transcripts in the visible DOM, captions via WebVTT `<track>`.
- **If** a `picture` has no trailing `<img>` fallback, or `canvas` content has no accessible equivalent **then** non-supporting browsers/AT get nothing **because** `canvas` has no DOM — **fix:** always end `picture` with `<img src alt>`; drive `canvas` from accessible source/sub-DOM.
- **If** advanced CSS (RGBA, gradient, multiple-bg) is declared with no preceding solid fallback, or used on the critical layer (branding/usability/layout) **then** older browsers render nothing or the core message breaks — **fix:** declare a plain fallback *before* the advanced rule; confine in-flux features to the non-critical experience layer.
- **If** restyled inputs/buttons no longer read as their control type, or lose the native focus ring, or `transition`/enhancements live only on `:hover` **then** usability and keyboard access suffer — **fix:** preserve recognizable affordance; supply a custom `:focus` indicator; declare transitions on the base selector and pair `:hover` with `:focus`.
- **If** boxes/inputs with percentage widths also have padding/border **then** they overflow (100%+24px) — **fix:** `box-sizing:border-box`.
- **If** images carry no meaningful ALT and frames/JS are the only nav, or body text is image-baked / set tiny / serif at small sizes **then** blind users, text browsers, and many ordinary users are locked out — **fix:** descriptive ALT, non-JS/non-graphical fallbacks, resizable real HTML text, sans-serif at screen sizes.

## Multi-device & data

- **If** RWD is treated as a universal mobile solution / a substitute for mobile strategy **then** context-specific needs go unmet **because** RWD changes presentation, not content priority, and collapses everything to screen size — **fix:** reprioritize/edit content for the mobile context; add continuous/complementary approaches where contexts differ.
- **If** a long activity works fully only on one device or doesn't sync state **then** users are stranded across context/device changes — **fix:** sync progress/bookmarks so any device resumes (continuous "pass the baton"); communicate the cross-device value at first-run/store/contextual moments.
- **If** a feature is offered identically on every device "to be safe" **then** clutter rises and device roles blur — **fix:** gatekeep features to the device best suited to each context; prioritize the primary use case across devices.
- **If** a cloud-dependent feature has no offline/degraded state **then** it fails on spotty networks — **fix:** plan non-network fallback (HTML5 app cache, local fallback).
- **If** a data table is forced unchanged onto a small screen, keeps heavy/dark gridlines, or misaligns columns **then** it breaks / is hard to scan **because** a table's meaning is tied to its 2-D presentation — **fix:** priority columns + filter, horizontal overflow (optionally dock first column), definition-list or chart conversion; drop dark/vertical gridlines but keep columns aligned (text left, numbers right); add affordance for off-screen columns.
- **If** a chart carries chart junk (3D, decorative gridlines, misleading color) or lacks title/labeled axes **then** comprehension is destroyed — **fix:** title + labeled axes + data only; color must not imply false correlation.
- **If** an info-rich graphic (infographic) is merely scaled/cropped to fit **then** it becomes illegible **because** scaling is content-blind — **fix:** serve a linearized/alternate variant per range.
- **If** auto-complete is missing on an explicit search field, or results are paginated / lack sort/filter / hide active filters **then** users can't find or refine results — **fix:** narrowing suggestions as typed; lazy-load results with counts, a default sort, sort/filter controls; keep results glimpsed and active filters flagged when a filter drawer is open.

## Process

- **If** the design was only tested by resizing a desktop browser window (or on emulators/paper) **then** touch, density, type size, performance, and device-browser quirks are unverified — **fix:** test on actual target devices early and often; image-prototype on the real device.
- **If** wireframes are shown to clients as if they were visual design, or one deliverable carries content+layout+interaction+behavior **then** feedback derails and projects stall — **fix:** give each deliverable one stated purpose; preface what a wireframe is/isn't; validate interaction via prototype, not debate over static comps.

## Era-specific (legacy targets only — use judgment)

- **If** large color fields/type/backgrounds use non-web-safe colors, or gradients are tuned on a Mac **then** they dither on 8-bit displays / look like "mud" on PC gamma (~2.2 vs Mac 1.8) — **fix:** keep large flat areas web-safe; calibrate to sRGB.
