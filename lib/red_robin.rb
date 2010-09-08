require "ohm"
require "red_robin/robin"
# RedRobin
module RedRobin
  def self.included(base)
    base.extend ClassMethods
  end
  module ClassMethods
    def red_robins_on(name, items)
      @@robin = Robin.find_or_create(:name => "#{self}:#{name}", :items => items)
      define_method "next_#{name}" do 
        @@robin.next
      end
    end
  end
  module InstanceMethods
  end
end

