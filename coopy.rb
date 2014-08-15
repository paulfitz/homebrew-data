require 'formula'

class Coopy < Formula
  homepage 'http://share.find.coop'
  url 'https://github.com/paulfitz/coopy/archive/v0.6.8.tar.gz'
  sha256 '43b29b80a1d270708cdfa2e3321807490e6aea134ed2d6f7335ccc1cebd69267'
  head 'git://github.com/paulfitz/coopy.git'

  depends_on 'cmake' => :build

  depends_on 'mdbtools'
  depends_on 'mysql-connector-c'
  depends_on 'gnumeric'
  depends_on 'wxmac'

  def install
    system "cmake #{std_cmake_parameters} -DUSE_ACCESS=TRUE -DUSE_REMOTE_SQL=TRUE -DUSE_MYSQL=TRUE -DUSE_GNUMERIC=TRUE -DCREATE_SHARED_LIBRARIES=FALSE"
    system "make install"
  end
end
