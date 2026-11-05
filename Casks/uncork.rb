cask "uncork" do
  version "1.5.7"
  sha256 "658f7bef5ac7cfd738a786c7126e43f76fffbf6cafa21107e71e182d7e008e42"

  url "https://uncorkmac.com/updates/Uncork-#{version}.dmg"
  name "Uncork"
  desc "Run Windows games from Steam and Epic on Apple Silicon Macs"
  homepage "https://uncorkmac.com/"

  livecheck do
    url "https://uncorkmac.com/changelog.atom"
    regex(%r{<title>Uncork\s+v?(\d+(?:\.\d+)+)</title>}i)
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Uncork.app"

  zap trash: [
    "~/Library/Caches/app.uncork",
    "~/Library/Preferences/app.uncork.plist",
    "~/Library/Saved Application State/app.uncork.savedState",
  ]

  caveats <<~EOS
    Bottles with installed games are kept in:
      ~/Library/Application Support/winebottle

    To remove them by hand, quit Uncork and move that folder to the Trash in Finder.
    This also removes the installed games and any saves stored in those bottles.
  EOS
end
