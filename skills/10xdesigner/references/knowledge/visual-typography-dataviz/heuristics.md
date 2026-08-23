# Visual, Typography & Data-Viz — Critique Heuristics

Deduped "if X then problem Y because Z, fix W" rules.

## Typography & reading

- **If** running text is set in ALL CAPS (or all-italic) **then** reading slows to letter-by-letter **because** word-shape cues (ascender/descender outlines) are destroyed → **fix:** use mixed case; you can then set it larger/heavier.
- **If** body line length is outside ~45–78 characters (especially past ~90) **then** readability suffers **because** the eye can't reliably find the next line, or rhythm fractures → **fix:** narrow the measure or increase size; if it must stay wide, increase leading proportionally.
- **If** leading (line-height) is equal to or tighter than word spacing **then** the eye drops to the line below mid-line instead of along the current line → **fix:** increase line-height until it clearly exceeds word spacing; widen further as line length grows.
- **If** spacing parameters don't scale together as the line lengthens **then** reading rhythm goes uneven **because** word/line/letter spacing are interdependent → **fix:** widen word space, line space, and tracking together for longer lines; tighten for shorter.
- **If** heading/body sizes look arbitrary or unrelated **then** the type clashes like discordant music → **fix:** derive all sizes from one base via a consistent ratio.
- **If** two type weights or sizes differ only slightly (regular vs. semibold; 12 vs. 14pt; ½pt vs. 1pt rule) **then** you have conflict, not contrast **because** near-sameness reads as a mistake → **fix:** push the difference hard (regular vs. heavy black; hairline vs. 2–4pt rule).
- **If** two combined faces come from the same category (two oldstyles, two sans, two scripts, two italics) **then** they conflict **because** shared structure is too similar to differentiate → **fix:** pull from different categories and reinforce across multiple contrast axes (size + weight + form + structure).
- **If** the larger type is light-weight while the smaller type is bold **then** the elements fight for focus **because** each "tries to be more important" → **fix:** decide which is the boss and emphasize it consistently.
- **If** an eccentric/display face (spiky serifs, radical thick-thin Modern) is used for body copy **then** it dazzles and fatigues **because** individual letters attract attention at the expense of the word → **fix:** reserve idiosyncratic faces for display; use familiar self-effacing forms (Oldstyle) for running text.
- **If** light/white text sits on a dark background at the same weight as its dark-on-light version **then** it looks too heavy and counters fill **because** bright advances and ink/pixels spread → **fix:** use a lighter optical weight, more leading, and more tracking for reversed-out text.
- **If** signage type is made heavier "to be more legible" (esp. reversed/back-lit) **then** counters fill into blobs → **fix:** use a *thinner* weight for light-on-dark/back-lit signs.
- **If** the typeface has confusable glyphs (1/l/I, 0/O) in numerals, forms, signage, or code **then** misreading is likely and sometimes dangerous → **fix:** choose disambiguated forms (DIN 1450: looped l, serifed I, slashed 0).
- **If** text is justified in narrow columns **then** you get rivers and alternately loose/tight lines with uneven "color" implying false emphasis → **fix:** prefer ragged-right, or widen the measure / hyphenate before forcing justification.
- **If** straight typewriter quotes/apostrophes, hyphens-for-dashes, "--", three full-stops, two spaces after a period, ½-inch indents, or underlined emphasis appear **then** the typesetting reads as amateur → **fix:** true curly quotes; en/em dashes and ellipsis glyph; one space; one-em indent (and indent OR space-between, never both, never on first paragraphs); italics not underline; real bullets not hyphens.
- **If** lowercase running text has been tracked/letterspaced open **then** word recognition degrades ("stealing sheep") → **fix:** don't track lowercase body; reserve open tracking for caps/headlines, sparingly.
- **If** gappy pairs (To, Tr, Ve, Wo, figures before periods/commas, esp. after 7) look spaced-out **then** kerning is missing → **fix:** apply kerning pairs (most pro fonts include them); kern especially at large sizes.
- **If** a paragraph's last line is under ~7 characters, or a single line is stranded at the top/bottom of a column **then** you have a widow/orphan → **fix:** rewrite, adjust spacing/margins, or re-break the line.
- **If** bullets/quotation marks sit *inside* the text box, indenting body **then** the left edge looks ragged and flow breaks → **fix:** hang the punctuation/bullets into the gutter.
- **If** body type is smaller than 9pt or larger than 14pt for a normal book face **then** sustained reading suffers → **fix:** keep extended-reading type 9–14pt, adjusted for x-height.
- **If** a print font is auto-converted to a web font at small sizes **then** it renders poorly **because** hinting can't fit every engine → **fix:** use screen-engineered faces (Georgia, Verdana, Source/Fira Sans) below ~14px.
- **If** small text must survive low-res output (fax, copy, low-dpi, small screen) **then** light weights drop out and heavy fill in → **fix:** use a sturdy regular weight with a clearly-contrasting bold and adequate (not over-compressed) width.

