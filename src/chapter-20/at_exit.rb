at_exit do
  puts "First exit message"
end

at_exit do
  puts "Second exit message"
end

__END__
Last in, First out

This is also used in running tests:
require 'test/unit'

class SimpleTest < Test::Unit::TestCase
  def test_addition
    assert_equal 2, 1 + 1
  end
end

This runs because:
In Test::Unit,

at_exit do
  unless $! || Test::Unit::run?
    exit Test::Unit::AutoRunner.run
  end
end

