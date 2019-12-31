class Getac < Formula
  desc "Quick unit testing tool for competitive programming"
  homepage "https://github.com/fukamachi/getac"
  url "https://github.com/fukamachi/getac.git", :tag => "0.9.1"
  sha256 "0e08fb2acfaf67b036b23f52cbe7f000fe3c19ce496784901aac95f459049158"
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
