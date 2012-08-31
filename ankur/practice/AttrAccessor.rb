class AttrAccessor

	# It'll create getter and setter for wodth and height
	attr_accessor :width, :height

	# instance method for getting area
	def getArea
		@width * @height
	end
end

# create an object using new
box = AttrAccessor.new

# setting the value
box.width = 10
box.height = 20

# getting the value
w = box.width
h = box.height

# freeze the object
box.freeze
puts box.frozen?

# output the value on console
puts "Width of the box is: #{w}"
puts "Height of the box is: #{h}"

puts "Area of the box is: #{box.getArea}"