require 'java'
require 'jruby/core_ext'

require_relative 'with_inherited'
require_relative 'no_inherited'
require_relative 'subclass_of_with_inherited'
require_relative 'subclass_of_no_inherited'

creator_caller = Java::foo.RCTest.new

class WithInheritedCreator

  include Java::foo.RCTest::Creator

  def create
    SubclassOfWithInherited.new
  end

end

class NoInheritedCreator

  include Java::foo.RCTest::Creator

  def create
    SubclassOfNoInherited.new
  end

end

puts

with_inherited_creator = WithInheritedCreator.new

puts 'Following three lines should all say "SubclassOfWithInherited"'
puts SubclassOfWithInherited.new.class
puts with_inherited_creator.create.class
puts creator_caller.construct(with_inherited_creator).class

puts

no_inherited_creator = NoInheritedCreator.new

puts 'Following three lines should all say "SubclassOfNoInherited"'
puts SubclassOfNoInherited.new.class
puts no_inherited_creator.create.class
puts creator_caller.construct(no_inherited_creator).class