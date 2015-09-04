def do_something
  yield if block_given?
end

do_something do
  puts "Hello from inside the block"
end


def do_something_with_arg
  yield("Hello World") if block_given?
end

do_something_with_arg do |message|
  puts "messages is: #{message}"
end

def print_the_value_returned_by_the_block
  if block_given?
    value = yield
    puts "The block returned: #{value}"
  end
end

print_the_value_returned_by_the_block { 4 / 2 }

=begin
class Document

  def each_word
    word_array = words
    index = 0
    while index < words.size
      yield(word_array[index])
      index += 1
    end
  end

end
=end

