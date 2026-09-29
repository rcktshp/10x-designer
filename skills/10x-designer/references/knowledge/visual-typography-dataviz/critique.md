# Visual, Typography & Data-Viz — Critique Checklist

Self-contained, scoreable checklist for an external design-review tool. Each item: **check** (binary unless noted), **why it matters**, **severity** (high/med/low). Grouped by domain; apply only the groups relevant to the artifact.

## 1. Typography & reading
- [ ] **Body text is mixed-case** (not ALL CAPS or all-italic) for legible word shapes. — Caps/italic runs slow reading to letter-by-letter. _Severity: high._
- [ ] **Line length (measure) is ~45–78 characters**, never past ~90. — Too-long loses the next line; too-short fractures rhythm. _Severity: high._
- [ ] **Leading (line-height) is visibly greater than word spacing.** — Otherwise the eye drops to the line below mid-line. _Severity: high._
- [ ] **Heading/body sizes follow a coherent modular scale** (related by ratio). — Harmonious vs. clashing hierarchy. _Severity: med._
- [ ] **Contrasts are strong, not "sort-of" different** (weight, size, rule thickness, color value). — Near-sameness reads as conflict/mistake. _Severity: high._
- [ ] **Combined typefaces come from different categories** and the difference is reinforced across multiple axes (size + weight + form + structure). — Same-category faces conflict via shared structure; one axis (serif vs. sans) alone is too weak. _Severity: high._
- [ ] **Body typeface is a familiar, self-effacing form** (Oldstyle/low-contrast slab), not an eccentric or radical-contrast display face. — Idiosyncratic letterforms sabotage sustained reading. _Severity: high._
- [ ] **Reversed-out / light-on-dark text uses a lighter optical weight** (plus more leading/tracking) than its dark-on-light equivalent. — White type and ink/pixel spread make it look too heavy and fill counters. _Severity: med._
- [ ] **Confusable glyphs (1/l/I, 0/O) are disambiguated** in numerals, forms, signage, and code. — Misreads can be costly or dangerous (DIN 1450). _Severity: high._
- [ ] **Numeric tables use tabular (equal-width) lining figures** with aligned decimals/commas/currency. — Misaligned columns are unreadable and error-prone. _Severity: high._
- [ ] **Correct glyphs throughout:** curly quotes/apostrophes (no straight " '), en dash for ranges, em dash for breaks, ellipsis character, one space after punctuation. — Marks craft; the classic amateur tells. _Severity: low._
- [ ] **Emphasis uses italic/bold/size/color, never underline.** — Underline is a typewriter holdover. _Severity: med._
- [ ] **Paragraph indents are one em (≈2 spaces), indent OR space-between but not both, no indent on first paragraphs.** — ½-inch indents and doubled cues look unprofessional. _Severity: low._
- [ ] **No widows or orphans** (last line under ~7 chars; stranded line at column top/bottom). — Stranded text breaks flow and looks unfinished. _Severity: low._
- [ ] **Lowercase running text is not tracked/letterspaced open.** — Open tracking on lowercase degrades word recognition. _Severity: med._
- [ ] **Kerning handled for gappy pairs** (To, Ve, Wo, 7. etc.), especially at large sizes. — Uneven spacing draws the eye and degrades reading. _Severity: low._
- [ ] **Extended-reading body size is within ~9–14pt** (adjusted for x-height). — Outside this band sustained reading suffers. _Severity: med._
- [ ] **If justified, text "color" is even** (no rivers, no alternately loose/tight lines). — Erratic spacing implies false emphasis. _Severity: med._
- [ ] **Spacing (word/line/letter) scales with line length** (longer = looser). — Keeps reading rhythm even. _Severity: med._
- [ ] **Screen/web type is engineered for screen** (hinting, contrast, weight) below ~14px, not an auto-converted print font. — Poor small-size rendering hurts legibility. _Severity: med._
- [ ] **Typeface tone matches the message's emotion and brand voice.** — Type speaks before the words; a mismatch misleads. _Severity: med._

## 2. Layout, composition & whitespace
- [ ] **Related items are grouped into clear visual units** (≤3–5 by squint-and-count), unrelated items separated by more space. — Proximity organizes information and creates a reading path. _Severity: high._
- [ ] **Exactly one text alignment per page** (all flush-left OR right OR centered). — Mixed alignments are the biggest cause of an amateurish look. _Severity: high._
- [ ] **Every element shares a visual alignment** (edge / invisible line) with another. — Alignment unifies the page; "a little bit" off reads as a mistake. _Severity: high._
- [ ] **At least one deliberate repeated element** (font/color/rule/spacing) ties the piece together and is consistent across all pages of a multi-page piece. — Repetition creates unity and signals "one publication." _Severity: high._
- [ ] **One strong focal point and a clear hierarchy** (most important info gets most space, placed first). — Without it the eye has no entry; "if everything is large, nothing grabs attention." _Severity: high._
- [ ] **Layout sits on an explicit grid** derived from a real constraint (resolution, ad unit, image, or type size), simple enough to apply consistently. — Relational coherence vs. arbitrary placement; over-complex grids get abandoned. _Severity: high._
- [ ] **Whitespace is intentional and untrapped** (more space above a heading than below; straight edges abut straight, not ragged). — Trapped whitespace pushes elements apart and looks messy. _Severity: med._
- [ ] **At least one key element is deliberately emphasised** (nudged off-grid / given surrounding space); the grid isn't perfectly even/symmetric. — A perfectly even grid hides what matters. _Severity: med._
- [ ] **Focal subjects placed off-center (Rule of Thirds)**, not dead-center with bisecting lines; correct Looking Room on imagery. — Centering is static; wrong lead-room pulls the eye off content. _Severity: med._
- [ ] **Adjacent repeated elements (cards/promos/panels) are differentiated** in size, crop, or placement. — Uniformity makes content overlooked. _Severity: med._
- [ ] **Foreground subject is separated from background** (line weight/contrast, no tangents). — Equal weight / tangents obscure the focal point. _Severity: med._
- [ ] **Design degrades gracefully** (200% text, JS off, wrong-size image, old browser). — On the web the user controls content. _Severity: high._

## 3. Color
- [ ] **Design still reads and functions in pure greyscale.** — Proves it doesn't depend on color (accessibility + robustness). _Severity: high._
- [ ] **Palette has a clear dominant, subordinate, and accent role.** — Focus and visual story; all-competing palettes have none. _Severity: med._
- [ ] **Color contrast is strong enough to register** (no near-tone accent on near-tone text). — Too-close values don't read. _Severity: med._
- [ ] **Warm/cool colors use unequal area** (less warm, more cool); tones varied, not muddy. — Warm advances and dominates at equal weight; harmony needs tonal variety. _Severity: med._
- [ ] **Color choices fit the audience's cultural associations.** — Wrong meaning can be disastrous/offensive. _Severity: med._
- [ ] **Correct color model for the medium** (RGB/72ppi screen; CMYK/300dpi print). — Mismatch loses data and brilliance. _Severity: med._
- [ ] **Data-encoding colors come from a perceptually calibrated palette** (ColorBrewer), not arbitrary defaults. — Ad-hoc colors distort comparisons. _Severity: med._

## 4. Data visualization & integrity
- [ ] **Every graphic element's physical size is directly proportional to its quantity** (Lie Factor ≈ 1.0; outside ~0.95–1.05 = distortion). — Proportionality is the first principle of integrity. _Severity: high._
- [ ] **1-D data use 1-D length encodings — never area or volume**; sized shapes scale by area (r = √(area/π)), never radius. — Area/volume exaggerate by squares/cubes. _Severity: high._
- [ ] **Bar charts use a zero baseline.** — Truncated bars misrepresent magnitudes. _Severity: high._
- [ ] **Scales/baselines/perspective are constant across panels** (no shifting zoom, no gratuitous 3-D). — Scale changes inject design variation that reads as data variation. _Severity: high._
- [ ] **Enough surrounding context to answer "compared with what?"** (longer span, comparison groups). — Isolated points can manufacture or mask effects. _Severity: high._
- [ ] **Data region is free of chartjunk** (decoration, ornament, gratuitous 3-D, moiré, excess ticks/gridlines). — Non-data ink competes with and can reverse the reading. _Severity: high._
- [ ] **Chart type matches the data relationship** (comparison/time/ranking/part-to-whole/deviation/distribution/correlation). — Mismatched encodings obscure the message. _Severity: high._
- [ ] **Time is on the x-axis, left→right, values on y-axis** (no horizontal bars for time series; positive bars extend rightward from zero). — Wrong orientation reverses perceived chronology/sign. _Severity: high._
- [ ] **Pie charts sum to 100% and have ≤5–7 slices** (else use a bar). — Broken part-to-whole logic or angle overload is unreadable. _Severity: med._
- [ ] **Line charts keep to ≥4 labeled lines** (or use small multiples with a constant scale). — Too many lines create unreadable clutter. _Severity: med._
- [ ] **Monetary/time data are in deflated, standardized (real) units, deflation labeled.** — Nominal units present inflation as real change. _Severity: med._
- [ ] **The data is plotted, not reduced to summary statistics** so structure/outliers show. — Identical statistics hide radically different shapes. _Severity: med._
- [ ] **Display is multivariate where the phenomenon is** (as many relevant dimensions as the data carry). — Excellence is nearly always multivariate. _Severity: med._
- [ ] **Graphic is richly labeled on the figure itself** (events labeled, explanations in place, no reliance on a distant legend). — Labeling defeats ambiguity. _Severity: med._
- [ ] **Non-zero-baseline time series fills ~2/3 of the chart height.** — Too-large scale flattens the story; too-small overemphasises noise. _Severity: med._
- [ ] **Illustration is in a supporting role, not dominating or distorting the data.** — Leading illustration distracts and can mislead. _Severity: med._
- [ ] **Tables avoid vertical rules / alternating-color clutter; numbers ranged right.** — Scannability of data. _Severity: low._
- [ ] **Sources are reputable, few (ideally one), complementary, recent (≤1–2 yrs), with the data's age disclosed.** — Source quality is the foundation of credibility. _Severity: high._
- [ ] **The design keeps attention on substance, not on technique or styling.** — The viewer should think about the data. _Severity: med._

## 5. Interactive & web data viz
- [ ] **Chart still renders correctly when the data range/count changes** (scale-driven, dynamic domain). — Hard-coded pixels break on new data. _Severity: med._
- [ ] **Axis tick values are clean, round, human-readable** and appropriately formatted (%, decimals). — Ugly/over-precise ticks tax the reader. _Severity: med._
- [ ] *"More = higher / further right" holds** (y not inverted, increasing axes). — Reversed encodings read backwards. _Severity: high._
- [ ] **Tick/gridline/decoration density is restrained.** — Excess marks reduce legibility. _Severity: med._
- [ ] **Data and labels sit inside adequate margins; nothing clipped at the canvas edge.** — Clipped content loses information and looks broken. _Severity: high._
- [ ] **Choropleth/area-fill values are normalized (per-capita/area) or guarded against area bias.** — Raw choropleths over-represent large low-density regions. _Severity: high._
- [ ] **Interactive views provide overview → zoom/filter → details-on-demand.** — Serves both browsers and answer-seekers. _Severity: med._
- [ ] **Transitions are brief (~0.5s), purposeful, and bounded in total time regardless of dataset size.** — Slow/decorative motion hurts perception and patience. _Severity: low._
- [ ] **Hover/highlight gives responsive feedback without interrupting in-flight animations.** — Stranded transitions look buggy. _Severity: med._
- [ ] **Map projections are centered and scaled to fit the frame.** — Off-frame/distorted maps mislead. _Severity: med._
- [ ] **The chart purpose is clearly explanatory (focused) vs. exploratory, and designed accordingly.** — A chart trying to be both communicates neither well. _Severity: med._
- [ ] **Data is accessible (ALT text / supplementary copy) for mobile and assistive tech.** — Image-only content excludes users and search. _Severity: med._

## 6. Communication & storytelling
- [ ] **The core "what is this / why care" is graspable in ~5 seconds.** — Attention is scarce; failing this loses the user. _Severity: high._
- [ ] **Each step/panel shows rather than tells** (imagery carries meaning, not just captions). — Visuals communicate faster and aren't skipped. _Severity: high._
- [ ] **A viewer can tell what happened between any two adjacent steps** without extra explanation; continuity details stay consistent. — Sequential comprehension lives in the gutter. _Severity: high._
- [ ] **Piece has a clear, single communication objective and the design serves it.** — Utility is measured by goal achievement, not popularity. _Severity: high._
- [ ] **Intended mode (explorative vs. narrative) is consistent with the amount of illustration/editorializing.** — Decoration in explorative work distorts neutrality. _Severity: high._
- [ ] **The piece tells a genuinely interesting, meaningful story for its audience** (editorial free of brand bragging). — Dull/self-promotional subject matter dooms it regardless of polish. _Severity: high._
- [ ] **Copy uses active voice and combines related points** (no padding/passive); reads as authentic user voice, not marketing hype. — Directness speeds comprehension; contrived copy is detected. _Severity: med._
- [ ] **Context/setting is established before details** ("forest first, then trees"). — Premature detail confuses. _Severity: med._
- [ ] **Fidelity/polish matches the audience** (rough for peers, refined for execs/customers; not so realistic it triggers the Uncanny Valley); UI abstracted to load-bearing elements in conceptual scenarios. — Mismatched fidelity distracts or undermines credibility. _Severity: med._
- [ ] **Detail level matches the audience's expertise and information need** (not over- or under-specified). — Wrong scope wastes attention or omits what's needed. _Severity: med._
- [ ] **Aesthetic/tone matches the gravity of the subject and the audience** (no cartoony shareholder report, no flippant rendering of a sensitive topic). — Tone mismatch undermines credibility or offends. _Severity: med._
- [ ] **Format (static/motion/interactive) fits the data's update frequency and interaction needs.** — Wrong format causes staleness or wasted cost. _Severity: med._
- [ ] **Shot/framing varied across a repetitive sequence to avoid monotony**, without breaking reader orientation. — Variety sustains engagement; over-variety confuses. _Severity: low._
- [ ] **If emotion/state must be conveyed, it is legible** (clear eyebrow/mouth/body-language cues, exaggerated enough). — Ambiguous affect fails to communicate. _Severity: low._
