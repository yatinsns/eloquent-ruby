class SimpleBaseClass
  def self.inherited(new_subclass)
    puts "Hey #{new_subclass} is now a subclass of #{self}"
  end
end

class SimpleDerivedClass < SimpleBaseClass
end

__END__
$ ruby inherited.rb
Hey SimpleDerivedClass is now a subclass of SimpleBaseClass
