file = File.new("c1.rb", "a+")
file.each {|line| puts line}

puts file.closed?
file.puts()
file.puts("Entering line from a program.")

file.rewind

file.each {|line| puts line}

#IO.foreach(file) {|line| putc line}

file.close

puts file.closed?