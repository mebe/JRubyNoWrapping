require 'rubygems'
require 'java'
require 'jruby/core_ext'

module F
    include_package "foo.deep"
end

include F

class Java::FooDeep::Row

    def self.inherited(subclass)

        subclass.class_eval do

            table_name = subclass.to_s

            define_method :initialize do |*args|
                super(table_name)
            end

        end

    end
end