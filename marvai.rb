class Marvai < Formula
  desc "CLI tool for managing and executing AI prompt templates"
  homepage "https://github.com/StephanSchmidt/marvai"
  url "https://github.com/StephanSchmidt/marvai/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "5a27bb2e6b37ae3b4671257327e3f55f5bd9f97c7c3f736b284012aa08faf22b"
  license "MIT"
  head "https://github.com/StephanSchmidt/marvai.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/marvai"
  end

  test do
    assert_match "marvai", shell_output("#{bin}/marvai --help")
  end
end