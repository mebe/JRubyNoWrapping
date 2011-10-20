require File.expand_path('../job', __FILE__)

puts "Trying to cause non-wrapped object to appear..."
i = 0
a = Java::foo.RCTest.new
l = lambda { Job.new }
e = a.construct(l)
while(e.class.to_s == "Job") do
    e = a.construct(l)
    i += 1
end

puts "After #{i} iterations, constructed object has class #{e.class.to_s} instead of #{Job.to_s}"