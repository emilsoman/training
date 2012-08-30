file_path = ARGV[0]
ARGV.clear
while true
	puts "\t\t1 for adding lines to file"
	puts "\t\t2 for viewing file"
	puts "\t\t3 for exit"
	print "\t\tEnter your choice: "
	selection = gets
	selection = selection.chop.to_i
	if File.exists?(file_path)
		if File.ftype(file_path) == "file"
			afile = File.open(file_path, "a+")
			if selection == 1
				puts "Enter the lines to add (Press enter and then Ctrl+D to stop):"
				while line = gets
					afile.puts()
					afile.print(line.chop)
				end
			elsif selection == 2
				afile.each {|line| puts line}
			elsif selection == 3
				break
			else
				print "Please choose a correct number."
			end
			puts ""
			afile.close
		else
			puts "The given path isn't file."
		end
	else
		puts "The path doesn't exist."
	end
end