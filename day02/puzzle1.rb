# Day 2: Password Philosophy
# https://adventofcode.com/2020/day/2

def is_valid?(line)
    min, max, letter, password = line.delete(':').gsub('-',' ').split
    (min.to_i..max.to_i).include?(password.count(letter))
end

passwords = File.readlines('input.txt', chomp: true)
puts passwords.select { |line| is_valid?(line) }.count