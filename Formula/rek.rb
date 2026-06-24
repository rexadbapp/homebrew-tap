class Rek < Formula
  desc "CLI for Supabase's splinter database linter, with AI-agent fix prompts"
  homepage "https://github.com/rexadbapp/rek"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rexadbapp/rek/releases/download/v0.1.0/rek_darwin_arm64"
      sha256 "8973475975c920a4061dcfb6b43240d556723c6b080e62314fb2c1a8424a45c3"
    end
    on_intel do
      url "https://github.com/rexadbapp/rek/releases/download/v0.1.0/rek_darwin_amd64"
      sha256 "8d3799c6ff96a3ab959a5b1e9d15d1396a1c8300b9306f793263e7fe02c68c0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rexadbapp/rek/releases/download/v0.1.0/rek_linux_arm64"
      sha256 "08d0de0e5b1f27754c3306e0d61a64cf6d5c3b1ae0e3d304337bf987bfd9e4a2"
    end
    on_intel do
      url "https://github.com/rexadbapp/rek/releases/download/v0.1.0/rek_linux_amd64"
      sha256 "3fcebb6a442e93d722b49605c2d4cfb8f09f6f7b13137a2e424ff9ff27ad12c3"
    end
  end

  def install
    bin.install buildpath.children.first => "rek"
  end

  test do
    system "#{bin}/rek", "--version"
  end
end
