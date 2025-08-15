# LLMs Effect

A curated collection of Effect-TS repositories optimized for LLM-assisted learning and development.

## Quick Start

1. **Clone this repository:**

```bash
git clone https://github.com/marbemac/llms-effect
cd llms-effect
```

2. **Run the setup script:**

```bash
./scripts/setup.sh
```

This will clone a bunch of effect ts related repositories with --single-branch and only 50 commits of history to speed it up a bit.

## What You Get

After setup, you'll have access to:

- **effect-ts-effect/** - Core Effect-TS source code
- **dmmulroy-effect.guide/** - Comprehensive module documentation
- **pauljphilp-effectpatterns/** - Practical, problem-oriented patterns
- **effect-ts-examples/** - Official Effect examples
- **effect-ts-effect-smol/** - Effect v4 features and changes
- Plus many more Effect-related repositories and real-world applications

All repositories follow the naming convention `{github-org}-{repo-name}` for clear organization.

## Documentation Strategy

See `CLAUDE.md` for detailed AI assistant guidance.

## Updating

To get the latest changes from all repositories:

```bash
./scripts/update.sh
```

## Requirements

- Git
- [jq](https://stedolan.github.io/jq/download/) (for JSON parsing)
- Claude Code (for MCP Effect docs integration)

## Contributing

To add new effect resources to this project, ask Claude to add a repository by providing the GitHub URL and asking it to add the repo to this project. Claude will handle updating the relevant files and you can then submit a pull request.

## License

This collection is provided as-is for educational purposes. Each included repository maintains its own license.
