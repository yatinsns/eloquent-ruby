def with_logging(description)
  puts "Starting #{description}"
  result = yield
  puts "Ending #{description}"
  result
end

def main
  with_logging("multiplication") do
    2 * 2
  end
end

puts main if __FILE__ == $0