## Layout, composition & whitespace

- **If** the eye stops at more than 3–5 separate elements (squint-and-count) **then** the page lacks proximity grouping **because** ungrouped units create clutter and no entry point → **fix:** group related elements into 3–5 visual units with intentional space between.
- **If** equal whitespace sits above and below a heading (or between all elements) **then** relationships are ambiguous and space gets trapped → **fix:** put more space above a heading than below so it groups with the text it introduces.
- **If** a layout mixes centered + flush-left + flush-right text **then** it looks amateurish **because** there's no shared edge → **fix:** pick one alignment and stick to it.
- **If** a headline is centered over flush-left/indented body **then** the centering reads as random → **fix:** set heads flush left to match the body.
- **If** an element is "a little bit" out of alignment **then** it looks like a mistake **because** small misalignment reads as error → **fix:** align fully, or break alignment boldly and obviously.
- **If** a strong straight edge abuts a ragged edge **then** trapped, awkward whitespace pushes elements apart → **fix:** put the two straight edges together and let whitespace float to the outside.
- **If** a multi-page piece has no repeated elements **then** it loses cohesion **because** repetition signals "same publication" → **fix:** repeat fonts/colors/rules/spacing/bullets across pages.
- **If** one element is repeated so heavily it overwhelms **then** focus is confused → **fix:** balance repetition against contrast; save surprises for special items.
- **If** everything on a flyer/ad is large and bold **then** nothing stands out → **fix:** one strong focal point, supporting info smaller.
- **If** an ad sits on a busy page with no internal whitespace **then** it disappears **because** the eye is drawn to whitespace as contrast → **fix:** build generous whitespace into the ad itself.
- **If** everything aligns perfectly to a symmetric/even grid **then** the page reads calm but flat **because** symmetry kills movement → **fix:** nudge a key element off-grid or use odd/asymmetric columns for emphasis.
- **If** a layout grid is so complex the designer can't apply it consistently **then** the system gets abandoned → **fix:** keep it simple but comprehensive; start from ~4 core content types (headings, paragraphs, lists, tables ≈ 80% of content).
- **If** a masthead/header is very dark and heavy **then** it acts as a barrier stopping the eye descending → **fix:** lighten it; use accent-color links to form a horizontal line drawing the eye past.
- **If** a luxury/premium layout is dense and cramped **then** it reads as down-market **because** sparse whitespace signals sophistication → **fix:** add macro whitespace and restrained type.
- **If** a subject/photo faces or moves *off* the page (wrong Looking Room) **then** the eye is led away from content → **fix:** flip/crop so the subject looks into the page.
- **If** a subject is centered with dominant lines bisecting the frame **then** the composition feels static/weak → **fix:** apply Rule of Thirds; place the subject near a third-line intersection.
- **If** adjacent cards/promos/panels share identical size, crop, and layout **then** the eye glazes over and none stands out → **fix:** vary scale, crop, and placement while keeping color/type cohesive.
- **If** foreground and background use the same visual weight (or tangents tangle the subject) **then** the subject doesn't pop → **fix:** thinner lines / lower contrast for background; break intersections with space.

## Color

