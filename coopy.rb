require 'formula'

class Coopy < Formula
  homepage 'http://share.find.coop'
  url 'https://github.com/paulfitz/coopy/archive/v0.6.12.tar.gz'
  sha256 '3653843df5736b7b6690aa6d3c2f995ce64e732e7459d723062369c8f4925f5a'
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
