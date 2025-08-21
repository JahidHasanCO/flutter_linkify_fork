# Contributing to flutter_linkify_fork

Thanks for showing interest in contributing! This guide will help you get started, whether you're fixing bugs, improving features, or enhancing docs.

---

## 1. Table of Contents
- [Code of Conduct](#code-of-conduct)
- [What’s in the Fork](#whats-in-the-fork)
- [Getting Started](#getting-started)
- [Branching & Git Workflow](#branching--git-workflow)
- [Coding Style & Standards](#coding-style--standards)
- [Commit Message Guidelines](#commit-message-guidelines)
- [Testing](#testing)
- [Documentation](#documentation)
- [Pull Request Process](#pull-request-process)
- [Reporting Issues](#reporting-issues)
- [Security](#security)
- [Release Process](#release-process)
- [Support & Community](#support--community)

---

## 2. Code of Conduct
Please follow our [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) to ensure respectful, inclusive collaboration.

---

## 3. What’s in the Fork
This library extends the original `flutter_linkify` by adding **favicon display** before links. You can enable this via the `useFavicon` flag, with `formatFaviconUrl` for URL normalization :contentReference[oaicite:0]{index=0}.

---

## 4. Getting Started

1. **Fork & Clone**

   ```bash
   git clone https://github.com/YourUsername/flutter_linkify_fork.git
   cd flutter_linkify_fork
````

2. **Install Dependencies**

   ```bash
   flutter pub get
   ```

3. **Run Example**

   ```bash
   cd example
   flutter run
   ```

---

## 5. Branching & Git Workflow

* Create meaningful branches:

  * `feat/favicon-support`
  * `fix/<short-description>`
  * `docs/<topic>`
* Keep your branch updated with `main`.
* Use focused, atomic commits.

---

## 6. Coding Style & Standards

* Use `dart format .`
* Run `flutter analyze`
* Prefer null-safe code (`>= Dart 2.17`) ([GitHub][1])

---

## 7. Commit Message Guidelines

Use clear, conventional commit messages:

```
feat: add support for favicon in Linkify widget
fix: resolve URL normalization issue for favicon
doc: update README with favicon flags
```

---

## 8. Testing

* Write tests covering new features or bug fixes.
* Run tests with:

  ```bash
  flutter test
  ```

---

## 9. Documentation

Ensure:

* README is updated with usage examples (especially `useFavicon` and `formatFaviconUrl`) ([GitHub][1])
* Add sample code to `example/lib/main.dart`
* Keep `CHANGELOG.md` up to date

---

## 10. Pull Request Process

1. Submit PR from your branch to `main`
2. Include:

   * Purpose of the change
   * Related issues (if any)
   * Screenshots or examples (for UI changes)
3. Maintain consistency and respond to review feedback.

---

## 11. Reporting Issues

* Open a GitHub issue with:

  * A concise title
  * Steps to reproduce
  * Code snippets and screenshots (if helpful)

---

## 12. Security

For potential security concerns, please contact repository maintainers directly—avoid public disclosure.

---

## 13. Release Process

* Tag releases (e.g., `v1.2.0`) with meaningful release notes.
* Update `CHANGELOG.md`.
* Publish to `pub.dev` following usual procedures.

---

## 14. Support & Community

* Start discussions via GitHub Discussions or Issues.
* Stay friendly, helpful, and open to collaboration.
* Thanks for helping enhance this Flutter package!

---

**Happy coding and welcome aboard!**
