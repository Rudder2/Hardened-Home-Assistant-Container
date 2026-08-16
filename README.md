# Hardened Home Assistant Container

A direct mirror of Home-Assistant-Container with root privileges removed.

## Architectural Changes

- **Root Privilege Stripping:** Configured and hardened to execute natively under unprivileged user context (`--user 99:100`) inside the container namespace to prevent host jailbreak vulnerabilities.
- **Path Adjustments:** Pre-seeded internal system directories and adjusted ownership fields to ensure core initialization frames can execute without root file-system access constraints.
- **Dependency Redirection:** Configured to direct third-party library builds straight to the persistent data mount partition instead of root-owned system layers.

## Upstream Documentation

For standard application usage, configuration syntax, and core deployment guides, reference the [Official Home Assistant Documentation](https://home-assistant.io).
