# Information Architecture — Principles

Deduplicated, cross-referenced timeless principles. Concrete numbers/thresholds and named laws preserved; sharpest phrasing kept, vague duplicates dropped.

---

## 1. Foundations: what IA is for

- **IA serves two goals: findability AND understanding.** Structure information so it's easy to *find* (meet the information need) and easy to *understand* (create a sense of place that makes sense to people). Two flip sides of one coin.

- **You can't use what you can't find — findability precedes usability.** A beautiful, usable interior is wasted if users never arrive. Score findability at two layers: the single object (title, label, metadata) and the whole environment (navigation + retrieval).

- **To organize is to impose structure in order to enable later interactions (find, identify, select, obtain, use).** Organization is never an end in itself; trace every structural choice back to the interaction it serves. More filters/views ≠ a better system — value-per-interaction is what matters; resist bloat that doesn't pay off.

- **Design software as places, not products.** People inhabit digital environments to work, bank, learn, shop, socialize. "Product" imposes a consume-and-dispose mindset; "place/architecture" forces longer-term, contextual, civic thinking. Information environments are "places made of information" read via semantic cues.

- **Build place, not just space.** Space is geometric and impersonal; place is experiential, layered with memory/behavior, and accrues *over time* (the 4th dimension) — Twitter/Facebook were "empty houses" until users filled them. Without a sense of place, users get lost and the experience fails.

- **A design is alive only to the degree it is free of inner contradictions ("the quality without a name").** A system has life when its forces resolve and self-maintain; it's dead when it sets up forces that tear it down. The quality is objective, testable by *feeling* — people agree 90–99% on how a pattern makes them feel even while disagreeing on opinion/taste.

---

## 2. Context, users, and the three lenses

- **Design for users, content, AND context — the "three circles."** Users (needs, tasks, seeking behaviors), content (volume, format, structure, dynamism, ownership), context (business goals, culture, politics, tech). Every information ecology is unique; one system never fits all. When stuck, decompose into the three circles.

- **Context is the agent's *understanding* of relationships in its environment — not the surrounding circumstances.** It emerges in the moment from first-person perception and action. Start from the *situation*, not stated goals (goals are largely fictional reifications); the same query ("kitchen faucet") means different things from different situations.

- **You are not the user; you don't know the user; you can't control the experience.** Run real research (field studies, search logs, card sorts, contextual inquiry), not intuition or focus groups. People poorly self-report motivation; labs prime over-thinking — "understanding the Grand Canyon through postcards."

- **Users satisfice and obey the Principle of Least Effort.** People take the path of least *average* effort, act first and reason later, accept the first "good enough" option, trade quality for accessibility (Google over the library), and won't invest effort even to save effort later (the paradox of the active user). Design for minimal, tacit, distracted attention.

- **Mooers' Law: a system won't be used if having the information is more painful than not having it.** Usefulness depends on the user's social context, not just stated needs.

- **Match the design to the user's information need.** Needs span known-item lookup (the "perfect catch"), exploratory (lobster trap), exhaustive (driftnet), and refinding. Seeking is iterative, integrated (search + browse + ask), "berry-picking" — what you find changes what you seek; value accrues across the session, not in one final result set. Support both lookup and exploration.

- **Most information is acquired passively — design for serendipity.** By one estimate, ~80% of what we know comes from *being aware*, ~14% monitoring, ~5% browsing, only ~1% active searching (~94% passive). Support push, ambient discovery, recommendations, "what's new," social navigation — not only a search box.

- **Design for the perpetual intermediate.** A user is a beginner only briefly (~3 visits), then a long-lived intermediate who rarely becomes an expert. Don't lavish all effort on the two least-common groups; reveal features progressively without blocking the typical user.

---

## 3. Organization, classification, and categories

- **There is no one "right" way to organize information — every classification is biased and purposeful.** Most content can be validly classified many ways (topic, task, audience, time, place, alphabet); the best depends on users, goals, context. Categories embed their makers' purposes, profession, politics; there is no neutral taxonomy. Chasing the "one true structure" is a false goal.

