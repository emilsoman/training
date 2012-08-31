print "Enter the value:(-999 to exit) "
val = gets.to_i
while val != -999
	if val > 0
		puts "The no. is +ve"
		puts "Bye-2......!"
	elsif val < 0
		puts "The no. is -ve"
		puts "Bye........!"
	elsif val == 0
		puts "The no. is zero."
		puts "Bye-2!!!!!!!"
	end
	print "Enter new no.:(-999 to exit) "
	val = gets.to_i
end	