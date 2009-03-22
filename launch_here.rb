#!/usr/bin/ruby
#
# Load shinmun from this directory, without needing to install it.

if File.symlink? __FILE__
  us = File.readlink(__FILE__)
else
  us = __FILE__
end

SCM_DIR = File.expand_path File.dirname(us)
puts "Loading Shinmun from #{SCM_DIR}"

$:.unshift File.join(SCM_DIR, 'lib')

load File.join(SCM_DIR, 'bin/shinmun')
