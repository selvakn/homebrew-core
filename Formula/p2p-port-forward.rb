class P2pPortForward < Formula
  desc "Command-line utility to forward ports using zerotier-sdk"
  homepage "https://github.com/selvakn/p2p-port-forward"

  url "https://github.com/selvakn/p2p-port-forward/releases/download/v1.1.1/p2p-port-forward-darwin-10.11-amd64"
  version "1.1.1"
  sha256 "d3bcc94204cea863486d019bdf3d89ccda38ee95a1d7c48687e5410cc378363c"

  bottle :unneeded

  def install
    mv "p2p-port-forward-darwin-10.11-amd64", "p2p-port-forward"
    bin.install "p2p-port-forward"
  end

  test do
    system "#{bin}/delta", "--version"
  end
end
