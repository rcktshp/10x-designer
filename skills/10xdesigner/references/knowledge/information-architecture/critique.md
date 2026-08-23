# Information Architecture — Critique Checklist

Self-contained, scoreable checklist for an external design-review tool. Each item: the **check**, **why it matters**, and **severity** (high / med / low). Deduplicated across 16 books. Score each binary (pass/fail) or 1–5; sum or weight by severity. Items are grouped; an item may not apply to every artifact (mark N/A).

---

## 1. Organization & hierarchy

| # | Check | Why it matters | Severity |
|---|-------|----------------|----------|
| 1.1 | Top-level categories reflect user topics/tasks, not the org chart, brand, DB schema, or page layout. | Implementation-driven structure serves the system, not users who don't know internal ownership. | high |
| 1.2 | The primary hierarchy is broad-and-shallow (content reachable in ≤2–3 clicks; high breadth grouped into discrete labeled clusters). | Deep narrow trees lose users past ~2–3 levels. | high |
| 1.3 | Every parent→child relationship passes the all/some test (ALL of the child falls within the parent; relationship is true is-a, instance, or whole–part). | Broken hierarchy yields wrong drill-down/roll-up and false inferences. | high |
| 1.4 | Within any single label set, items are comprehensive (no surprising gaps) and at consistent granularity/abstraction. | Gaps and mixed levels confuse scanning and break trust. | med |
| 1.5 | Top-level categories are semantically balanced (items spread; no one giant bucket with empty siblings). | An unbalanced top level means the chosen dimension doesn't differentiate. | med |
| 1.6 | Items can be placed without forcing them into an oversized "Other/Misc/Case Studies" bucket. | Overflow buckets signal a mis-dimensioned or over-rigid taxonomy, or ambiguous titles. | high |
| 1.7 | If multiple schemes appear on one page, each is kept pure and visually separated (no deep blended hybrid). | Blended deep schemes prevent users forming a mental model. | high |
| 1.8 | Browse categories sit at the user's "basic level" (chair, not furniture/office-chair), with concrete sample subcategories surfaced. | Abstract taxa give users and search engines nothing to act on; cognitive economy favors the basic level. | med |
| 1.9 | Granularity (category depth / filter specificity) matches how specific real user queries are; model is captured at the finest granularity any interaction needs. | Mismatched granularity wastes effort; you can collapse fine→coarse but never recover coarse→fine. | med |

## 2. Multiple paths, facets, flexibility

| # | Check | Why it matters | Severity |
|---|-------|----------------|----------|
| 2.1 | The product offers multiple access paths (exact + ambiguous schemes; search + browse that reinforce each other; index/sitemap/A-Z as backup). | No single scheme fits all users/needs; taxonomy alone always fails someone. | high |
| 2.2 | Large/multi-dimensional content sets use orthogonal facets (one value per facet per item) rather than one forced hierarchy. | Facets give flexible, stable, multi-path access; non-orthogonal facets confuse filtering. | high |
| 2.3 | When an item genuinely fits several categories, cross-listing/polyhierarchy/faceting is used instead of forcing one home. | Digital content can and should live in multiple paths. | med |
| 2.4 | Faceted/filter UI is applied to reasonably uniform content (records share most facets) and each facet is a coherent "filter by ___" dimension. | Facets fail on heterogeneous content; non-dimensions shouldn't be facets. | med |
| 2.5 | The IA allows overlapping/nested access (cross-listing, seasonal/contextual categories), not one strict tree. | People perceive nesting and overlap, not categorical trees. | med |
| 2.6 | For critical functions, more than one path/redundancy exists. | A single point of failure lets a small shock crash the whole experience. | med |

## 3. Labels, vocabulary, metadata