- **Provide multiple paths to the same information — every single classification is flawed.** Offer exact + ambiguous schemes, search + browse, hierarchy + index + sitemap, taxonomy + facets + tags. Redundancy is the best guarantee the message gets across.

- **Organize to match how users think, not the org chart, brand, database schema, or page layout.** Schemes reflect their creators' perspective; users who don't know internal ownership can't find cross-cutting content. Separate the organizing principle (logic) from its implementation (storage and presentation) — the three-tier rule.

- **Categories have fuzzy boundaries, family resemblance, and prototypical members — the "classical" crisp-definition view is how people *think* categories work, not how they *work*.** Expect items that fit two places or only barely fit; don't force a family-resemblance/multi-faceted domain into a rigid mutually-exclusive tree.

- **Design at the basic level of categorization.** There's a cognitively privileged middle level (chair, not furniture or office-chair; dog, not mammal or Dalmatian) — learned earliest, named fastest, easiest to picture. Anchor primary nav there and surface concrete sample subcategories; abstract top-level taxa give users and search engines nothing to act on.

- **Start broad-and-shallow; lean wide over deep when ordering is meaningful.** Hierarchy is familiar and gives a mental model — use it as the top-level umbrella, embed faceted/database subsets, use hypertext sparingly. Depth beyond ~2–3 levels loses people; one well-ordered wide menu beats nested submenus (Hick's Law: choice time is sublinear in option count when users can cluster — one ordered 8-item menu beats two 4-item ones). Group high breadth into discrete labeled clusters (NCI's ~85 links in 10 groups).

- **Prefer faceted classification for collections with several independent dimensions.** Ask "how can I describe this?" (topic, type, audience, geography, price…) instead of "where do I put this?" (single hierarchy). Digital content can live in many places at once — exploit cross-listing/polyhierarchy. Facets must be *orthogonal* (one value per facet per item) and work best on uniform content.

- **Every hierarchical relationship must pass the all/some test.** A narrower term is valid only if ALL of it falls within the broader (all apples are fruit; only some fruit are apples). Each link must be true generic ("is a kind of"), instance, or whole–part — in all cases, not "often." Only true class-inclusion is transitive; don't model attribution/possession as inclusion.

- **Represent commonality high and variability low; keep mutually exclusive categories disjoint and semantically balanced.** Put what things share in broad parents, distinguishing detail in narrow children; define a subcategory as an intersection (a distinguishing rule), not a hand-placed child. Avoid one giant bucket with empty siblings.

