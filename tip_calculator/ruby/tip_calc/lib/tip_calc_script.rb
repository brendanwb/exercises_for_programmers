require_relative 'tip_calc'

puts "What is the Bill Amount?"
amount = gets
puts "What is the tip?"
tip    = gets
tip_calc = TipCalc.new(amount.to_i, tip.to_i)
tip_calc.process
puts "The tip is #{tip_calc.tip}"
puts "The total is #{tip_calc.total}"
