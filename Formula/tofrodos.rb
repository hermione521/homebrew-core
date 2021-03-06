class Tofrodos < Formula
  desc "Converts DOS <-> UNIX text files, alias tofromdos"
  homepage "https://www.thefreecountry.com/tofrodos/"
  url "http://tofrodos.sourceforge.net/download/tofrodos-1.7.13.tar.gz"
  sha256 "3457f6f3e47dd8c6704049cef81cb0c5a35cc32df9fe800b5fbb470804f0885f"

  bottle do
    cellar :any_skip_relocation
    sha256 "3d5363cda2170ce2fbcb7e03c84f715b62ead1e5646000dd06395f5677fd2269" => :sierra
    sha256 "4a2b22ff08d0fb65c80be7359be2f04d12b70f4e6d490b96cb819ea69b3e3d88" => :el_capitan
    sha256 "4a5427c6870c3d4822ef4da3ddd8d79c18b91e5b7f14edb4aa449a53da70114e" => :yosemite
    sha256 "c9759ec570e6a284b250563b8d66076401641f40c1836e293f4eab82cc9fe4ff" => :mavericks
  end

  def install
    cd "src" do
      system "make"
      bin.install %w[todos fromdos]
      man1.install "fromdos.1"
      man1.install_symlink "fromdos.1" => "todos.1"
    end
  end
end
