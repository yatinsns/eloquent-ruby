# For modules

module UsefulInstanceMethods
  def an_instance_method
  end
end

module UsefulClassMethods
  def a_class_method
  end
end

class Host
  include UsefulInstanceMethods
  extend UsefulClassMethods
end

# Instead, do this.

module UsefulMethods
  module ClassMethods
   def a_class_method
   end
  end

  def an_instance_method
  end

  def self.included(host_class)
    host_class.extend(ClassMethods)
    puts "included"
  end
end

class Host1
  include UsefulMethods
end




