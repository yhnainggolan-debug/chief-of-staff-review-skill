# Chief of Staff Review Skill

A public OpenClaw skill for reviewing decks, proposals, board materials, investment notes, business cases, and strategy memos like a sharp chief of staff.

It is built to help answer questions like:
- Is this decision-ready?
- What deserves executive attention?
- What is missing for a good decision?
- What numbers look abnormal or too aggressive?
- What should I ask in the room?

## What it does

The skill reviews materials through these lenses:
- decision clarity
- evidence quality
- financial quality
- execution realism
- risk framing
- board readiness
- abnormal numbers and unjustified assumptions

It also includes sector lenses for:
- solar power and renewables
- M&A
- B2B enterprise software

## Best trigger phrases

These work well in chat when you attach a deck or memo:
- `cos review`
- `chief of staff review`
- `review this like my chief of staff`
- `review this deck`
- `is this decision-ready?`

A plain `review this` with an attached deck should often work too, but the phrases above are more reliable.

## Output style

The skill is designed to produce:
- a bottom-line judgment
- scored dimensions
- what deserves attention
- what is missing
- abnormal numbers check
- clarifying questions
- in-the-room questions
- red flags
- recommended next step
- optional rewrite of the decision memo spine

## Repository structure

```text
chief-of-staff-review-skill/
├── README.md
├── scripts/
│   └── sync-into-openclaw.sh
└── skill/
    └── chief-of-staff-review/
        ├── SKILL.md
        └── references/
            └── review-standards.md
```

## Install into another OpenClaw workspace

### Simple manual copy

Copy the skill folder into the target workspace's `skills/` directory:

```bash
cp -R skill/chief-of-staff-review /path/to/other-openclaw-workspace/skills/
```

### Simple sync script

Use the included script:

```bash
./scripts/sync-into-openclaw.sh /path/to/other-openclaw-workspace
```

This copies the skill into:

```text
/path/to/other-openclaw-workspace/skills/chief-of-staff-review
```

## Why the sync script exists

If you only install the skill once, manual copy is fine.

If multiple OpenClaw bots or machines need the same skill, the sync script matters because it:
- makes updates repeatable
- avoids path mistakes
- overwrites the local installed copy cleanly
- gives you one command to run after `git pull`

In other words, GitHub becomes the source of truth, and the script makes local installation boring and consistent.

## Dedicated repo vs existing workspace repo

### Dedicated repo
A dedicated repo means this skill lives in its own public GitHub repository.

Why this is better for this use case:
- easier for other people to understand
- easier to share with your boss or other bots
- cleaner version history
- no unrelated personal workspace files mixed in
- easier to make public safely

### Existing workspace repo
This means keeping the skill inside your current OpenClaw workspace repo.

Why that is worse for this use case:
- the repo contains unrelated personal assistant files
- harder for outsiders to know what matters
- making the full workspace public would be messy and risky
- updating another bot becomes less clean

For your case, a dedicated public repo is the right move.

## License

MIT
