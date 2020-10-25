def line(katz_deli)
    if katz_deli.empty?
        puts "The line is currently empty."
    else
        string = ["The line is currently:"]
        katz_deli.each.with_index(1) do |name, index|
            string.push("#{index}. #{name}")
        end
        puts string.join(" ")
    end
end

def take_a_number(katz_deli, name)
    katz_deli.push(name)
	place = katz_deli.index(name) + 1
	puts "Welcome, #{name}. You are number #{place} in line."
end

def now_serving(katz_deli)
    if katz_deli.empty?
        puts "There is nobody waiting to be served!"
    else
        serving = katz_deli[0]
        puts "Currently serving #{serving}."
        katz_deli.shift
    end
end