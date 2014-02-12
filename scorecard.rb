print "First fighter: "
fighter1 = gets.chomp

print "Second fighter: "
fighter2 = gets.chomp

scores1 = []
scores2 = []

i = 0
round_f1 = 0
round_f2 = 0

print "Number of rounds: "
rounds = gets.to_i

while i < rounds
  if (i + 1) == rounds
    puts "FINAL ROUND"
  else
    puts "ROUND #{i + 1}"
  end

  print "Score for #{fighter1}: "
  round_f1 = gets.to_i
  print "Score for #{fighter2}: "
  round_f2 = gets.to_i

  scores1 << round_f1
  scores2 << round_f2

  i += 1
end

total1 = 0
total2 = 0

scores1.each { |a| total1 += a }
scores2.each { |a| total2 += a }

puts "Total score for #{fighter1}: #{total1}"
puts "Total score for #{fighter2}: #{total2}"

case
  when total1 > total2 then puts "#{fighter1} is the winner!"
  when total1 < total2 then puts "#{fighter2} is the winner!"
  else puts "The fight is a draw!"
end
