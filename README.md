# Chief of Staff Review Skill

A decision-material and executive-presentation review skill for OpenClaw.

It reviews decks, proposals, investment notes, business cases, board papers, strategy memos, operating reviews, live reveals, and spreadsheets like a sharp chief of staff: judge the artifact, simulate the audience, separate claims from evidence, identify what changes the decision, and turn critique into an actionable next move.

## What v2 adds

- Two-axis readiness: **artifact readiness** versus **decision sufficiency**
- Audience simulation for Chairman, board, IC, regulator, BU CEO, investor, lender, partner, or customer
- A presentation room-read lens covering five-second comprehension, pacing, claim discipline, delivery, and mobile/fallback behavior
- Phase-aware review from exploration through approval request
- Adaptive evidence anchors for pages, slides, beats, scenes, sections, spreadsheet rows, timestamps, and quotes
- A genuinely short default output
- Conditional—not automatic—external research
- Action modes for rewrite spine, redline, source-first revision, and question packs
- Modular financial and sector references loaded only when relevant
- An anonymized evaluation suite

## Install

```bash
./scripts/sync-into-openclaw.sh "$HOME/.openclaw/workspace"
```

The script syncs `skill/chief-of-staff-review/` into the local OpenClaw skills directory.

## Example prompts

- “Review this board deck and tell me whether it is decision-ready.”
- “Put yourself in the Chairman's shoes. What lands and what feels inflated?”
- “Pressure-test this investment memo for the IC.”
- “Review the room-read and mobile behavior of this reveal.”
- “Rewrite the decision spine, source first.”
- “Give me only the five questions management must answer.”

## Repository structure

```text
skill/chief-of-staff-review/
  SKILL.md
  references/
    core-review.md
    financial-review.md
    output-modes.md
    presentation-room-read.md
    sectors/
evals/
```

## License

MIT
