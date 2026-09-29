---
description: Adapt 10x-designer to your team — design system, crit personas, conventions, and per-workflow customizations
argument-hint: [optional: what to set up or change]
---

Load the `10x-designer` skill and read its `references/configure.md`, then follow the Configure workflow for:
$ARGUMENTS

If no argument was given: if a config exists at either layer (project
`.10x-designer/config.md`, or shared `~/.10x-designer/config.md` /
`$TENX_DESIGNER_HOME`), show a short summary of the effective configuration,
naming which layer each part comes from, and ask what to change;
otherwise offer first-time setup (5-minute interview, or point me at your
existing docs and I'll draft it).
