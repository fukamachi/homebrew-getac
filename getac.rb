class Getac < Formula
  desc "Quick unit testing tool for competitive programming"
  homepage "https://github.com/fukamachi/getac"
  url "https://github.com/fukamachi/getac.git", :tag => "0.9.2"
  sha256 "9da36e6f25e345b9e263785f63a343159cb6b4050d16f69e8d48bbdc3c4ea1a4"
  head "https://github.com/fukamachi/getac.git", :branch => "master"

  depends_on "sbcl"

  def install
    system "make"
    bin.install "bin/getac"
  end

  test do
    system "getac", "--version"
  end
end
