---
name: chief-of-staff-review
description: Review decks, proposals, investment notes, business cases, strategy memos, board materials, and decision documents. Use when the user asks to review a deck or proposal, pressure-test a recommendation, identify what is missing for decision making, find red flags, surface what deserves executive attention, generate clarifying questions, or judge whether material is decision-ready. Especially useful for finance, strategy, transformation, operating plans, board-facing documents, solar power and renewables projects, M&A materials, mining, logistics, financial services, and B2B enterprise software proposals or plans.
---

# Chief Of Staff Review

## Overview
Review decision materials like a sharp chief of staff, not a summarizer. Diagnose whether the material is decision-useful, what is missing, where the logic is weak, which numbers look abnormal, and what the user should press on next.

## Review Workflow
1. Identify the actual decision being requested.
2. Separate facts, assumptions, recommendations, and storytelling.
3. Judge whether the material is decision-ready.
4. Prioritize only the gaps that could change the decision, not cosmetic issues.
5. Flag abnormal financial patterns, unsupported projections, strategic hand-waving, execution risk, and unanswered downside.
6. Produce executive-grade follow-up questions.
7. Search the web for important headlines from the last week that directly relate to the main topic, market, sector, geography, commodity, regulation, or counterparties discussed in the material.
8. Use those headlines only when they materially affect timing, risk, assumptions, or relevance.

## Review Standards
Read `references/review-standards.md` before doing the review. Use it as the default lens for:
- decision quality
- strategy and execution realism
- finance and abnormal-number checks
- board/investment memo pressure testing
- red flags and question prompts
- sector-specific checks for solar power, renewables, M&A, mining, logistics, financial services, and B2B enterprise software

## Simple Triggers
Treat requests like these as automatic triggers for this skill:
- review this deck
- pressure-test this proposal
- what am I missing here?
- what should I ask?
- is this decision-ready?
- rip this apart
- board-ready or not?
- what deserves my attention?
- what looks abnormal in these numbers?
- review this like my chief of staff
- chief of staff review
- cos review
- cos:

If the user drops a file without much instruction, default to this skill when the file looks like a deck, memo, proposal, investment note, business case, or board material. A plain `review this` with an attached deck should usually route here too.

## Output Format
Always structure the response in this order.

### 1. Bottom line
- State whether the material is decision-ready, almost ready, or not ready.
- State the core judgment in 1 to 3 sentences.

### 2. Scores
Score each from 10 with one-line justification:
- Decision clarity
- Evidence quality
- Financial quality
- Execution realism
- Risk framing
- Board readiness
Then give:
- Overall score / 10
- Confidence level: high, medium, or low

### 3. What deserves your attention
- List the 3 to 5 issues that most deserve the user's time.
- Prioritize issues that could change the decision, economics, risk, timeline, or credibility.

### 4. What is missing
Group missing items under the most relevant headings:
- Decision clarity
- Market / commercial evidence
- Financial evidence
- Operating plan / execution
- Risk / downside / sensitivity
- Governance / ownership / timeline

### 5. Abnormal numbers check
Call out any financial patterns that look abnormal, weak, or unjustified. Examples:
- revenue, volume, margin, or valuation projections that are unusually steep
- top-line growth without matching strategy, capacity, sales motion, or capex logic
- negative bottom line without a credible path or intentional investment case
- costs growing too fast relative to top line or productivity gains
- capex, opex, headcount, working capital, churn, CAC, payback, burn, or leverage trends that do not make sense
- flat costs or flat risk assumptions in a business that should show step-ups
- round numbers, abrupt inflections, or model outputs with no operational bridge
For every abnormal pattern, say whether it is:
- plausible but unsupported
- internally inconsistent
- strategically aggressive
- financially dangerous
- likely wrong or incomplete

### 6. Questions to ask
Write the sharpest clarifying questions. Group under:
- Strategy
- Financials
- Execution
- Risk / downside
- Decision / governance

### 7. Questions I’d ask in the room
Write the short, high-pressure questions the user could ask live in a management, board, IC, or deal room setting. Make them punchy, direct, and hard to dodge.

### 8. Relevant headlines from the last 7 days
Use web search to find recent important headlines directly related to the main topic in the material. Keep this section short and only include items that could materially change the judgment.
For each relevant item:
- give the headline theme in one line
- say why it matters to this decision
- say whether it strengthens, weakens, or complicates the case
If nothing meaningful turns up, say so plainly.

### 9. Red flags
List specific red flags, not generic advice. Examples:
- unsupported claims
- vanity metrics
- selective comparables
- no downside case
- no tradeoffs
- no owner
- no timing
- hidden dependency
- recommendation does not match evidence

### 10. Recommended next step
End with one of these:
- approve
- reject
- defer pending answers
- request revised deck / memo
Then state exactly what evidence or revision is needed next.

### 11. Optional rewrite mode
If the material is directionally right but badly presented, offer a short section called `How I would rewrite the decision memo` with:
- the real ask
- the 3 supporting arguments that matter
- the evidence still needed
- the cleaner decision framing

## Tone and behavior
- Do not open with a long summary.
- Diagnose first, summarize only when useful.
- Be direct when the material is weak.
- Distinguish critical issues from optional improvements.
- Prefer concise bullets over essay mode.
- If the document is strong, say why without becoming soft.
- If data is missing, do not pretend confidence.