- **If** a design relies on color alone to convey meaning or structure **then** it breaks in greyscale and for colour-blind users → **fix:** make it work in tones first; use color only to highlight.
- **If** a palette has no clear dominant/subordinate/accent (all colors competing) **then** there's no focus and no story → **fix:** assign relative weight: one dominant carrier, supporting subordinate, striking accent.
- **If** an accent/second color is too close in tone to the text (dark brown/blue on black) **then** contrast doesn't register → **fix:** use a clearly contrasting value.
- **If** warm and cool colors are used at equal area/weight **then** the warm overpowers **because** warm advances, cool recedes → **fix:** use less of the hot color, more of the cool.
- **If** layout colors share very similar tones/values **then** it looks muddy and text would vanish on a copier **because** harmony needs tonal variety → **fix:** vary the tones.
- **If** a brand/palette ignores the audience's cultural color associations **then** it may signal the wrong (even offensive) meaning → **fix:** check color symbolism for the specific market.
- **If** data-encoding fills use arbitrary default colors **then** comparisons distort/confuse → **fix:** use a perceptually calibrated palette (ColorBrewer).

## Charts & data integrity

- **If** a bar chart's value axis does not start at zero **then** the comparison is distorted **because** bars are read by length → **fix:** always use a zero baseline for bars (no exceptions).
- **If** a 1-D quantity is shown with 2-D area or 3-D volume (fat pictograms, growing barrels, shrinking dollars, sized circles by radius) **then** the change is wildly exaggerated **because** area grows as the square, volume as the cube → **fix:** encode 1-D data with 1-D length; for sized shapes set r = √(area/π).
- **If** a bar/line/area is physically larger or smaller than the data warrant (Lie Factor outside ~0.95–1.05) **then** the graphic lies → **fix:** size every element in strict proportion; compute the Lie Factor and bring it to ≈1.0.
- **If** the vertical scale, baseline, zoom, or perspective changes within/between panels for no data reason **then** design variation masquerades as data variation → **fix:** hold scale constant; use one flat coordinate plane and one baseline.
- **If** a monetary series is plotted in nominal (un-deflated) dollars **then** inflation passes as real growth → **fix:** convert to constant/real units and label the deflation.
- **If** a chart isolates one change or a very short time window **then** the reader can't tell whether the effect is real → **fix:** extend the series and add adjacent comparison groups ("compared with what?").
- **If** a pie chart has >5–7 slices or its slices don't sum to 100% **then** it's unreadable or its part-to-whole logic is broken → **fix:** use a bar/stacked-bar for many categories; ensure values total 100%; largest slice from 12 o'clock clockwise.
- **If** a time series runs on horizontal bars, right-to-left, or top-down **then** chronology is misread **because** we read time left→right → **fix:** time on the x-axis (left→right), values on y-axis.
- **If** a horizontal bar extends leftward for a positive value **then** it reads as negative **because** left-of-zero implies negative → **fix:** draw positive values rightward from the zero baseline.
- **If** a line chart shows more than ~4 lines **then** it's an unreadable tangle → **fix:** keep to ≤4 labeled lines, or use paneling (small multiples) with a constant scale.
- **If** the chart type doesn't match the data relationship (comparison/time/ranking/part-to-whole/deviation/distribution/correlation) **then** the message is muddled → **fix:** identify the relationship first, then pick from the valid chart types.
- **If** the axis scale is too large **then** an important story is flattened; **if too small**, noise is overemphasized → **fix:** for non-zero-baseline time series, plot so the data range fills ~2/3 of the height.
- **If** decoration/illustration competes with or obscures the data (or chartjunk/3-D dominates the data region) **then** comprehension drops and trust erodes → **fix:** demote illustration to a supporting role; strip chartjunk for explorative pieces.
- **If** a summary statistic (mean, r, regression) is reported without a plot **then** real structure may be hidden **because** very different datasets can share identical summary statistics → **fix:** always plot the data.
- **If** a multivariate phenomenon is plotted with only one variable **then** the medium is underexploited and it likely misleads → **fix:** add the relevant dimensions (cf. multi-variable flow maps).
- **If** a data table uses vertical rules and alternating row colors **then** it's busy and hard to scan → **fix:** drop vertical lines, use one tint + white, thick header rule, thin row rules, range numbers right, more padding below items than above.
- **If** table figures are proportional or typewriter (Courier) numerals **then** columns don't line up → **fix:** use tabular lining figures (equal width); align decimals/commas/currency.
- **If** the sources are many, mismatched, from different years, or undated **then** the narrative is incoherent and untrustworthy → **fix:** use one (or few complementary) reputable source, data ≤1–2 yrs old, age disclosed.

