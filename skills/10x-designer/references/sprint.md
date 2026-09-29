# Design Sprint — problem to tested direction, compressed

Goal: run the useful core of a design sprint (map → sketch → decide →
prototype → test) with AI compressing the mechanical parts, so a solo
designer or small team gets a validated direction in hours-to-days, not a
week.

## Process

Ask which mode first — **solo-compressed** (designer + AI, hours) or
**facilitated** (real team, AI prepares materials). Then run the five stages;
each stage produces an artifact before moving on.

### 1. Map
Restate the challenge as a sprint question ("Can we ___ so that ___?").
Produce a simple actor→steps map of today's experience and mark the target
moment — the step where the sprint focuses. If no brief exists, run the
design-brief workflow's template in fast mode (sections 1–4 only) first.

### 2. Sketch
Generate 4–6 divergent solution concepts for the target moment. Each concept:
a name, a one-paragraph pitch, and a rough structure (use the wireframe
workflow's grayscale style, one screen each). Deliberately include one
conservative, one ambitious, and one weird option — sprints die of premature
convergence.

### 3. Decide
Score concepts against the sprint question and brief constraints in a small
matrix (impact on the metric, feasibility within constraints, risk). Recommend
one winner + one element worth stealing from a loser. In facilitated mode,
output this as a voting sheet instead of deciding.

### 4. Prototype
Run the prototype workflow on the winner. The bet (its step 2) is the sprint
question verbatim.

### 5. Test
Produce a 5-user test kit: screener criteria, 5-task script mapped to the
sprint question, a results grid (task × participant, pass/struggle/fail), and
a debrief template that forces a decision: persevere / pivot / kill. If asked
to simulate, run 3–5 persona walkthroughs through the prototype and fill the
grid — label it clearly as simulated signal, weaker than real users.

## Deliverable

- `<project>-sprint/` folder: `01-map.md`, `02-concepts.html`,
  `03-decision.md`, `04-prototype.html`, `05-test-kit.md`
- In-chat: sprint question, winning concept and why, standard footer.
  "Next" is running the test, or a crit on the prototype.
