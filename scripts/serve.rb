#!/usr/bin/env ruby

#
# example:
#  serve public 4001
#
# Spin up a quick web server for files in the specified directory (first arg)
# on the port number given (second arg).
#

require "webrick"

s = WEBrick::HTTPServer.new(
  :DocumentRoot => (ARGV[0] || Dir.pwd),
  :Port => (ARGV[1] || 4000)
)

trap('INT') { s.shutdown }

s.start
