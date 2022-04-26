cask "4k-youtube-to-mp3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "4.5.3"
  sha256 "194dd6ae000d73959c0c51d318adf2716eeed57e58aa614855f817a2d2988b07"

  url "https://dl.4kdownload.com/app/4kyoutubetomp3_#{version}.dmg"
  name "4K YouTube to MP3"
  desc "Turn YouTube links into MP3 files"
  homepage "https://www.4kdownload.com/products/youtubetomp3/1"

  livecheck do
    url "https://www.4kdownload.com/download"
    regex(%r{href=.*?/4kyoutubetomp3[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "4K YouTube to MP3.app"
end
