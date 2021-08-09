#!/usr/bin/env ruby

if ARGV.count != 3
  puts "usage: embed.rb <year> <month> <days>"
  exit 1
end

year, month, day = ARGV.map(&:to_i)

(1..day).each do |day|
  month_padded = sprintf '%02d', month
  day_padded = sprintf '%02d', day
  puts "![[#{year}-#{month_padded}-#{day_padded}]]"
end