

<p align="center">
<a href="https://www.npmjs.com/package/@kingzyphor/devtools-cli"><strong>NPM Package</strong></a> •
<a href="https://github.com/VeloraInteractive/devtools-cli/blob/main/CONTRIBUTING.md"><strong>Contributing</strong></a> •
<a href="https://discord.gg/M8UtwmNpHQ"><strong>Discord</strong></a> •
<a href="https://github.com/VeloraInteractive/devtools-cli/discussions"><strong>Ask a question</strong></a>
</p>

<p align="center">
Part of the <strong>Velora Interactive Tools</strong> Project
</p>

<p align="center">
<a href="https://www.npmjs.com/package/@kingzyphor/devtools-cli"><img src="https://img.shields.io/npm/v/@kingzyphor/devtools-cli.svg?style=flat-square" alt="Latest NPM version"></a>
<a href="https://github.com/VeloraInteractive/devtools-cli/actions/workflows/test.yml"><img src="https://img.shields.io/github/actions/workflow/status/VeloraInteractive/devtools-cli/test.yml?style=flat-square" alt="CI Status"></a>
<a href="https://github.com/VeloraInteractive/devtools-cli/blob/main/LICENSE"><img src="https://img.shields.io/github/license/VeloraInteractive/devtools-cli.svg?style=flat-square" alt="License"></a>
<a href="https://nodejs.org/"><img src="https://img.shields.io/node/v/@velorainteractive/devtools-cli.svg?style=flat-square" alt="Node.js Version"></a>
<a href="https://discord.gg/M8UtwmNpHQ"><img src="https://img.shields.io/discord/123456789012345678?label=Join%20Discord&logo=discord&color=7289DA&style=flat-square"></a>
</p>

## About

> Tired of repetitive Git commands, messy repos, or debugging headaches?  
> **DevTools CLI** by Velora Interactive streamlines your workflow.

`DevTools CLI` is a **cross-platform, bash-first toolkit** for repository maintenance, debugging, and automation. It provides a compact, production-ready set of shell scripts usable via `devtools` or the alias `dt`.

**Key Features:**

* Safe, automated Git operations (`git-autopush`, `branch-sync`)  
* Debug suite for dependencies, logs, and processes  
* System and environment diagnostics (`sys-info`)  
* Repository cleaning with dry-run mode (`repo-cleaner`)  
* Modular, safe scripts for real-world usage  
* Cross-platform: Linux, macOS, Windows (Git Bash/WSL)  

---

## 🚀 Usage

<details>
<summary><strong>Available Commands</strong></summary>

| Command        | Description                                                      |
|----------------|------------------------------------------------------------------|
| `git-autopush` | Safe automated `git add`, `commit`, and `push`                  |
| `debug-suite`  | Logs, ports, dependency checks, process inspection              |
| `sys-info`     | System and environment diagnostics                               |
| `repo-cleaner` | Conservative repository organizer (dry-run by default)          |
| `branch-sync`  | Safe branch synchronization                                      |
| `error-trace`  | Collect traces for PIDs or run commands under trace             |

</details>

### Examples

```bash
# Git autopush
npx devtools git-autopush -b main -m "chore: update"

# Debug dependencies
npx devtools debug-suite deps

# Dry-run repo cleaning
npx dt repo-cleaner --dry-run

# System info check
npx devtools sys-info
