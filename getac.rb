class Getac < Formula
  desc "Quick unit testing tool for competitive programming"
  homepage "https://github.com/fukamachi/getac"
  url "https://github.com/fukamachi/getac.git", :tag => "0.9.0"
  sha256 "ea06b255adf6e162c37ff23b0e1c897ce4a457e8845c34c4ef73f23b9902cccd"
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
