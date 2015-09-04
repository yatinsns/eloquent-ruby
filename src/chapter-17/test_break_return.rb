class TempClass
  def each
    elements = (1..6).to_a
    index = 0
    while index < elements.length
      yield(elements[index])
      index += 1
    end
    puts "Each over"
  end
end

def main
  func = TempClass.new
  func.each do |element|
     puts element
     break if element == 3
  end
  puts "END"
end

main if __FILE__ == $0



__END__
With break in line #17
1
2
3
END

With return in line #17
1
2
3
