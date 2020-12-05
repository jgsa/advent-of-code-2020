# Day 1: Report Repair
# https://adventofcode.com/2020/day/1

def find_values(list, goal)
    list.each do |current|
        other = goal - current
        return [current, other] if list.include?(other)
    end
    return []
end

def find_triplet(list)
    list.each do |current|
        rem = 2020 - current
        duo = find_values(list, rem)
        return duo << current unless duo.empty?
    end
end

expense_report = File.readlines('input.txt', chomp: true).map(&:to_i)
puts find_triplet(expense_report).inject(&:*)