| # | Check | Why it matters | Severity |
|---|-------|----------------|----------|
| 3.1 | Labels use the audience's own words (no internal jargon, brand-speak, unexplained acronyms, or format words like "Fact Sheets"). | The user's word must match the site's word or the visit ends; #1 cause of findability failure. | high |
| 3.2 | Each concept is labeled identically (wording, color, location) on every page/section/channel, governed by a style guide. | Repeated inconsistency breaks learnability and trust. | high |
| 3.3 | Each label means exactly one thing; no single term silently carries multiple meanings ("account," "calendar," "cloud"). | Reified ambiguous labels collapse distinct contexts and mislead users. | high |
| 3.4 | A stranger can tell what the place is and what they can do from the navigation labels alone (logos hidden). | Labels must convey domain + possible actions, not merely be findable. | high |
| 3.5 | Each homograph (same label, different meaning) is disambiguated in the label itself, not only via a tooltip/scope note. | Users skip notes and notes may not render. | high |
| 3.6 | Synonyms, variants, alternate spellings, and acronyms redirect users to a single preferred label (especially behind a search box). | Without them, users typing a variant find nothing. | high |
| 3.7 | Generic labels are not Title-Cased or inverted ("Loans, commercial"); style/register is consistent within each branch. | Title case falsely signals proper nouns; mixed register makes the system unpredictable. | low |
| 3.8 | Word-poor content (images, audio, short text) carries hand-crafted descriptive metadata. | Otherwise it is unfindable by search or browse. | med |
| 3.9 | Each metadata/description element is justified by a named audience and a supported interaction. | Description is a means; unowned fields are noise. | med |
| 3.10 | Identifiers/URLs/slugs are based on stable properties, not status/owner/location that can change, and are distinct from display labels. | Impermanent-attribute names rot and break links; identity must not depend on a changeable label. | med |
| 3.11 | Core action/object metaphors match the activity the place hosts. | Metaphor shapes understanding and behavior. | med |

## 4. Navigation & wayfinding

| # | Check | Why it matters | Severity |
|---|-------|----------------|----------|
| 4.1 | A user dropped onto any interior page can tell where they are (site identity, section, parent) and where each link leads (navigation stress test). | Users bypass the home page via search/social; every page is an entry point. | high |
| 4.2 | Global navigation is present on (almost) every page and communicates what the site is for. | Access from anywhere; missing global nav sends users to Google. | high |
| 4.3 | A stable, globally accessible landmark/anchor (logo→home, persistent nav) lets a lost user reorient. | Landmark knowledge enables recovery and exploration. | high |
| 4.4 | Every "found" item (product, article, result) offers a clear next step / associative "related" / safety net and never dead-ends. | Associative navigation is the strongest usage driver; dead-ends lose users. | high |
| 4.5 | Navigation provides strong information scent (descriptive labels, second-level sample subcategories). | Weak scent makes users leave faster. | med |
| 4.6 | Visited links render in a distinct state/color. | Prevents re-treading the same paths. | med |
| 4.7 | Clickable elements look distinctly clickable vs read-only text. | Ambiguous affordance causes mouse-hunting. | high |
| 4.8 | Utility links (login, help, search, account) are separated from global nav (commonly top-right). | Users look for content in global nav, tools elsewhere. | med |
| 4.9 | Learned zones are respected (home upper-left, cart upper-right; load-bearing links kept out of right-column ad zones). | Users only look in expected zones. | med |
| 4.10 | Content is long-page rather than over-paginated; required forms strip nav while optional lists keep it. | ~50% of readers drop at each paginated "next" click; nav-removal focuses conversion. | med |

## 5. Search

