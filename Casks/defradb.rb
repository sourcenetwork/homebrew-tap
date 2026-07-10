# This file was published by hand for the v1.0.0 release. Subsequent releases
# are generated and pushed automatically by GoReleaser from the defradb repo.
cask "defradb" do
  version "1.0.0"
  sha256 "8185703af67f4737a4111616dbdb436d0e4168ec500dec5e1a9a0a8498e72ade"

  url "https://github.com/sourcenetwork/defradb/releases/download/v#{version}/defradb_#{version}_darwin_arm64"
  name "defradb"
  desc "User-centric database prioritizing data ownership, privacy, and security"
  homepage "https://github.com/sourcenetwork/defradb"

  depends_on arch: :arm64

  binary "defradb_#{version}_darwin_arm64", target: "defradb"

  # The binary is not yet signed/notarized, so Gatekeeper quarantines it and
  # macOS reports it as damaged. Strip the quarantine attribute on install;
  # remove this once releases are notarized.
  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr",
                     args: ["-dr", "com.apple.quarantine", "#{staged_path}/defradb_#{version}_darwin_arm64"]
    end
  end
end
