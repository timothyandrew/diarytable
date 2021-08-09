#!/usr/bin/env ruby

require 'set'

if !Set[3,4].include?(ARGV.count)
  puts "usage: table.rb <year> <month> <days> <start_day>"
  exit 1
end

year, month, day, start_day = ARGV.map(&:to_i)
start_day = start_day || 1

columns = 5

columns.times { |i| print '| ' }
print "|\n"
columns.times { |i| print '|---' }
print "|\n"

(start_day..day).each_slice(columns) do |row|
  row.each do |day|
    month_padded = sprintf '%02d', month
    day_padded = sprintf '%02d', day
    print "| [[#{year}-#{month_padded}-#{day_padded}]] "
  end

  print " |\n"
end