| # | Check | Why it matters | Severity |
|---|-------|----------------|----------|
| 5.1 | A persistent, consistently-placed simple keyword search box appears on every page (single field, not a forced query classifier or needless multi-field form). | Users rely on a predictable life-preserver; forced classification causes systematic errors. | high |
| 5.2 | The top ~10–15 most frequent queries return a relevant result at or near position #1 (top 3 results draw ~80% of attention). | The short head drives a large share of all search traffic. | high |
| 5.3 | Default ranking is a blended relevance + popularity + freshness, not a raw single-attribute sort. | Pure sorts bury the best result. | high |
| 5.4 | The no-results page clearly states zero results AND offers a productive recovery path on every control (spelling correction, synonyms, partial/category match, popular searches) — no controls that only further constrain, no third-party ads. | Vague failure pages cause thrashing and exits to competitors. | high |
| 5.5 | A partial-match / autoexpand strategy handles over-constrained queries (omit/strike-through unrecognized keywords; run keyword-only "All Categories"). | Over-constraining is a top cause of failed searches. | high |
| 5.6 | The engine handles spelling correction/fuzzy matching, synonyms, and stemming (variant→preferred). | Vocabulary mismatch and typos make existing content unfindable (~25% of long-tail queries are typos). | high |
| 5.7 | Result rows carry enough discriminating info (key specs, image, price, rating, query terms bolded in context) to decide without clicking through. | Controls pogosticking; "the content is the interface." | high |
| 5.8 | Multiple results fit above the fold at common resolutions (not one giant result). | Perceived relevance and inventory exposure depend on it; >50% of users don't scroll. | med |
| 5.9 | Response time is subsecond (<1s). | Flow and the iterative search-scan-search loop depend on speed; it's also a ranking factor. | high |
| 5.10 | Results are fast to load and scannable (snippets with keywords-in-context, visited cues, source hint). | Perceived speed = relevance-judgment speed; fast-and-ugly beats slow-and-pretty. | high |
| 5.11 | 1–3 curated Best Bets exist for the most popular/persistent queries, removed from the algorithmic list and visually labeled. | Guarantees a useful answer where ranking alone fails; duplicates waste space. | med |
| 5.12 | Promoted/"best bet" results are integrated without ad-like boxes/borders. | Boxed = invisible (users read it as an ad). | med |
| 5.13 | Specialized query types (IDs, SKUs, names, dates, URLs) are detected and given tailored results (e.g., redirect a URL instead of "0 results"). | Predictable intent deserves faster, tailored handling. | med |
| 5.14 | The precision/recall balance is an explicit, defensible choice aligned to user vs business goals. | You can't maximize both; the wrong balance surfaces the wrong "best." | med |
| 5.15 | Navigation/utility pages and boilerplate are excluded from the search index. | Noise (e.g., 83% wayfinding pages) buries the answer. | med |
| 5.16 | The search box is wide enough for typical query lengths (measure; ~15–30 chars typical). | Narrow boxes hide and truncate user input. | med |
| 5.17 | ROT (Redundant, Outdated, Trivial) content has been weeded and metadata added to shrink the search space. | To search better, search less; improves relevance and speed. | med |
| 5.18 | Autocomplete/autosuggest appears, is tuned to the active scope, and is driven by a cleaned, content-backed term list. | Prevents typos/thrashing; dirty suggestions mislead and embarrass. | med |
| 5.19 | Site-search analytics (top queries, top zero-result queries, exit rates, junk removed) are reviewed and folded into KPIs. | Query logs are the richest direct user feedback; findability is commonly omitted from metrics. | med |
| 5.20 | On a small/simple site, browse + sitemap/index is relied on rather than an under-fed search box. | Search with too little content/metadata dead-ends. | low |

## 6. Facets, filters, refinement

| # | Check | Why it matters | Severity |
|---|-------|----------------|----------|
| 6.1 | Each facet uses one consistent selection paradigm (links = single/drill-down/"equals"; check boxes = parallel "OR"); paradigms aren't mixed. | Broken affordances confuse users. | high |
| 6.2 | A clear, order-independent "Any/All" undo exists per facet, and users can change one facet value without removing others. | Efficient refinement; relying on Back forces removal in application order. | high |
| 6.3 | At every step, facet options reflect only available inventory while still covering all inventory (null values captured via "Other/All Others"). | Prevents unfindable items and zero-result dead ends. | high |
| 6.4 | Facets are orthogonal (one value per facet per item; no entangled dimensions like a Brand value inside Product). | Non-orthogonal facets confuse filtering and double-count. | high |
| 6.5 | Facet/filter widgets show match counts and update incrementally (not a batch submit of multiple parameters). | Avoids parametric zero-result frustration. | med |
| 6.6 | Discrete numeric attributes are shown as discrete rounded values, not ranges. | Ranges have poor scent and demand fraction math. | med |
| 6.7 | Range/slider filters show inventory (histogram/counts) and avoid easy over-constraining (ratings as "X & up," default "Any"). | Predictable outcomes, fewer zero results. | med |
| 6.8 | For ambiguous queries, a prominent category selector (clarify) precedes facets (refine). | Clarify-then-refine is a fixed, distinct ordering. | med |
| 6.9 | Roughly 4–7 options show per facet, with overflow in a "More" panel. | Rule-of-thumb sweet spot for scannability. | low |
| 6.10 | Breadcrumbs are hierarchical (stable, indexable URL) and let users change a facet value directly (mega-menu), retaining relevant query parts. | Navigation + SEO + efficient editing; avoids Set-Remove-Set. | med |
| 6.11 | Faceted navigation has SEO precautions (predictable facet order in URLs, limited indexable combinations, sitemaps). | Otherwise it becomes a spider trap of duplicate URLs. | med |

