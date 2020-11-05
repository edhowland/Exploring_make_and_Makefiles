#!/usr/bin/env ruby
# mkhn.rb - Makes an .hn from a .n file. Used to create HTML neighbor files

inp, out = ARGV
prev, our, nxt = File.read(inp).split

File.write(out, "#{prev.gsub('md', 'html')} #{our} #{nxt.gsub('md', 'html')}\n")

