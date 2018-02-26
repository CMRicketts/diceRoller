def roll(amount = 0, sides = 0)
    amount.to_i.times.sum {|t| rand(1..sides.to_i)}
end

loop do
    input = gets.chomp.to_s 
    abort("May your rolls be ever natural") if input == "exit"
    amount, sides, mod = input.tr("^0-9", " ").split
    fin = roll(amount, sides) + mod.to_i
    puts fin
end


##
# inputs the ["1d4", "+", "4"]
# want to input the 1d4 into the die, and roll functions
# the die should just turn into a translator/processor for string -> dice roller
# in main, we should check if the last two indicies a) exist and b) if '1' is + or -
# and then add or subtract index 2 accordingly.
# need to refactor die, roll, and main.
# use 'a.pop(2)' to get the last two indices of the original array into a new array