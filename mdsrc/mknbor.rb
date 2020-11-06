#!/usr/bin/env ruby
# mknbor.rb - Given a .md filename and deck.slides, return its neighbors

def tuple3 n
  return [0, 1, 2] if n.zero?
  [n-1, n, n+1]
end


# Main
inp, out = ARGV

slides = File.read('deck.slides').split("\n")
first = slides.first
last = slides.last
slides.unshift first
#puts "first, last", first, last
slides << last

nbors = tuple3(slides.index(inp))

File.open(out, "w") do |f|
  f.puts nbors.map {|n| slides[n] }.join(" ")
end
