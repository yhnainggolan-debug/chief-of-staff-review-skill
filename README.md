# Chief of Staff Review Skill

A public OpenClaw skill for reviewing decks, proposals, board materials, investment notes, business cases, and strategy memos like a sharp chief of staff.

This skill is built to answer questions like:
- Is this decision-ready?
- What deserves executive attention?
- What is missing for a good decision?
- What numbers look abnormal or too aggressive?
- What should I ask in the room?
- Should I approve, defer, reject, or ask for a revision?

## What it does

The skill reviews materials through these lenses:
- decision clarity
- evidence quality
- financial quality
- execution realism
- risk framing
- board readiness
- abnormal numbers and unjustified assumptions
- relevant headlines from the last 7 days that may materially change the decision

It also includes sector lenses for:
- solar power and renewables
- M&A
- mining
- logistics
- financial services
- B2B enterprise software

## Best trigger phrases

These work well in chat when you attach a deck or memo:
- `cos review`
- `cos review deep`
- `chief of staff review`
- `review this like my chief of staff`
- `review this deck`
- `is this decision-ready?`

A plain `review this` with an attached deck should often work too, but the phrases above are more reliable.

## What the output looks like

The skill is designed to produce two modes:

### `cos review`
A short boardroom version:
- verdict
- why
- what matters most
- decisions my boss needs to make
- questions I'd ask
- relevant recent headlines only when material
- call

### `cos review deep`
A full structured version:
- bottom-line judgment
- scored dimensions
- what deserves attention
- decisions prompted by the deck
- what is missing
- abnormal numbers check
- clarifying questions
- in-the-room questions
- red flags
- recommended next step
- optional rewrite of the decision memo spine
- relevant recent headlines that strengthen, weaken, or complicate the case

Both modes now anchor substantive points to deck pages.

## Quick start for humans

### Easiest use
1. Attach a deck, memo, or proposal in OpenClaw.
2. Type: `cos review`
3. Read the short boardroom review.
4. If needed, follow up with `cos review deep` for the full version.

### Best default phrase
If you only remember one phrase, use:

```text
cos review
```

## Example prompts

### Generic deck review
```text
cos review
```

### Deep version
```text
cos review deep
```

### Board readiness check
```text
chief of staff review
Is this board-ready?
```

### M&A review
```text
cos review
Pressure-test this M&A deck. Focus on deal thesis, diligence gaps, weak assumptions, integration risk, and valuation logic.
```

### Solar / renewables review
```text
cos review
Review this renewables deck. Focus on project economics, tariff or offtake assumptions, capex realism, financing risk, and abnormal numbers.
```

### B2B software review
```text
cos review
Review this software deck. Focus on revenue quality, retention, sales efficiency, implementation burden, and margin quality.
```

## Example before and after

### What a weak prompt looks like
```text
review this
```

### What a much better prompt looks like
```text
cos review
Tell me whether this is decision-ready, what deserves my attention, what looks abnormal in the numbers, and what questions I should ask in the room.
```

The first one may still work.
The second one tells the system exactly what sharp review you want.

## Example output shape

```text
Verdict
Not decision-ready. The direction may be sensible, but the economics and execution proof are still too weak to support approval.

Why
- Revenue ramp is too aggressive for the evidence shown. (p. 3-4)
- Margin / PBT improvement lacks a clean operating bridge. (p. 4)
- Downside framing is missing. (p. 4)

What matters most
- H2 depends heavily on a few large assumptions landing on time. (p. 3-4)
- Signed, high-conviction, and exploratory work should not be mentally blended. (p. 3)
- Cash conversion risk is not clearly addressed. (p. 4)

Decisions my boss needs to make
- Whether to treat the FY plan as an operating plan or as an upside case. (p. 4)
- Whether to request a revised bridge before backing the plan. (p. 3-4)

Questions I'd ask
- If the biggest project slips, what breaks first? (p. 3-4)
- What is signed versus merely likely? (p. 3)
- Where is the revenue-to-cash bridge? (p. 4)

Call
Defer pending answers. Ask for a revised financial bridge, downside case, and decision-ready version of the deck.
```

## Install into another OpenClaw workspace

### Option 1: simple copy

Copy the skill folder into the target workspace's `skills/` directory:

```bash
cp -R skill/chief-of-staff-review /path/to/other-openclaw-workspace/skills/
```

### Option 2: use the sync script

Use the included script:

```bash
./scripts/sync-into-openclaw.sh /path/to/other-openclaw-workspace
```

This copies the skill into:

```text
/path/to/other-openclaw-workspace/skills/chief-of-staff-review
```

### Option 3: install from GitHub on another machine

```bash
git clone https://github.com/yhnainggolan-debug/chief-of-staff-review-skill.git
cd chief-of-staff-review-skill
./scripts/sync-into-openclaw.sh /path/to/openclaw-workspace
```

## Updating the skill later

If this repo is your source of truth, updates are simple:

```bash
cd chief-of-staff-review-skill
git pull
./scripts/sync-into-openclaw.sh /path/to/openclaw-workspace
```

That is the whole reason the sync script exists.

## Why the sync script matters

If you only install the skill once, manual copy is fine.

If multiple OpenClaw bots or machines need the same skill, the sync script matters because it:
- makes updates repeatable
- avoids path mistakes
- overwrites the local installed copy cleanly
- gives you one command to run after `git pull`

In other words, GitHub becomes the source of truth, and the script makes local installation boring and consistent.

## Repository structure

```text
chief-of-staff-review-skill/
├── README.md
├── LICENSE
├── scripts/
│   └── sync-into-openclaw.sh
└── skill/
    └── chief-of-staff-review/
        ├── SKILL.md
        └── references/
            └── review-standards.md
```

## Screenshots

This repo does not include screenshots yet. The example prompts and example output above are meant to show exactly how the skill behaves in practice.

## License

MIT
