
# Conventional Commits 1.0.0

The Conventional Commits specification is a convention for writing commit messages. It provides an easy set of rules for creating an explicit commit history; which makes it easier to write automated tools on top of. This convention dovetails with [SemVer](https://semver.org), by describing the features, fixes, and breaking changes made in commit messages.

The commit message should be structured as follows:

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

## Commit Message Format

Each commit message consists of a **header**, a **body**, and a **footer**. The header has a **type**, an **optional scope**, and a **subject**:

### Header
The header is mandatory and must conform to the following format:

```
<type>[optional scope]: <description>
```

- **type**: a type of change (see below for details).
- **scope**: a scope (optional).
- **description**: a short description of the change.

### Type
Must be one of the following:

- **feat**: a new feature
- **fix**: a bug fix
- **docs**: documentation only changes
- **style**: changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
- **refactor**: a code change that neither fixes a bug nor adds a feature
- **perf**: a code change that improves performance
- **test**: adding missing or correcting existing tests
- **build**: changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)
- **ci**: changes to our CI configuration files and scripts (example scopes: Travis, Circle, BrowserStack, SauceLabs)
- **chore**: other changes that don't modify src or test files
- **revert**: when you revert a previous commit

### Scope
The scope is optional but represents what area of the code is affected (e.g., `data`, `api`, `user`, etc.).

### Description
The description is a short explanation of the change.

### Footer
The footer is optional and is used to reference issues or breaking changes.

#### Breaking changes
All breaking changes must be indicated in the footer of a commit, and the word `BREAKING CHANGE:` must be followed by an explanation.

### Examples

#### Commit message with no body:
```
feat: allow provided config object to extend other configs
```

#### Commit message with a body:
```
feat: allow provided config object to extend other configs

BREAKING CHANGE: `extends` key in the config file is now used for extending other config files
```

#### Commit message with a scope:
```
feat(parser): add ability to parse arrays
```

#### Commit message with a footer:
```
fix: correct minor typos in code

see the issue for details on the typos fixed.

Reviewed-by: Z
Refs #133
```

---

## Why Use Conventional Commits

The Conventional Commits specification provides a simple, standardized way to write and understand commit messages. The benefits of adopting this convention include:

- Automatic generation of [CHANGELOGs](https://keepachangelog.com/en/1.0.0/).
- Easily determining the type of changes included in a release (breaking changes, features, bug fixes).
- Communicating the nature of changes to stakeholders.
- Triggering build and release processes.
- Creating more structured and consistent commit histories.

---

## FAQ

### What do I do if the commit conforms to multiple types?
Go with the type that applies to the bigger change.

### How should I deal with commit messages in languages other than English?
We encourage you to write commit messages in English. However, if you have to use another language, try to be consistent across your team.

### Can I omit the scope of a commit message?
Yes, the scope is optional.

### What if my commit contains a breaking change?
Add `BREAKING CHANGE:` to the footer of your commit message and provide an explanation of what breaking changes are introduced.

### How can I deal with a breaking change that isn't tied to a specific commit?
Breaking changes should be announced by a specific commit. If it's a larger change, provide a reference to the issues or documents detailing the change.

---

For more information, see the official [Conventional Commits specification](https://www.conventionalcommits.org).
