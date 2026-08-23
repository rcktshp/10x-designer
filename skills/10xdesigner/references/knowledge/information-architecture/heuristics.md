# Information Architecture — Critique Heuristics

Deduplicated "if X then problem Y, fix Z" rules for spotting IA problems in a design.

---

## A. Organization, categories, hierarchy

- **If** navigation is organized by internal department / org chart / brand structure **then** users can't find content without already knowing who owns it **because** people don't share the organization's model of itself **— fix:** reorganize around user topics/tasks (validate with card sort + search logs); optionally add a secondary "by team" view.

- **If** a product/category is hidden under a label that mirrors the physical store or org chart **then** high-value items go unfound **because** the taxonomy was built for the org, not the user **— fix:** cross-list under multiple categories and validate against site-search terms.

- **If** the only browse path is an expert/internal scheme (e.g., a health site by "bodily system") **then** the lay audience can't find common items (couldn't find "diabetes") **because** a pro taxonomy was reused for the public **— fix:** add audience-appropriate paths (common conditions, A-Z, symptom checker, segments).

- **If** a hierarchy is narrow-and-deep (>2–3 levels, many clicks) **then** users give up **because** depth loses people **— fix:** broaden and flatten; group links into discrete labeled clusters at the page level (NCI: ~85 links in 10 groups).

- **If** a deep navigation menu blends audience, topic, task, metaphor, and alphabetical items together **then** users can't form a mental model and must skim every item **because** blended deep hybrid schemes destroy the simple model a pure scheme provides **— fix:** keep each scheme pure and present them as separate, labeled groups (shallow hybrids are fine; deep ones are not).

- **If** a category/menu contains a child that only *sometimes* belongs under its parent ("Egg dishes" under "Breakfast dishes") **then** the hierarchy violates the all/some test **because** drill-down/roll-up returns surprising results **— fix:** move the child to a parent it always falls under, or make it associative (related), not hierarchical.

- **If** items frequently "don't fit" any single category or get dumped into "Other/Misc/Case Studies" and the bucket is oversized **then** the scheme is over-rigid, wrong-dimensioned, or hiding ambiguous titles **because** a mutually-exclusive tree is forced on a fuzzy/multi-faceted domain **— fix:** switch to facets / allow multi-classification; investigate the catch-all's titles; reserve "Other" as a tiny safety valve.

- **If** category labels mix levels of abstraction ("Accommodations" beside "Upmarket hotels," "List of B&Bs") or mixed granularity ("Restaurants," "Chinese restaurants," "Burger Kings") **then** the structure is leading/incoherent **because** detailed items get filed under broad ones **— fix:** keep all siblings at one consistent level.

- **If** a label set has a noticeable gap (lists "trousers, ties, shoes" but no "shirts") **then** users distrust the system **because** comprehensiveness lets people infer scope **— fix:** make the set comprehensive and uniform in specificity.

- **If** one top-level category holds most items and its siblings are nearly empty **then** the level lacks semantic balance **because** the chosen dimension doesn't differentiate **— fix:** pick top-level values that distribute the collection evenly.

- **If** content and functionality are mixed in one group ("Travel policy" beside "Apply for leave online," "Search," "People finder") **then** users are confused about what belongs **because** tasks/tools and reading-content are different kinds **— fix:** separate utilities (homepage/utility nav) from topic groups, or relabel everything uniformly as tasks.

- **If** browse categories aren't at the user's "basic level" (too superordinate or subordinate) **then** they feel uselessly vague or fussily over-specific **because** cognitive economy favors the basic level **— fix:** anchor primary nav at the level users naturally name things; surface concrete sample subcategories.

- **If** top-level nav shows only abstract categories with no second-level preview **then** neither users nor search engines follow through **because** abstract taxa carry no info-scent **— fix:** expose sample subcategories / popular formats (mega-menus, fat footers); Polar Bears International did this for +39% visits.

- **If** an audience-based scheme (Managers/Sales/Admin/Support) is used **then** most content spans two-plus audiences and people can't decide which is theirs **because** audiences rarely map cleanly to content **— fix:** prefer a topic scheme unless audiences are self-evident and content is clearly addressed to one.

