# Write your code here.

def line(queue)
  if(queue.length == 0)
    puts "The line is currently empty."
  else
    results = ["The line is currently:"]
  
    queue.length.times do |idx|
      results << " #{idx+1}. #{queue[idx]}"
    end
    
    puts results.join()
  end
end

def take_a_number(queue,name)
  
  phrase = ""
  if(queue.length == 0)
    phrase = "Welcome, #{name}. You are number 1 in line."
  else
    phrase = "Welcome, #{name}. You are number #{queue.length+1} in line."
  end
  
  puts phrase
  
  queue << name
end

def now_serving(queue)
  if(queue.length == 0)
    puts "There is nobody waiting to be served!"
  else
    current_customer = queue.shift
    puts "Currently serving #{current_customer}."
  end
  queue
end