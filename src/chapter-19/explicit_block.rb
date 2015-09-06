def run_that_block(&that_block)
  puts "About to run the block"
  that_block.call
  puts "Done running the block"
end

def main
  run_that_block { puts "Hello" }
end

main if __FILE__== $0
