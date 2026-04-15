class Rexadb < Formula
  desc 'Database provisioning for developers - spin up Postgres without Docker'
  homepage 'https://github.com/rexadb/rexadb'
  url 'https://github.com/rexadb/rexadb.git'
  license 'MIT'

  head 'https://github.com/rexadb/rexadb.git'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/rexadb/rexadb/releases/download/v0.1.0/rexadb-darwin-amd64'
      sha256 'TODO: run ./scripts/release.sh and update with sha256 from release/checksums.txt'
    else
      url 'https://github.com/rexadb/rexadb/releases/download/v0.1.0/rexadb-darwin-arm64'
      sha256 'TODO: run ./scripts/release.sh and update with sha256 from release/checksums.txt'
    end
  end

  on_linux do
    url 'https://github.com/rexadb/rexadb/releases/download/v0.1.0/rexadb-linux-amd64'
    sha256 'TODO: run ./scripts/release.sh and update with sha256 from release/checksums.txt'
  end

  def install
    bin.install buildpath.children.first => 'rexadb'
  end

  test do
    system "#{bin}/rexadb", '--help'
  end
end