- **Granularity sets the recall/precision tradeoff; model at the finest granularity any anticipated interaction needs.** Fine categories raise precision, lower recall; coarse do the reverse. You can collapse fine→coarse but never recover coarse→fine (one "Address" blob can't become Street/City/Postal). Match granularity to how specific real queries are.

---

## 4. Labels, vocabulary, and metadata

- **Words are both interface and infrastructure; labels tell users where they are AND what they can do.** Hide the words and most software is unusable. Grouped labels evoke a domain even unnamed ("Studio/Classes/Poses" = yoga) and constrain ambiguous terms. Meaning shifts from intent to interpretation — choose with care.

- **A label is a signpost, not a place to promote the brand — speak the user's language.** A good label is "dull as dirt," instantly obvious, never makes you pause. Priority: user's words > domain convention > brand. Mine real vocabulary from search logs, card sorts, free-listing; map variants to preferred terms.

- **The Vocabulary Problem is real and pervasive: people reliably disagree on the "obvious" word.** No single label is natural to everyone, so a design assuming one term will be understood will fail some users. Mitigate with controlled vocabularies, synonyms/aliasing, user testing.

- **Labels are systems — design for consistency.** Consistent style, presentation, syntax, granularity, comprehensiveness, audience-language make a labeling system predictable, learnable, "invisible." One term per concept, applied identically (wording, color, location) everywhere; repeated navigation magnifies inconsistencies.

- **Distinguish the concept from the term that labels it.** A concept may carry many synonymous terms (one preferred, the rest nonpreferred/hidden). Design at the concept level to prevent duplicate entries and inconsistent tagging. Three label roles per concept: preferred (one per language), alternative (synonyms), hidden (misspellings, for recall).

- **A controlled vocabulary gets users to content regardless of the words they type.** Three relationship types: equivalence (synonyms/variants/spellings — raises recall), hierarchical (broader/narrower), associative (related/see-also). Better that a "kitten" query returns the one "cat" result than "no results." More diverse users and freer input ⇒ more synonyms needed.

- **Metadata is the brick of IA; descriptive metadata drives findability.** Three types: intrinsic (composition), administrative (handling), descriptive (subject/nature). Descriptive matters most because humans remember stories, not IDs/dates — hand-craft it from the stories people tell, especially for word-poor content (images, audio, short text).

- **Ontology first: define what your words *mean* before you arrange them; meaning lives in formal structure, not names.** A reified label ("calendar," "account," "friend," "cloud") that means many things collapses distinct contexts to one point. A node with a meaningful name but no instances/relationships is a "wishful name." Names are for humans; relationships are for the system.

- **Use metaphors deliberately; changing a metaphor changes behavior.** "Files/folders/desktop" relate bits to known objects; Medium's switch from on/off "heart" to multi-tap "clap" reframed the place and gave granular feedback. Metaphors only work when familiar and carry baggage — use for brainstorming, break explicitly, don't impose as a global organizing scheme.

- **Avoid naming on impermanent attributes; give every entity a stable identifier distinct from its display label.** Names based on status/owner/location rot and break links; identity must be asserted, not assumed from string distinctness (two IDs may denote one thing; two people name one thing differently).

---

## 5. Navigation and wayfinding

- **Design for wayfinding: every page must answer where am I, where are the things I want, how do I get there, where have I been.** On the web everyone navigates by landmarks — there's no spatial sense — so every page must supply location cues (logo, clear title, breadcrumbs, visited-link color). Run the navigation stress test: drop into a random interior page and check self-location.

- **On the web the journey often begins at the destination, not the home page.** Deep links, search, and feeds mean many users never see the home page; every page is an entry point. Optimize entry points everywhere; bottom-up structure must let answers "rise" to deep-linked pages.

- **Provide a stable, globally accessible landmark/anchor (logo→home, persistent nav) and recognizable wayfinding elements.** The five elements of wayfinding (paths, edges, districts, nodes, landmarks) make environments legible; landmark knowledge lets lost users recover and dare to explore.

- **Navigation comes in complementary types serving multiple seeking behaviors; spend most effort on associative navigation.** Structural (global + local) maps hierarchy; associative ("related," "next," "more like this," safety nets) connects related content; utility connects tools (login, help, search). "If you have 10 hours for navigation, spend nine on associative." No find should dead-end — every found item must offer a next step.

- **Empower the horizontal (correlation/similarity) axis, not only the vertical (hierarchy).** In cross-channel ecologies the horizontal "syntagmatic" axis — related items, facets, tags, cross-references — is the backbone that connects items and where discovery and serendipity happen.

- **Honor information scent / information foraging.** Users follow cues that promise their target and leave faster when scent is weak. Surface second-level sample subcategories; write descriptive labels, link text, snippets.

- **People perceive nesting and overlap, not strict categorical trees; "we say navigate but mean understand."** Nesting is perceiver-dependent and shifts with task. Build resilient structures (facets, hubs, cross-listing, seasonal categories) that catch users where they are; navigation chrome is a fallback, not the path.

- **Be consistent and honor conventions before inventing — but consistency is contextual, not absolute.** Visitors arrive with expectations from other sites; survey best-practice patterns and ask *why* before copying. Invariants make environments learnable. Yet rigid consistency (org-mirrored taxonomies) can strand users; favor the coherent whole over local polish (Gestalt: whole > sum of parts).

---

## 6. Search

- **Simple, fast, and relevant are table stakes, not features.** Hard-won through research, design, engineering. Subsecond (<1s) response enables the iterative search-scan-search loop; slowness breaks flow and is itself a ranking factor. Keep the interface a single keyword box (Google expectation); add faceting/advanced only where the domain truly demands it.

- **Don't reach for search to patch broken navigation.** Search performs better atop a strong navigation/vocabulary; fix structure first. Browse doesn't scale — at large scale, successful systems are Federated (search across everything), Faceted (move fluidly without restarting), and Fast. On small sites a clear taxonomy may beat search (which can dead-end).

- **Recognition over recall.** It's easier to recognize a wanted item than to describe it in a query. Make valuable options visible; offer browse, facets, thumbnails, autosuggest, related searches, carts/lists/history to offload short-term memory.

- **Start search design from the zero-results page.** Designing the no-results case first forces the team to confront the hardest problems (spelling, over-constraining, partial match, recovery) and signals dedication to customer success. Always state status clearly and offer a productive way out.

- **Best first is the most universal, important pattern.** The top 3 results draw ~80% of attention and drive 25–50% of query reformulations; visibility falls off a cliff after the first page. Default to a *blended* relevance + popularity + freshness rank, not a raw single-attribute sort; offer pure sorts as options. Curate 1–3 Best Bets for short-head queries and remove them from the algorithmic list.

- **Snippet design is the heart of results — "the content is the interface."** A result row must carry enough scent (concise summary, keywords-in-context highlighted, source hint, visited cues, discriminating metadata/image/price/rating) to decide *without* clicking through. Show the greatest number of results that doesn't starve per-result info — balance pogosticking against perceived relevance.

- **Recall and precision are inversely related — pick a side deliberately, per the user's need.** You can't maximize both. High recall for research/legal/exhaustive; high precision for quick answers. This may expose a tension between user goals (find one thing fast) and business goals (allow noise for cross-sell) — make it an explicit, defensible choice.

- **To search better, search less.** IR complexity rises exponentially with linear content growth. Remove ROT (Redundant, Outdated, Trivial) content — often halves the search space — and add metadata so users can slice into smaller sections (search zones).

- **Site-search query data is the one place users tell you what they want in their own words.** Treat query logs as direct, unmediated feedback. Focus the short head first (Zipf: a handful of queries drive most traffic; on MSU.edu top 14 = 10%, top 42 = 20%, top ~100 = 30%). Match content vocabulary to searchers' words. Clean the data (remove junk) before analyzing. SSA tells you *what*; pair with qualitative research for *why*.

- **Clarify, then refine.** Ambiguous queries need a prominent category selector (clarify) before facets; unambiguous queries need facets to refine and explore — a fixed order. Every facet must reflect only available inventory yet still encompass all inventory (use "Other/All Others" for nulls), with an order-independent Any/All undo.

---

## 7. Cross-channel, systems, and ethics

- **Design the whole cross-channel process, not isolated touchpoints — "it's the arrows, not just the boxes."** A task spans channels and the physical/digital divide; users perceive one experience and don't care about your channels. The transitions between touchpoints are where experience breaks and where leverage hides. Keep coherent semantic structures across web/app/voice while adapting to each channel's constraints. Let users start a task in one channel and finish in another.

- **Different layers change at different rates — design for adaptability (pace/shearing layers).** Visual design and content churn fast; semantic structure should stay relatively stable ("fast learns, slow remembers"). Combine slow, enduring layers (taxonomies, ontologies) with fast, adaptable layers (folksonomies, tags); let lessons settle from fast into slow. IA is hard to undo, so structure up front pays for years.

- **Design conceptual structure before form; don't let the order of artifacts masquerade as understanding.** Define the floor plan / concept model (parts, relationships, public/private zones, boundaries, feedback, goals) before screens — UI is relatable so structure gets skipped. Use low-fi bubble/blob diagrams; polished wireframes create false confidence and inertia.

- **Start as simple as possible (Gall's Law) and design generative environments that evolve.** A complex system that works evolved from a simple one that worked; a complex system designed from scratch never works. Ship minimal viable structure and let it grow by piecemeal repair driven by observed defects. Prefer rules that generate order over fully prescribed top-down structures.

- **Plan and build are intertwingled — both halves have value.** Agile-vs-waterfall and think-vs-do are false binaries. "Plans are useless, planning is indispensable." Planning IS making — design in the medium of construction (HTML prototypes, not just wireframes). IA needs ongoing administration (tagging, weeding, monitoring, governance) to stay good.

- **Think systemically: information is a high-leverage point; optimizing a part undermines the whole.** The cheapest high-impact intervention is often adding/restoring a feedback loop where one was missing (visible electric meters cut consumption ~30%). Specialists rewarded on narrow metrics (per-department conversion) degrade the overall experience. Break silos; correlate across systems. Observe and root-cause before intervening ("watch before you disturb"; first, do no harm).

- **Code is a function of culture; the right design fits both the company and its customers.** Most recurring IA/UX problems are rooted in governance, metrics, and culture, not pixels — if you fight culture it wins. Software that doesn't work "the way we work" fails like an employee who doesn't fit. Study users AND stakeholders.

- **Align user goals with business incentives; treat attention as nonrenewable.** When goals misalign, users get exploited and you get a "greedy environment." Attention can't be saved for later — designs should *elucidate* (help the user finish and leave), not maximize "engagement." Cap ad/monetization density (Facebook ~5% of feed) or the system collapses (Myspace: $605M → $47M revenue).

- **Make the invisible visible, with honest "beautiful seams"; pair quantitative metrics with quality/satisfaction.** Reveal hidden assumptions, links, and loops ("daylighting"). Users need to see where one context joins another — false seamlessness ("the cloud") hides the structure people need to act. Optimizing only the easy-to-measure "streetlight" metric degrades the whole; ask "what's important but unmeasured and being ignored?" Evaluate every interaction on efficiency, effectiveness, AND satisfaction.

---

## 8. Patterns and craft

- **A pattern = context + a recurring system of forces + a configuration that resolves them.** Simultaneously a thing in the world and a generative instruction, so it's empirically true or false — not a value statement. A pattern works fully only if it resolves ALL the forces present; ignored forces "lurk underground" and erupt later (Le Corbusier's towers ignored territoriality → unused green space).

- **Patterns combine into a *language*; creative power comes from the language, not raw talent.** A pattern language generates infinite coherent designs and steers away from nonsense; "if your language is poor you cannot make good buildings until you enrich your language." Judge the language as if it were the finished design — defects can't be fixed later. Order patterns largest/most-controlling structure → smallest embellishment, one at a time, at full intensity.

- **Understand the rules, then break them with intent.** A pattern reused in the wrong context becomes a problem; the *links* between patterns matter as much as the patterns. State the true invariant and mark which parts are adaptable, using a confidence grading (** = true invariant, * = partial, none = one example).

- **Repair the context, not just the object; leave no dead "in-between" places.** Adding any element should also repair its surroundings so the larger whole becomes more coherent. Every part must be positive and whole — corridors, waiting limbo, gaps between components, unowned transitional/empty states are failures.

- **Provide an intimacy gradient: order spaces public → private.** Sequence zones (entrance → semi-public → private) and route navigation along that gradient; the spatial precursor to progressive disclosure and onboarding/disclosure layers.

- **Repeat patterns, but vary the parts; wholeness is generated by differentiation, not assembled from identical modules.** Living designs repeat relationships while letting each instance adapt to local context; dead designs force content into identical grid slots ("chopped and disfigured to fit"). A counterweight when critiquing rigid token/grid systems — repeat *patterns* while letting *instances* differ.

---

## 9. Open-world data modeling (for IA backing structured systems)

- **Model the subject, not the presentation — single source of truth.** Represent entities and relationships, then generate views; when the human-readable page is the only store, the same fact lives in many places and drifts out of sync (Pluto still listed as a planet).

- **Assume an Open World; design for merge.** Absence of a fact is not proof of its negation — don't conclude "complete / none / only N" unless scope is explicitly closed. Anyone can say anything about any topic; design for contributions from sources you don't control (stable shared IDs + additive layers) rather than a single gatekeeper.

- **Choose the lowest level of expressivity that answers the competency questions, then stop (KISS / no creeping conceptualization).** More expressive/rigid is not better, only different; every added class or constraint restricts how others can extend your model. Design for reuse by maximizing combinability, not by modeling everything up front.
