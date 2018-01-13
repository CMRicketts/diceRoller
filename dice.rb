def roll(amount = 0, sides = 0)
    srand
    total = 0
    (amount.to_i).times do 
        total += rand(sides.to_i)
    end
    return total
end


while true
    raw_input = gets.chomp.to_s
    if raw_input == "exit"
        abort("May your rolls be ever natural.")
    end
    proc_input = raw_input.tr("^0-9", " ")
    output = proc_input.split()
    if (output[2]) == nil 
        mod = 0
    else 
        mod = output[2]
    end
    fin = roll(output[0], output[1]) + mod.to_i
    puts "#{fin.to_s}"
end