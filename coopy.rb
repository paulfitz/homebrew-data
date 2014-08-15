require 'formula'

class Coopy < Formula
  homepage 'http://share.find.coop'
  url 'https://github.com/paulfitz/coopy/archive/v0.6.7.tar.gz'
  sha256 '7958e83f4161fade99406d8b9dd3e7fcc95e0337eed920f4f6bfe06a09d59150'
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
