# Sylphx Homebrew Tap

Official Homebrew tap for the **Sylphx Platform operator CLI** (`sylphx`).

Product binary SSOT is the Rust `sylphx-cli` published on GitHub Releases
(`cli-v*`). This tap only packages that binary (ADR-4437).

## Install

```bash
brew install sylphxai/tap/sylphx
```

Upgrade:

```bash
brew update
brew upgrade sylphx
```

## Other install channels

| Channel | Command |
| --- | --- |
| **Homebrew (this tap)** | `brew install sylphxai/tap/sylphx` |
| **GitHub Releases script** | `curl -fsSL https://raw.githubusercontent.com/SylphxAI/cloud/main/scripts/install-sylphx.sh \| bash` |
| **crates.io** | `cargo install sylphx-cli` |
| **npm adapter** | `npm i -g @sylphx/cli` |

Self-update for release-binary installs: `sylphx update`  
Package-managed installs should use the package manager (`brew upgrade sylphx`).

## Formula source

The formula is maintained here under `Formula/sylphx.rb`.
A copy also lives in `SylphxAI/cloud` at `packaging/homebrew/sylphx.rb` for monorepo review; **this tap is the install authority for Homebrew users**.

## Claiming the name

- Homebrew command: `sylphx`
- Tap path: `sylphxai/tap/sylphx` (Homebrew lowercases org `SylphxAI` → `sylphxai`)
- This repository exists so the official install path cannot be quietly taken by a third-party tap with the same org/name collision on GitHub.

`homebrew-core` inclusion is a separate, later process (core PR + review) and is **not** required to own the official Sylphx brew install path.
