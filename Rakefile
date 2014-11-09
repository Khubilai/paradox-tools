require "pathname"
require "fileutils"

VERSION = "0.15"

def trash(*paths)
  paths.each do |path|
    system "trash", path.to_s if Pathname(path).exist?
  end
end

def create_package_from_build_directory!(archive_name)
  Dir.chdir("build") do
    system "7za a '../#{archive_name}'"
  end
end

desc "Build all packages"
task "package:all" => ["package:vanilla", "package:extended_timeline", "package:shattered_europe"]

desc "Build Fun and Balance for vanilla package"
task "package:vanilla" do
  trash "output", "build"
  Pathname("build/fun_and_balance").mkpath
  system "./fun_and_balance/build_fun_and_balance"
  system "cp fun_and_balance/fun_and_balance.mod build/"
  system "cp -a output/fun_and_balance-1.8.0/* build/fun_and_balance/"
  create_package_from_build_directory! "fun_and_balance_#{VERSION}_for_eu4_1.8.0.7z"
end

desc "Build Fun and Balance for Extended Timeline package"
task "package:extended_timeline" do
  trash "output", "build"
  Pathname("build/fun_and_balance_et").mkpath
  system "./fun_and_balance/build_fun_and_balance_et"
  system "cp fun_and_balance/fun_and_balance_et.mod build/"
  system "cp -a output/fun_and_balance_et/* build/fun_and_balance_et/"
  create_package_from_build_directory! "fun_and_balance_#{VERSION}_for_eu4_1.8.0_and_extended_timeline_0.11.7z"
end

desc "Build Fun and Balance for Shattered Europe package"
task "package:shattered_europe" do
  trash "output", "build"
  Pathname("build/fun_and_balance_shattered_europe").mkpath
  system "./fun_and_balance/build_fun_and_balance_shattered_europe"
  system "cp fun_and_balance/fun_and_balance_shattered_europe.mod build/"
  system "cp -a output/fun_and_balance_shattered_europe/* build/fun_and_balance_shattered_europe/"
  create_package_from_build_directory! "fun_and_balance_#{VERSION}_for_eu4_1.7.3_and_shattered_europe.7z"
end

task "clean" do
  trash "output", "build", "stackprof.dump"
end