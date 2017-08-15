# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
  name_array.collect do |name|
    badge_maker(name)
  end
end

def assign_rooms(name_array)
  message_array = []
  message_index = 0
  name_array.each_with_index do |name, index|
    message_array[message_index] = "Hello, #{name}! You'll be assigned to room #{index+1}!"
    message_index+=1
  end
  return message_array
end

def printer(name_array)
  batch_badge_creator(name_array).each do |message|
    puts message
  end
  assign_rooms(name_array).each do |message|
    puts message
  end
end
