class RepeatBackToMe
  def method_missing(method_name, *args)
    puts "Custom method missing : #{method_name} #{args.join(' ')}"
  end
end

def main
  r = RepeatBackToMe.new
  r.some_method(1)
end

main if __FILE__ == $0

__END__
Default missing_method lives in the Kernel module, which is included by Object.

