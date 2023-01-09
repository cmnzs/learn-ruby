# def format(st)
#   st.downcase.split(" ").join("-")
# end

# puts format("North Dakota")
# puts format("Wild Bear Alaska")

state_names = ["Kansas", "Nebraska", "North Dakota", "South Dakota "]

def urlify(string)
  string.downcase.split.join("-")
end

# urls: Imperative version
def imperative_urls(states)
  urls = []
  states.each { |state| urls << urlify(state) }
  urls
end

p "imperative: #{imperative_urls(state_names)}"

p "map         #{state_names.map { |s| urlify(s) }}"

def generate_urls(url_prefix = "https://example.com/", states)
  states.map { |s| "#{url_prefix}#{urlify(s)}" }
end

puts "-0-0-"
puts "Generated URLs:"
puts generate_urls(state_names)

puts "-0-0-"
puts "select functions"

def imperative_singles(states)
  singles = []
  states.each do |s|
    if s.split.length == 1
      # singles.push(s)
      singles << s
    else
    end
  end
  singles
end

puts imperative_singles(state_names)

def filter_singles(states)
  states.select { |s| s.split.length == 1 }
end

puts filter_singles(state_names)

# Exercise 6.2.1
#
#

def is_dakota_1?(s)
  s.downcase.include?("dakota")
end

def is_dakota_2?(s)
  s.split.length == 2
end

def dakota_check(states)
  puts "Checking if is dakota 2 ways.."

  puts states.select { |s| is_dakota_1?(s) }

  puts states.select { |s| is_dakota_2?(s) }

  puts "Done checking!"
end

dakota_check(state_names)

puts "-0-0-"
puts
puts "reducer section"
# Reducers

def imperative_sum(numbers)
  total = 0
  numbers.each { |n| total += n }
  total
end

puts "imperative impl:"
puts imperative_sum(0..10)

def reduce_sum(numbers)
  numbers.reduce { |acc, n| acc += n }
end

puts "reducer impl:"
puts reduce_sum(0..10)

def reducer_build_map(states)
  states.reduce({}) do |acc, s|
    acc[s] = s.length
    acc
  end
end

puts reducer_build_map(state_names)

def product(numbers)
  numbers.reduce(1) { |p, n| p * n }
end

puts product(1..4)
