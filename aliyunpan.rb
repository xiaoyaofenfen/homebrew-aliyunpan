# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Aliyunpan < Formula
  desc "阿里云盘命令行客户端，支持webdav文件服务，支持JavaScript插件，支持同步备份功能。"
  homepage "https://github.com/tickstep/aliyunpan"
  url "https://github.com/xiaoyaofenfen/homebrew-aliyunpan/archive/refs/tags/0.1.8.tar.gz"
  #mirror "http://192.168.0.10:9988/brew/aliyunpan-amd64-0.1.8.tar.gz"
  sha256 "6998b91ea9608adcd127eca8e7fcc28b3139eee155e8480708d4784fb08292a2"
  license "Apache-2.0"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_monterey: "2013de85377aac50dced5d8668f287ff92c179512c48e916896d42b6493e20f7"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "2013de85377aac50dced5d8668f287ff92c179512c48e916896d42b6493e20f7"
    sha256 cellar: :any_skip_relocation, monterey:       "ae60ab89b3e201ad822301949495b9def398b1f4f1eed26b16e0206c9e052bb8"
    sha256 cellar: :any_skip_relocation, big_sur:        "ae60ab89b3e201ad822301949495b9def398b1f4f1eed26b16e0206c9e052bb8"
    sha256 cellar: :any_skip_relocation, catalina:       "ae60ab89b3e201ad822301949495b9def398b1f4f1eed26b16e0206c9e052bb8"
  end

  def install
    # copy execute file
    bin.install "aliyunpan"
    # copy config file
    bin.install Dir["./*"]
  end

  test do
    system "false"
  end
end