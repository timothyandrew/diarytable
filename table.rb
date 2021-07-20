#!/usr/bin/env ruby

if ARGV.count != 3
  puts "usage: table.rb <year> <month> <days>"
  exit 1
end

year, month, day = ARGV.map(&:to_i)
columns = 5

columns.times { |i| print '| ' }
print "|\n"
columns.times { |i| print '|---' }
print "|\n"

(1..day).each_slice(columns) do |row|
  row.each do |day|
    month_padded = sprintf '%02d', month
    day_padded = sprintf '%02d', day
    print "| [[#{year}-#{month_padded}-#{day_padded}]] "
  end

  print " |\n"
end