## Interactive & web data viz

- **If** a chart breaks or rescales awkwardly when the data grows **then** it was hard-coded to fixed pixel values → **fix:** drive positions/sizes through a scale with a dynamic domain (min/max).
- **If** axis tick labels read like 0,150,300 or 0.20147… **then** the chart is hard to read **because** non-round/over-precise values tax the reader → **fix:** let the scale pick clean intervals (nice()); format with tickFormat (e.g. ".1%").
- **If** a quantitative plot shows larger values lower on the page **then** it reads backwards **because** screen-y increases downward → **fix:** invert the y output range.
- **If** ticks/gridlines/decoration are dense **then** legibility drops → **fix:** strip ornament that doesn't communicate; "more ticks aren't better."
- **If** data or labels are clipped at the canvas edge **then** information is lost and the chart looks broken → **fix:** reserve margin on all sides (extra where long labels live).
- **If** a choropleth/area-fill map is read as "which area has more" **then** the conclusion may be wrong **because** large low-density regions are over-represented and per-capita isn't shown → **fix:** normalize per-capita/area or add proportional point overlays.
- **If** an interactive view dumps users straight into detail with no orientation **then** they get lost → **fix:** overview first, then zoom/filter, then details-on-demand.
- **If** transitions run many seconds on large datasets (per-element delay = i × constant) **then** total time balloons → **fix:** normalize delay = i / dataset.length × T; keep duration ~500ms for a snappy feel.
- **If** a hover highlight interrupts an in-flight sort/update animation (bars never reach final position) **then** transitions conflict → **fix:** keep simple hover effects in CSS; let JS handle heavy coordinated motion.
- **If** content is locked inside an image with no text alternative **then** it's inaccessible on mobile and to screen readers (and invisible to search) → **fix:** provide the data as ALT text or supplementary copy.

## Communication & storytelling

- **If** a flow/explainer relies on captions to carry the narrative while imagery is decorative **then** the visuals do no work and steps may be unneeded **because** caption-as-crutch hides whether content earns its place → **fix:** push each point into the image/dialogue; cut steps that resist illustration.
- **If** a sequence doesn't let a viewer infer what happened between two steps (or continuity details flip — character switches sides, different hand) **then** the flow is broken **because** sequential meaning lives in the gutter → **fix:** add connecting context in the prior step; keep positional details consistent.
- **If** every panel/screen is framed at the same distance and angle ("talking heads") **then** the sequence is monotonous → **fix:** mix long/medium/close-up shots and angles to match each step's job, without losing orientation.
- **If** a real screenshot or photoreal image is dropped into a conceptual scenario **then** viewers fixate on literal content instead of the story **because** specificity destroys projection → **fix:** abstract the UI to load-bearing elements in a consistent style.
- **If** copy is passive, padded, or hype-y ("Isn't this a great product!") **then** the message is slow, diluted, and detected as inauthentic → **fix:** active voice, cut detail, combine related points, write in the user's real voice.
- **If** a homepage/landing can't convey "what this is / why care" within ~5 seconds **then** visitors bounce → **fix:** apply the five-second test; cut carousels and bullet kitchens; tell one use-case story.
- **If** an explanation skips establishing context before details **then** comprehension drops **because** audiences need "forest first, then trees" → **fix:** open with an establishing shot/setting.
- **If** decoration/aesthetic mismatches the audience or the gravity of the subject (cartoony shareholder report; flippant rendering of a sensitive topic) **then** it undermines credibility or offends → **fix:** match tone to audience and subject.
- **If** the subject matter is dull or self-promotional (brand bragging in editorial) **then** the piece fails regardless of polish **because** a piece nobody cares about can't really be good → **fix:** lead with a genuinely interesting story; keep editorial free of brand mentions.
- **If** the format (static/motion/interactive) doesn't fit the data's update frequency or interaction needs **then** the piece is inefficient or quickly stale → **fix:** static/motion for fixed info, interactive for explorable/dynamic data.
- **If** the typeface tone clashes with the message/brand (casual script on a legal form) **then** type misleads before the words are read → **fix:** match the face's voice to the message's emotion.
