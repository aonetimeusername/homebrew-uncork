# Uncork Homebrew tap

Our tap for [Uncork](https://uncorkmac.com/), a Mac app for running Windows games
from Steam and Epic on Apple Silicon Macs.

```sh
brew tap aonetimeusername/uncork
brew trust aonetimeusername/uncork
brew install --cask uncork
```

`brew trust` is needed once: current Homebrew loads casks from third-party taps only after you trust them.

The cask installs the same notarized DMG available from
[uncorkmac.com](https://uncorkmac.com/).

Without Homebrew, one command does the same:

```sh
curl -fsSL https://uncorkmac.com/install.sh | sh
```

It checks the SHA-256, the Developer ID signature (team PJC7K6A3U5) and Apple's notarization before
copying the app; details are on the [install page](https://uncorkmac.com/en/install.html).