- **If** an alphabetical or chronological scheme is the *primary* nav **then** it fails users who don't know the exact term or have non-time intents **because** A-Z works only when users know the word and it matches your label **— fix:** use A-Z/date as secondary access; lead with topic/task.

- **If** content has several equally valid organizations (events by time/place/topic; recipes by ingredient/cuisine/course) but commits to one rigid hierarchy **then** users on other intents are stranded **because** context changes what people need **— fix:** offer faceted/multiple access paths.

- **If** an extensive/complex classification sits on thin content **then** users feel tricked into many clicks that lead to the same item **because** the taxonomy promises more than exists **— fix:** match scheme depth to content volume.

- **If** an environment is forced into a single strict tree **then** it feels incoherent to users navigating by need **because** people perceive overlapping nesting, not categorical trees **— fix:** allow cross-listing, facets, seasonal/contextual categories even when "illogical" to the hierarchy.

- **If** a metaphor-driven scheme requires domain knowledge users lack (org by motherboard layout) or fights reality (a "news feed" that isn't chronological) **then** it confuses rather than helps **because** metaphors only work when familiar and carry baggage **— fix:** use metaphor for brainstorming, not as a global organizing scheme; break it explicitly when needed.

- **If** classification mixes incompatible sectioning principles arbitrarily (by type, target, use, color at once) with no context justification **then** it reads as inconsistent and unusable **because** users can't infer the organizing logic **— fix:** justify groupings by salience/context, or use a graded prototype approach.

---

## B. Labels, vocabulary, metadata

- **If** labels use marketing jargon, internal/brand terms, cute slang, or single letters/abbreviations ("Services," "Computing," "COD," "Line1," "T," a "stop sign that says Chill Dude") **then** users can't find or understand them **because** the searcher's word must match the site's word or the visit ends **— fix:** use plain, user-validated language; map brand vocabulary to user vocabulary; test labels before launch.

- **If** the same destination is labeled differently across pages ("Customer Support" / "Help"; "Main" / "Home"; "Contact Us" / "Customer Care") **then** users get confused and the site looks untrustworthy **because** consistency = predictability = invisibility, and repeated nav magnifies inconsistency **— fix:** one term per concept, enforced via style guide, identical in wording/color/location.

- **If** a single label ("calendar," "groups," "account," "cloud," "asset," "customer") is used for several distinct concepts **then** users conflate contexts and make wrong assumptions **because** they reify the label as one concrete thing **— fix:** define separate ontology per meaning; disambiguate at point of use; or rename.

- **If** a label could be confused with another and is disambiguated only by a tooltip/scope note **then** users will confuse them **because** people skip notes and notes may not render **— fix:** disambiguate in the label itself (parenthetical qualifier in one consistent style: "Saturn (planet)").

- **If** labels use Title Caps For Generic Terms or inverted phrases ("Loans, commercial") **then** users misread proper-noun vs generic and the phrasing feels awkward **because** title case signals a named entity and inversion is a print-catalog artifact **— fix:** lowercase/initial-cap-only ("Business services"); natural word order; keep inversions only as hidden search synonyms.

- **If** style/register is mixed within a branch (formal "physicians/attorneys" beside informal "doctors/lawyers"; "contracts" beside "contracting") **then** the system feels unpredictable **because** sibling labels should share register and grammatical form **— fix:** keep style consistent within each branch.

- **If** word-poor content (photos, audio, short columns) has no descriptive metadata **then** it's unfindable by search/browse **because** there are few inherent words to match **— fix:** hand-craft descriptive keywords from the story the item tells.

- **If** tags are free-form and never reconciled to category labels **then** they can't support reliable browsing **because** a tag set is not a classification until made systematic **— fix:** promote high-value tags to controlled labels via a frequency threshold (BBC metadata threshold); reconcile synonyms.

- **If** an interface uses radio buttons (mutually exclusive) where reality is fuzzy/multi-membership **then** it forces false either/or choices and hides the truth **because** most categories overlap **— fix:** allow multi-select or continuous ranges where membership is genuinely fuzzy.

- **If** a key label carries unexamined baggage (Facebook "Like" vs "Share") **then** it subtly shapes behavior and worldview **because** a single word embodies an ontology that valorizes one view and silences another **— fix:** interrogate each label — what does it valorize, who does it silence, what behavior does it nudge?

---

## C. Search

- **If** a no-results page lacks an explicit "no results found" message (a tiny "1-0 of 0") **then** users don't realize they failed and "thrash" — repeating the same query **because** visibility of system status is missing **— fix:** state plainly there are zero results and why ("Showing results for X / search instead for Y").

- **If** controls on a no-results page only further constrain the empty query (sort, narrow-by-category, price slider) or show third-party ads **then** they pull users deeper into the dead end and off to a competitor **because** nothing offers a way out **— fix:** make every control do something productive toward recovery (spelling correction, controlled-vocab substitution, partial/category match, popular searches).

- **If** an over-constrained query returns zero with no partial match **then** users add more keywords, fail repeatedly, and leave **because** they can't tell which keyword was wrong **— fix:** show partial matches with omitted keywords struck through; auto-run a keyword-only "All Categories" query.

- **If** search has no synonym ring / spell-correction ("itouch" → 2 results vs 648 for "ipod touch"; "tilenol" → nothing; "chedder," "gravlax") **then** users fail despite relevant content existing **because** users, authors, and indexers use different words and misspell **— fix:** add synonym rings, spell checkers, stemming, a thesaurus mapping variant→preferred; show exact matches first to protect precision.

- **If** a common ("short head") query returns zero results **then** there's a content gap, indexing failure, or vocabulary mismatch **because** the engine can't match the term **— fix:** create the missing content, point the crawler at unindexed content (PDFs/Office/product data), or align titling/metadata to searchers' words.

- **If** relevant content exists but isn't found **then** suspect deficient titling, poor/missing metadata, or missing body phrasing **because** authors title narcissistically/jargonily **— fix:** retitle in users' terms, fix metadata, add the phrases users expect.

- **If** result rows carry too little summary info (only title/year, or identical titles) **then** pogosticking spikes and users can't choose **because** they must open each item to judge it **— fix:** add discriminating attributes (description, image, rating, price, key spec, query terms bolded in context).

- **If** users bounce repeatedly between SERP and individual results (pogosticking) **then** snippets lack scent **because** users must open each result **— fix:** enrich snippets (image, name, price, inline options) so judgments happen on the results page; don't overstuff results at the expense of summaries.

- **If** each result is so rich only ~1 fits above the fold **then** perceived relevance and inventory exposure collapse **because** users believe the best items are at top and won't scroll without hope **— fix:** put results "on a diet" so multiple appear per screen.

- **If** sort-by-title (or any single attribute) is the default ranking **then** the best result is often buried ("The Little Lame Prince" served instead of "The Little Prince") **because** pure sorts ignore popularity/relevance **— fix:** default to a blended relevance+popularity+freshness rank; offer pure sorts as options.

- **If** the "best match" for a common query ranks far from #1 (Vanguard's "job descriptions" at #79) **then** relevance ranking is misconfigured **because** the right answer is buried **— fix:** tune ranking weights or pin a best bet; monitor position over time (Sandia alerts the doc owner when a top-50 query's #1 drops).

- **If** Best Bets / Editor's Choice also appear in the algorithmic list **then** valuable space is wasted on a duplicate **because** the same link shows twice **— fix:** limit to 1–3 Best Bets per query, remove them from the algorithmic list, visually label them.

- **If** a "best bet" / promoted result is boxed with a border or background color **then** users ignore it as an ad **because** "a background color is code for advertisement" **— fix:** integrate it without an ad-like box.

- **If** results are slow (>1s), image-heavy, or load a big table before display **then** search "feels" broken and the iterative loop breaks **because** perceived speed = retrieve + load + scan, and flow needs immediate feedback **— fix:** invest in subsecond response; stream fast-and-ugly over slow-and-pretty; keep results scannable.

- **If** the interface demands a full strategy/Boolean query before showing any results, or exiles features to a separate "Advanced Search" page **then** users freeze and the features go unused **because** complex interfaces make users feel stupid and advanced search teleports them to an unfamiliar locale **— fix:** let users start with 1–2 keywords (hints, forgiving format, autocomplete, good defaults); build robust features into the main interface; reserve advanced search as a forgiving harbor for edge cases.

- **If** users must classify their own queries (title vs author vs ISBN) **then** the wrong default and mis-categorization cause systematic failures **because** people miss the selector **— fix:** accept a single query and detect type automatically; never force pre-classification.

- **If** specialized query types (IDs, SKUs, course codes, names, dates, URLs) appear frequently and get generic results **then** they're underserved **because** their intent is predictable **— fix:** detect the type and tailor results (product cards for SKUs, directory hits for names, date sort for dates, redirect a URL instead of "0 results").

- **If** users repeatedly try tiny variations of one flawed query (thrashing) **then** the anchoring bias traps them **because** they fixate on initial wording **— fix:** autocomplete to prevent typos; autosuggest related queries (from reformulation data) that needn't contain the original term.

- **If** autosuggest/related-searches are untuned to scope (suggesting "kerosene heater" while searching books; competitor brands when user typed Canon) **then** suggestions mislead and feel like steering **because** they aren't tuned to category/intent **— fix:** tune autocomplete to active scope; keep related-searches to modifications of the original keyword; show competitors in a separate module.

- **If** a frequent query has a high search-exit rate (AIGA "case study" 57.6% vs ~20% avg) **then** results are failing those searchers **because** the set is too broad/heterogeneous **— fix:** create a focused overview/landing page and make it #1 (or add a best bet).

- **If** the search box is too narrow to fit typical queries **then** users can't see/edit what they typed **because** width wasn't sized to real query lengths **— fix:** measure query character lengths and size the box (e.g., median 10 chars → 15–30 char box).

- **If** an advanced/multi-field form includes fields with negative "lift" (real-estate Neighborhood, Property Type, Square Feet, Amenities reduced lead submission) **then** those fields hurt outcomes **because** they over-narrow or confuse **— fix:** keep only fields with measured positive lift and high usage.

- **If** site search shows a high zero-click-through rate ("garbage results / gobbledygook filters"; one firm 48% zero-click) **then** findability is broken and brand suffers **because** search is treated as low-status plumbing **— fix:** treat search findability as part of brand and pre-purchase evaluation; assign cross-functional ownership to tune ranking + IA + SEO together.

- **If** search returns navigation/index/utility pages mixed with destinations (83% wayfinding pages) **then** results are cluttered **because** searchers want destinations, not signposts **— fix:** exclude nav pages and boilerplate from the index; consider search zones.

- **If** federated search highlights source/origin users don't care about **then** it adds back-end drag and front-end clutter **because** it mirrors technical architecture into the UX **— fix:** ask whether source matters more than topic/format/date; if not, unify indexes and relegate source to a facet.

---

## D. Facets, filters, and refinement

- **If** check-box facets silently switch to drill-down on click (or mix paradigms) **then** users are confused **because** the affordance promised parallel "OR" selection **— fix:** pick ONE paradigm — links/drill-down for single "equals"/hierarchy, check boxes for parallel "OR" — and don't mix.

- **If** selecting one facet makes other facets disappear with no way back **then** users can't continue refining or undo **because** the filter map vanished **— fix:** always keep all filters available (collapse to a label/More Options if needed), never remove them; provide an order-independent Any/All reset.

- **If** facet options don't cover all inventory (no "Clear," null values silently excluded) **then** the most common items become unfindable **because** engaging the facet excludes them **— fix:** add an "Other/All Others" option capturing null/empty values; show only available options yet cover all inventory.

- **If** facet widgets don't show match counts and require setting several parameters before submitting (parametric search) **then** users hit zero-result combinations **because** they can't predict compound outcomes **— fix:** use "scented" widgets showing result count per value; update results incrementally as each filter is added/removed in any order.

- **If** facets overlap so an item needs two facet values to mean one thing (a "Brand" value living inside "Product"; "sales" in both Actions and Subjects) **then** filtering/tagging is inconsistent **because** the dimensions aren't orthogonal **— fix:** make each facet an independent dimension where a resource takes one value per facet; write a clear placement rule or merge the overlap.

- **If** a candidate "facet" doesn't make sense prefixed with "by ___" **then** it isn't a true facet **because** facets are search dimensions **— fix:** demote it to a category/topic hierarchy.

- **If** faceted UI is applied to heterogeneous content (records don't share most facets) **then** facets are mostly empty and useless **because** faceted search needs uniform content **— fix:** reserve facets for reasonably uniform collections.

- **If** a discrete numeric attribute (10MP, shoe size 10) is shown as ranges (9.9–11.9MP) **then** users pick wrong ranges and get frustrated **because** ranges have poor scent and demand fraction math **— fix:** show discrete rounded values; offer sub-value drill-down only for specialists.

- **If** a ratings or price filter uses a dual slider with no inventory shown **then** users over-constrain to useless narrow bands and get zero results **because** people want "X & up" and can't predict outcomes **— fix:** single slider / "4 stars & up," default "Any," overlay a histogram/sparkline of available inventory, show counts.

- **If** a price range forces "from X to X" exact entry **then** users over-constrain to a single point **because** "around $100" is fuzzy, not a precise range **— fix:** prefer a bidirectional Sort-by-Price (sorting never returns zero) over an exact-range filter for vague intents.

- **If** faceted navigation has no SEO precautions **then** it becomes a spider trap of near-infinite duplicate URLs **because** facets combine in any order **— fix:** enforce a predictable facet order in URLs, store selection order in session, limit/block indexable combinations, use sitemaps.

- **If** a breadcrumb requires removing a facet then re-adding it to change its value (Set-Remove-Set) **then** editing feels like "turning off the radio to change the station" **because** users think "change brand," not "remove brand" **— fix:** use mega-menus on breadcrumb elements to change a value directly; use historical/path breadcrumbs only where indexability isn't needed (prefer hierarchical, stable, indexable).

- **If** scoped (section-limited) search hides popular site-wide queries (Guardian Music scope swallowing "charlie brooker") **then** users can't jump context **because** scoping over-constrains intent **— fix:** still surface site-wide editorial best bets within scoped results.

---

## E. Page, navigation chrome, interaction

- **If** visited links don't change state/color **then** users re-search the same areas **because** they can't tell where they've been **— fix:** style visited links distinctly.

- **If** a page lacks location cues (logo, breadcrumb, clear title) **then** users landing via search can't tell "am I in the right place?" **because** every page is now an entry point **— fix:** ensure every page self-identifies; run the navigation stress test.

- **If** clickable elements don't look clickable (no underline/button/distinct color) **then** users sweep the mouse hunting **because** "text for reading and text for clicking" look the same **— fix:** make links visibly different from body text.

- **If** two interactive elements look nearly identical but do different things (multiple red "X" icons; "PUSH"/"PULL" same color/shape) **then** users get *worse* over time, oscillating between tacit and explicit effort **because** the environment resists tacit learning **— fix:** make functionally different controls perceptibly distinct in form, position, color, label.

- **If** the most prominent CTA inverts a learned convention (big red button = "stay subscribed") **then** satisficing users act wrongly — a dark pattern **because** it weaponizes learned invariants **— fix:** make destructive/exit actions match conventional invariants; never invert affordances to trap users.

- **If** a gesture/action means one thing in one app/platform/version and something else in another **then** users misfire across contexts **because** digital invariants aren't physically anchored **— fix:** keep interaction invariants consistent across platforms and versions (internal + external consistency).

- **If** global navigation is missing from some pages **then** users can't "scratch a random itch" and leave for Google **because** global nav must reach everywhere from anywhere **— fix:** show global nav on (almost) every page; it also signals what the site is for.

- **If** global + local + contextual navigation together monopolize the screen **then** nav drowns out content **because** each system was designed independently and competes for real estate **— fix:** integrate the three; cut options per bar; on mobile move primary nav to thumb-reach / behind a menu button.

- **If** contextual ("inline") links are critical but visually subtle **then** scanning users miss them **because** people ignore low-contrast embedded links **— fix:** give critical related links a dedicated "see also" area; use inline links only for non-critical points of interest, in moderation.

- **If** a "find" page offers no next step (out-of-stock product, read article, viewed photo) **then** the user dead-ends and leaves **because** there's nothing to do next **— fix:** always provide a next step / safety net (notify-when-available, related items, buy, save, share).

- **If** useful links are placed in the right-hand column **then** they're ignored **because** users learned to expect advertising there **— fix:** respect learned zones (home upper-left, cart upper-right); keep load-bearing links out of ad zones.

- **If** an article/list is paginated across many pages **then** ~50% of readers drop at each "next page" click **because** clicking is higher-friction than scrolling **— fix:** prefer one long page; users scroll before they click.

- **If** a critical checkout/conversion form keeps global+local nav visible **then** users get distracted and abandon **because** every nav link is an exit **— fix:** strip nav during required multi-step processes; keep it for optional pagination/search results.

- **If** controls move location between similar pages/states **then** users can't find them **because** people locate controls by spatial memory **— fix:** position controls consistently; make a learned gesture work identically throughout.

- **If** the interface relies on hard modes (a distinct advanced-search state) **then** expect mode errors **because** users forget the current state **— fix:** prefer a modeless interface; use progressive disclosure (hover-reveal) instead of hard switches.

- **If** a multi-step process or slow operation shows a still, unmoving screen **then** users assume it crashed and abandon **because** stillness reads as failure **— fix:** animate progress and show step position.

- **If** error messages are judgmental, vague, or far from the offending field **then** users can't recover **because** they don't know what went wrong or where **— fix:** non-judgmental tone, exact cause, placed beside the field, with recovery advice; prevent (state rules up front) and protect (auto-save input).

- **If** audio plays by default **then** you annoy users in offices/public spaces **because** people often browse where sound is unwelcome **— fix:** default audio OFF, let users opt in.

- **If** drag-and-drop is used for result actions without a visible drag handle **then** users won't perceive the affordance **because** there's no signifier items are draggable, and Fitts' Law makes a small/distant drop zone hard **— fix:** provide a self-describing drag handle, a large/near drop zone, and a labeled link alternative.

- **If** rich UI (sliders, overlays, custom widgets, infinite scroll) is added without solid principles **then** usability/accessibility suffer and users can't bookmark/share a result set **because** rich elements "give us more rope to hang our users" and break the power of the page **— fix:** apply progressive enhancement / graceful degradation; ensure screen-reader and keyboard access; preserve a way to link/share/return to a specific state.

- **If** important text is rendered as images (for typographic control) **then** the page is unfindable by search and assistive tech **because** spiders and screen readers index *text*, not pixels **— fix:** use real, styled text; reserve images for images.

- **If** the design assumes a fit, attentive, single-context user **then** it fails real (impaired, distracted, mobile, hurried) users **because** >10% have disabilities and many use imperfect conditions **— fix:** design for accessibility and mobile via standards-based, layered structure/presentation/behavior; do a "close reading" with a distracted person in mind.

---

## F. Cross-channel, place, and systems

- **If** the same task forces users to relearn different behaviors/labels/layouts in each channel/section **then** place-making and consistency break **because** constant shifting between non-communicating touchpoints raises cognitive load **— fix:** establish global patterns (terminology, color, structure) reused across channels and sections (a common search/nav platform).

- **If** departments/channels each open a new uncorrelated record for one ongoing interaction (Apple's 6-day earphone fiasco) **then** users re-explain repeatedly and the experience feels broken **because** systems don't share state/identity **— fix:** correlate across channels (shared ticket/serial/identity); let a task start in one channel and finish in another.

- **If** the design relies only on top-down hierarchy with no horizontal/semantic links **then** discovery and serendipity are impossible **because** the correlation axis is missing **— fix:** add "related," "people who…," facets, tags, cross-references.

- **If** the interface supports only directed/active search (a box) and ignores passive modes **then** it serves ~1% of how people acquire information **because** ~94% is gathered passively **— fix:** add monitoring/push, browsing, ambient awareness, recommendations, social navigation.

- **If** mobile collapses a desktop mega-menu into one hamburger with deep nesting **then** most content becomes invisible (tip of the iceberg) **because** mobile can't reveal category maps on hover **— fix:** re-architect for mobile; surface key categories, don't just stuff the hamburger.

- **If** a mobile app spends ~24% of screen on chrome and shows only 3 results, or drops prior facet selections when keywords are added **then** scent and the refinement flow suffer **because** results space is starved and each refinement restarts **— fix:** reclaim chrome space (Four Corners / Status-Bar Drop-Down); preserve refinement state across keyword and facet changes; ≤5 controls across (prefer ≤4).

- **If** redesigns reshuffle navigation paths returning users have learned (or a place silently moves/changes its rules — privacy morphs, feed algorithm flips) **then** you destroy procedural knowledge and trust **because** perception relies on places persisting **— fix:** preserve learned paths; warn clearly and concretely about what changes and where things go; identify which pace-layer you're editing and keep slower layers stable.

- **If** there's no stable, globally accessible landmark/anchor (logo→home, persistent nav) or a map that requires mental rotation **then** lost users can't reorient and won't explore **because** landmark/orientation knowledge enables recovery **— fix:** provide a stable reference point aligned to the user's viewpoint.

- **If** a system performs actions on its own without signaling its activity, scope, and rules **then** users suffer change-blindness and broken trust **because** a small indicator is easily missed **— fix:** make digital agents and their cause-effect perceivable; expose what the system did and why.

- **If** a system obscures location/ownership/scope/state behind false seamlessness ("the cloud") **then** users can't act ("where is my stuff and what's happening to it?") **because** false seamlessness hides needed structure **— fix:** make "beautiful seams" — show where one context joins another.

- **If** a list/menu has no meaningful ordering principle the user recognizes **then** Hick's Law stops applying and reaction time becomes linear (scan every item) **because** clustering is impossible **— fix:** impose a known sequence (alphabetical, semantic) or split into consistent clusters.

- **If** ordering reflects the provider's internal logic, not the user's model (scale product codes; an alphabetical menu that breaks in another language — IKEA's Swedish menu) **then** it fails specific users **because** an abstractly "correct" principle in a vacuum hampers real use **— fix:** order by user-relevant criteria/placement, not internal convention.

- **If** one big undifferentiated array of equally-weighted choices is presented **then** users suffer choice overload and may not decide (jam study: 30% bought from 6 vs 3% from 24) **because** more options raise decision effort and lower satisfaction **— fix:** organize-and-cluster, then focus-and-magnify (guide to a niche, then show related).

---

## G. Process, metrics, governance, research

- **If** the primary success metric is "engagement"/time-on-site **then** likely incentive misalignment **because** the environment is incentivized to poke, interrupt, and use intermittent variable rewards **— fix:** measure task completion and "set the user free"; report whether the user got their time's worth.

- **If** advertising/monetization dominates the interface (Myspace) **then** short-term revenue rises then the system collapses **because** ads trade against UX and loyalty **— fix:** cap ad density (Facebook ~5% of feed); protect long-term UX over quarterly results.

- **If** an easy-to-measure metric (clicks, conversions, quarterly revenue) is optimized while quality/loyalty isn't measured **then** the team optimizes the wrong thing **because** "once a metric is defined it's hard to ignore" **— fix:** pair quantitative metrics with insight/synthesis; ask "what's important but unmeasured and being ignored?"

- **If** the team jumps straight to screen layouts / detailed wireframes before defining functional structure **then** changes feel too costly and "order masquerades as understanding" **because** UI is relatable so structure gets skipped and polished artifacts create inertia **— fix:** build a concept model / floor-plan (parts, relationships, public/private zones, feedback, goals, boundaries) first, in low-fi bubble diagrams.

- **If** the system is observed only via survey, analytics, lab test, or self-report **then** you're missing real context **because** people poorly self-report motivation and labs prime over-thinking **— fix:** use applied ethnography / contextual inquiry; observe real behavior and the language people use. Validate every analytics finding with a qualitative method before acting (data shows *what*, not *why*).

- **If** the IA is backed by a single method or intuition alone **then** it's unreliable **because** cross-method consistency builds confidence **— fix:** combine card sort + interviews + analytics/search logs + usability/findability test.

- **If** categories were validated only by where users would *file* an item (closed sort/clustering) **then** findability is untested **because** classifying ≠ finding **— fix:** give task-based "where would you look" tests (card-based classification evaluation).

- **If** a navigation IA was derived straight from cluster-analysis output, or top-level categories are a literal dump of every card-sort group (~20+) **then** it represents no real user's model and overwhelms **because** clustering forces a single statistical best-fit and sorts must be synthesized, not transcribed **— fix:** use stats to spot patterns; consolidate to a smaller basic-level set with judgment.

- **If** the team only does single-loop fixes (tweak within current goals) and never questions the goals **then** it "runs efficiently off a cliff" **because** defensiveness blocks double-loop learning **— fix:** surface assumptions as testable hypotheses; be willing to change goals/strategy, not just tactics.

- **If** a quick fix is shipped without observing/root-causing the system first **then** the system "kicks back" with unintended consequences **because** naïve intervention treats symptoms **— fix:** watch before you disturb; diagnose root cause; first, do no harm.

- **If** a critical function depends on one component with no redundancy **then** a modest shock collapses the whole system **because** resilience requires key functions served by more than one element **— fix:** design redundancy / multiple paths for critical functions.

- **If** decisions are made under time pressure and then defended (commitment) **then** the team overlooks disconfirming evidence **because** visible irrevocable acts trigger self-justification **— fix:** keep decisions reversible; create non-binding "space-time" (parallel wireframes) and revisit before committing.

- **If** content is never retrieved by the top ~100 queries (or spidered but rarely accessed) **then** it may be ROT (Redundant, Outdated, Trivial) **because** important needs don't surface it **— fix:** weed, de-prioritize, or refresh it; removing ROT can halve the search space.

- **If** an A/B test is proposed for a complex, interconnected feature **then** results may mislead **because** variables can't be isolated, users adapt, and dual integrated builds are costly **— fix:** use A/B only where variables isolate; otherwise rely on research, prototypes, and strategic synthesis (the "41 shades of blue" cautionary tale).

- **If** there's no clear written vision/purpose and no identified steward **then** weak cohesion and drift toward irrelevance **because** actors can't align changes and unmaintained environments decay **— fix:** articulate purpose + a few durable principles (Wikipedia's Five Pillars); assign stewardship; document governance for growing the vocabulary.

- **If** the design adds views/filters/options without evidence each is used or valued **then** it adds complexity without capability **because** interaction count ≠ value created **— fix:** justify each interaction by value produced; cut low-value ones.

---

## H. Open-world / structured-data modeling

- **If** the same fact appears on multiple screens and can disagree between them **then** the design stores presentation, not data **because** there's no single source the views derive from (Pluto still listed as a planet) **— fix:** model the entity once and generate every view from it.

- **If** an identifier/URL/slug encodes a status, owner, or location that can change **then** it breaks or misleads later **because** it assumes an impermanent attribute **— fix:** base identifiers on stable properties; separate identifying from resolving; design for persistence.

- **If** the structure enforces "exactly N" or "required field" as hard validation on open/federated data **then** it fights the Open World assumption **because** a missing value means "not yet stated," not "violated" **— fix:** enforce required/max constraints only inside an explicitly closed scope; assert distinctness before counting.

- **If** everything is modeled as a category and nothing as a concrete item ("rampant classism") **then** relationships between categories yield no useful answers **because** statements about sets don't propagate to members ("Poets wrote poems" tells you nothing about any poet) **— fix:** decide what is a thing (instance) vs a kind (class) via the "can I imagine its instances?" test.

- **If** deep, empty subclass hierarchies are created "just in case" **then** the model is over-engineered (creeping conceptualization) **because** every empty class constrains future reuse for no current benefit **— fix:** apply KISS; keep only classes with instances or restricted properties; scope by competency questions and stop.

- **If** a relationship/label could be read in two directions (skos:broader: is the subject broader, or does it *have* a broader term?) **then** users misapply it **because** intuition diverges from formal meaning **— fix:** add explicit human-readable labels/comments stating the intended reading.

- **If** the design assumes one central authority can own all the data **then** it won't survive multi-org or user-generated reality **because** AAA and the network effect require contributions you don't control **— fix:** design for merge — stable shared identifiers + additive per-source layers; add crosswalks where systems use different element names.
