katz_deli = []    
#we start the day with an empty line

def line(deli)                            
  if deli.length > 0                
    msg = "The line is currently:"
    deli.each_with_index do |name, idx|
      msg << " #{idx.next}. #{name}" 
    end
      puts msg 
  else 
    puts "The line is currently empty." 
  end
end

def take_a_number(deli, name)
  deli << name unless deli.include?(name)
  line_number = (deli.index(name).next)
  puts "Welcome, #{name}. You are number #{line_number} in line."
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli.shift}."
  end
end
