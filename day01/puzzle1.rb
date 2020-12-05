# Day 1: Report Repair
# https://adventofcode.com/2020/day/1

def find_values(list, goal)
    list.each do |current|
        other = goal - current
        return [current, other] if list.include?(other)
    end
end

expense_report = File.readlines('input.txt', chomp: true).map(&:to_i)
puts find_values(expense_report,2020).inject(&:*)