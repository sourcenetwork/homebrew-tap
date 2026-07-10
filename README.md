# Source Network Homebrew Tap

Homebrew packages for [Source Network](https://source.network) projects.

## Usage

```sh
brew install sourcenetwork/tap/defradb
```

Or tap first, then install:

```sh
brew tap sourcenetwork/tap
brew install defradb
```

## Notes

DefraDB binaries are not yet signed and notarized with Apple. The cask removes
the macOS quarantine attribute on install so the binary can run; if you prefer
to review the binary first, download it directly from the
[releases page](https://github.com/sourcenetwork/defradb/releases).
