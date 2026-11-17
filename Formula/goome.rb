class Goome < Formula
  desc "Single header C library for overlays, app windows and offscreen ui"
  homepage "https://github.com/goome-ui/c-goome"
  url "https://github.com/goome-ui/c-goome/archive/refs/tags/v0.5.3.tar.gz"
  sha256 "e6487f9843a002ce75184aa07a8926df92a4ca1810f26a60e5a777786e998f3f"
  license "GPL-3.0-only"
  head "https://github.com/goome-ui/c-goome.git", branch: "main"

  def install
    include.install "goome.h"
    include.install Dir["backends/*.h"]
    doc.install "backends/README.md" => "backends.md"
    doc.install "README.md"
  end

  test do
    (testpath/"test.c").write <<~C
      #define GOOME_IMPLEMENTATION
      #include <goome.h>
      #include <stdio.h>

      int main(void) {
        int err = 0;
        goome *g = goome_open(&(goome_opts){.mode = GOOME_MODE_OFFSCREEN, .width = 64, .height = 32}, &err);
        if (!g) return 1;
        printf("%s\\n", GOOME_VERSION);
        goome_close(g);
        return 0;
      }
    C
    args = ["test.c", "-I#{include}", "-o", "test"]
    args << "-ldl" if OS.linux?
    system ENV.cc, *args
    assert_equal version.to_s, shell_output("./test").strip
  end
end
