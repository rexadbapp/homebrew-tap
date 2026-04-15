class Rexadb < Formula
  desc 'Database provisioning for developers - spin up Postgres without Docker'
  homepage 'https://github.com/rexadb/rexadb'
  license 'MIT'
  version '0.1.0'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/rexadb/rexadb/releases/download/v0.1.0/rexadb-darwin-amd64'
      sha256 '1a64d4a24ebb4e5d563e77e1a7f2a5d4a997c7e42dfc48eeb2ac88a1db93bc98'
    else
      url 'https://github.com/rexadb/rexadb/releases/download/v0.1.0/rexadb-darwin-arm64'
      sha256 '1594a2e22f306c6000d3b66131b9ba4dbb454bfd9735ac8c33c7402ccae48312'
    end
  end

  on_linux do
    url 'https://github.com/rexadb/rexadb/releases/download/v0.1.0/rexadb-linux-amd64'
    sha256 'f8b46b17f359fd729b1e53387297865208485d40fac0a3aae60e326ad720a4f7'
  end

  def install
    bin.install buildpath.children.first => 'rexadb'
  end

  test do
    system "#{bin}/rexadb", '--help'
  end
end
