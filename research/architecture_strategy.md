1. Agent Pattern: Hierarchical Swarm (FastRender Pattern)
We will not use a simple Sequential Chain, as it is too fragile for social media's non-linear nature. Instead, we implement the Hierarchical Swarm:

The Orchestrator: Manages top-level goal alignment.

The Planner: Breaks down a goal (e.g., "Increase engagement by 5%") into sub-tasks (Research, Design, Draft, Post).

The Workers: Specialized agents (Researcher-Agent, Creative-Agent) execute tasks in parallel.

The Judge: Performs a recursive audit of worker output before finalization.

2. Human-in-the-Loop (Safety Layer)
Human intervention is integrated as a Governance Gate.

Placement: The Human acts as the final "Super-Judge" after the AI Judge has verified technical compliance.

Trigger: If the AI Judge returns a "Confidence Score" < 0.85 or if the content triggers a "Safety Flag" (defined in AGENTS.md), the task is paused and pushed to the Orchestrator Dashboard for manual approval.

3. Database Strategy: Hybrid Storage
Metadata Storage: NoSQL (e.g., Weaviate/MongoDB).

Reasoning: High-velocity video metadata and social engagement logs are semi-structured. Weaviate provides Semantic Memory, allowing agents to "remember" visual themes and user sentiments through vector embeddings, which is impossible with standard SQL.
