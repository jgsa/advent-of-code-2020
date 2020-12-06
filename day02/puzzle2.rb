# Day 2: Password Philosophy
# https://adventofcode.com/2020/day/2#part2

def is_valid?(line)
    first, second, letter, password = line.delete(':').gsub('-',' ').split
    (password[first.to_i-1] == letter) ^ (password[second.to_i-1] == letter)
end

passwords = File.readlines('input.txt', chomp: true)
puts passwords.select { |line| is_valid?(line) }.count