## 7. Interaction, feedback, accessibility

| # | Check | Why it matters | Severity |
|---|-------|----------------|----------|
| 7.1 | Functionally different controls look/behave perceptibly different (form, position, color, label). | Near-identical controls force conscious effort and repeated errors. | high |
| 7.2 | Prominent CTAs match learned conventions; no inverted/destructive defaults or dark patterns. | Satisficing users act on convention; inversion is manipulative and error-prone. | high |
| 7.3 | Interaction invariants (gestures, button meanings, action scope) are consistent across platforms and versions. | Digital invariants aren't physically anchored; inconsistency breaks learnability. | high |
| 7.4 | Visible feedback/animation accompanies any wait or multi-step process, with step position shown. | Stillness reads as failure/crash. | high |
| 7.5 | Error messages state the exact cause, sit beside the offending field, use a non-judgmental tone, and suggest recovery; user-entered data is auto-saved. | Users can't fix what they can't locate or understand; losing input is maximally frustrating. | high |
| 7.6 | The design relies on recognition (showing options) over recall (remembering hidden ones). | Human memory is unreliable; computers remember perfectly. | med |
| 7.7 | A hurried, distracted, impaired, or mobile user can still succeed without deliberate analysis. | Real use is tacit/satisficing; >10% of users have disabilities. | high |
| 7.8 | Core text is selectable, crawlable text (not baked into images); the design is standards-based and accessible (screen reader, keyboard, progressive enhancement). | Image-text is invisible to search and assistive tech. | high |
| 7.9 | Audio is off by default. | Unexpected sound drives away users in shared/public spaces. | med |
| 7.10 | Controls are placed consistently across pages/states (spatial memory); interactive affordances (drag handles, hover invites) clearly signal what's possible with link/keyboard fallbacks. | Predictability drives findability of controls; Fitts' Law on drop zones. | med |
| 7.11 | A specific result set can be bookmarked/shared even with inline paging or infinite scroll. | Don't break the power of the page. | low |
| 7.12 | When the system acts on its own, its activity, scope, and rules are visible and understandable. | Hidden agency + change blindness erodes trust and control. | high |

## 8. Place, cross-channel, persistence

