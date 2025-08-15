# LLMs Effect

This is a curated collection of Effect-TS repositories optimized for LLM-assisted learning and development. **No code modifications should be made** - this is purely for understanding and answering questions about Effect.

## Repository Structure

- **effect-ts-effect/** - The main Effect source code repository. Refer to this for implementation details and understanding how Effect works internally.
- **dmmulroy-effect.guide/** - **PRIMARY RESOURCE** - Contains comprehensive, deep-dive documentation on Effect modules. Use for thorough understanding of specific Effect modules and APIs.
- **pauljphilp-effectpatterns/** - **PRIMARY RESOURCE** - Contains practical, problem-oriented patterns organized by use cases. Use for quick solutions to specific development problems.
- Other folders - Various Effect-related repositories with examples and implementations

## Usage Guidelines

### Documentation Search Strategy

When answering questions about Effect, follow this systematic approach based on the type of question:

#### 1. For Problem-Solving and Practical Patterns
- **Check pauljphilp-effectpatterns/** first for task-oriented solutions (e.g., "handle errors", "build APIs", "testing")
- Look in `content/published/` for complete patterns organized by use case
- These are concise, focused solutions to specific developer problems

#### 2. For Comprehensive Understanding
- **Check dmmulroy-effect.guide/** for deep-dive module documentation (e.g., `Schema-Guide.md`, `Effect-Guide.md`)
- **When a guide exists, READ THE ENTIRE FILE** - These guides are comprehensive (often 1000+ lines) and contain complete explanations with examples
- Don't search for fragments within guides - read them fully to understand the complete context

#### 3. Documentation Priority Order
1. **pauljphilp-effectpatterns/** - For immediate problem-solving and practical patterns
2. **dmmulroy-effect.guide/** - For comprehensive module understanding and API reference
3. **effect-ts-effect/** source code - For implementation details and current API usage
4. **Example repositories** - For practical usage patterns
5. **MCP Effect docs** - Use `mcp__effect-docs__effect_doc_search` ONLY for surgical lookups of specific topics not covered in local resources
6. **effect-ts-effect-smol/** - Only check if specifically asked about Effect v4 features (especially `SCHEMA.md` for Schema v4 changes)

### When answering questions about Effect:

1. **For practical problems**: Start with **pauljphilp-effectpatterns/** - Quick, focused solutions organized by use case
2. **For deep understanding**: Use **dmmulroy-effect.guide/** - Comprehensive module documentation with full API coverage
3. **For implementation details**: Reference **effect-ts-effect/** source code when needed
4. **For examples**: Use other repositories for practical usage patterns

### Choosing the Right Resource

- **Use pauljphilp-effectpatterns/ when**: User asks "How do I...", needs quick solutions, wants patterns for specific problems
- **Use dmmulroy-effect.guide/ when**: User asks "What is...", needs comprehensive understanding, wants complete API reference
- **Use both when**: Complex questions requiring both practical solutions and deep understanding

### Important Notes

- This is a **read-only environment** - never modify any files
- Do NOT run build/lint/test commands or make any modifications
- Focus on explaining and exploring Effect concepts through the existing code
- **MCP Effect docs available**: Use `mcp__effect-docs__effect_doc_search` only for surgical lookups when local resources don't have the specific information needed
- When searching for specific Effect patterns or APIs, use grep/search tools extensively across all repositories
- **CRITICAL**: When you find a relevant guide file, always read it completely rather than searching for specific patterns within it

## Common Tasks

- Explaining Effect concepts and patterns
- Finding examples of specific Effect APIs in use
- Understanding how Effect features are implemented
- Comparing different approaches to solving problems with Effect
- Exploring the Effect ecosystem through various repositories
