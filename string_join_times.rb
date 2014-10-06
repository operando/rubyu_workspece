start = Time.now
str = ""
(0...10000).each do
  str += "test"
  str += "test"
  str += "test"
  str += "test"
  str += "test"
  str += "test"
  str += "test"
  str += "test"
  str += "test"
  str += "test"
end
puts "String#+   : #{Time.now - start}[sec]"

start = Time.now
str = ""
(0...10000).each do
  str << "test"
  str << "test"
  str << "test"
  str << "test"
  str << "test"
  str << "test"
  str << "test"
  str << "test"
  str << "test"
  str << "test"
end
puts "String#<<  : #{Time.now - start}[sec]"

start = Time.now
ary = []
(0...10000).each do
  ary << "test"
  ary << "test"
  ary << "test"
  ary << "test"
  ary << "test"
  ary << "test"
  ary << "test"
  ary << "test"
  ary << "test"
  ary << "test"
end
str = ary.join
puts "Array#join : #{Time.now - start}[sec]"

# -------------result-------------
# String#+   : 10.601607[sec]
# String#<<  : 0.016001[sec]
# Array#join : 0.027002[sec]
# -------------result-------------