| # | Check | Why it matters | Severity |
|---|-------|----------------|----------|
| 8.1 | The same task feels like one continuous experience across channels/sections (consistent labels, color, terminology, structure). | Cross-channel gaps raise cognitive load and damage brand. | high |
| 8.2 | A user can start a task in one channel and complete it in another (order by phone, track on web, pick up in store). | External correlation/continuity is the backbone of cross-channel UX. | high |
| 8.3 | Mobile has been re-architected (not a desktop mega-menu stuffed into a hamburger); max screen given to content (≤5 controls across), refinement state preserved. | Mobile can't reveal category maps on hover; starved space hides content. | high |
| 8.4 | Horizontal/semantic correlations exist between related items (related, "people who…," facets, tags, cross-references). | Enables discovery, surfaces latent needs, breaks silos. | high |
| 8.5 | Passive information acquisition is supported (push, "what's new," recommendations, social navigation), not just a search box. | ~94% of knowledge is gathered passively. | high |
| 8.6 | The system shows clear "seams" — where am I, what's local vs synced/shared, what state am I in (no false "cloud" seamlessness). | Hidden structure leaves users unable to act. | med |
| 8.7 | Places are persistent; users get clear, concrete warnings before anything moves/changes/disappears, and learned paths are preserved across redesigns (or explicitly signposted). | Perception depends on places staying put; protects fragile procedural knowledge. | med |
| 8.8 | A documented conceptual structure (parts, relationships, public/private zones, boundaries) exists separate from the UI, and design mapped to pace layers keeps slow layers (purpose/structure) stable. | Structure outlives form; prevents incoherent overnight change. | high |
| 8.9 | Lists/menus expose a meaningful ordering principle the user recognizes (so they can cluster, per Hick's Law); wide/shallow preferred over deep nesting when ordering is meaningful. | Otherwise choice time becomes linear and effortful. | med |
| 8.10 | When facing many options, the design organizes-and-clusters and focuses-and-magnifies rather than dumping an undifferentiated array. | Reduces choice overload without removing choice. | med |

## 9. Process, metrics, governance, research

| # | Check | Why it matters | Severity |
|---|-------|----------------|----------|
| 9.1 | The IA is backed by real user research and ≥2 methods (card sort + interviews/analytics/search logs/usability test), and categories are validated for *finding* (task-based "where would you look"), not just *filing*. | Single-method/intuition-only IA encodes the designer's model; classifying ≠ finding. | high |
| 9.2 | Card-sort output was synthesized, not transcribed verbatim, and IA was not derived straight from cluster analysis. | A literal dump (~20+ top items) or single statistical best-fit represents no real user. | med |
| 9.3 | The primary success metric is task completion / user value, not raw engagement/time-on-site; quantitative metrics are paired with quality/satisfaction. | Attention is nonrenewable; engagement metrics incentivize manipulation; the streetlight metric degrades the whole. | high |
| 9.4 | User goals and business monetization align (the user gets to finish and leave); ad/monetization density is bounded; meaningful agency and an easy exit exist. | Misalignment produces exploitative "greedy" environments; persuasion without agency is coercion. | high |
| 9.5 | Functional structure / floor-plan was defined (low-fi) before UI detail; tidy artifacts aren't mistaken for solved problems. | Structure-first prevents incoherent, hard-to-change designs; order ≠ understanding. | med |
| 9.6 | User models are built from situations and observed behavior, not just stated goals and self-report. | Goals are fictional reifications; observation reveals real context. | med |
| 9.7 | The system was observed and root-caused before intervention; the team questions its goals (double-loop), not just tweaks within them. | Naïve fixes make the system "kick back"; single-loop-only teams run efficiently off a cliff. | med |
| 9.8 | A clear written vision/purpose and an identified steward exist; governance for maintaining and growing the vocabulary is documented. | Cohesion and resilient evolution require it; unmaintained environments decay. | med |
| 9.9 | The system launched as a minimal working structure designed to evolve, not a from-scratch grand vision. | Gall's Law; reduces failure risk. | med |
| 9.10 | Each added interaction/filter/view creates demonstrable user value (not just capability). | Feature/structure bloat raises complexity without capability. | low |
| 9.11 | A/B testing is used only where variables genuinely isolate; complex interconnected features rely on research + synthesis. | Non-isolable tests mislead ("41 shades of blue"). | low |

## 10. Structured-data / open-world modeling (where the IA backs a data model)

| # | Check | Why it matters | Severity |
|---|-------|----------------|----------|
| 10.1 | Each fact has a single source of truth; views/screens are generated from it, not duplicated. | Duplication causes drift (Pluto still listed as a planet). | high |
| 10.2 | Every entity/concept has a stable identifier separate from its human-facing label. | Labels are ambiguous, language-bound, and change; identity must not. | high |
| 10.3 | The model's competency questions are stated; the structure answers them and stops (no creeping conceptualization / empty "just in case" classes). | Prevents both under- and over-modeling; empty classes constrain reuse. | med |
| 10.4 | Every category has plausible imaginable instances (else it's an item, not a category); is-a inheritances are genuine class-inclusion. | Catches rampant classism and class/instance confusion; only inclusion is transitive. | med |
| 10.5 | The design avoids concluding "complete / none / only N" except where scope is explicitly declared closed; supports merging contributions from sources you don't control. | Open-World violations produce false negatives; centralized-authority assumptions break federated/UGC systems. | med |
| 10.6 | Relationship/label names readable in two directions carry an explicit clarifying comment. | Prevents reuse misapplication (the skos:broader trap). | low |
