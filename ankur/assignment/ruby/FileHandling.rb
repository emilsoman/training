class FileHandling

	# check path existence
	def fileExist? path
		if File.exists? path
			fileType path
		else
			puts "The path doesn't exist."
			exit
		end
	end

	# check type of given path
	def fileType path
		if File.ftype(path) == 'file'
			true
		else
			puts "The given path isn't file."
			exit
		end
	end

	# make above two methods private
	private :fileExist?, :fileType

	# open file of given path in specified mode
	def openFile path, mode
		File.open(path, mode)
	end

	# make above method protected
	protected :openFile

	# start function for ruuning other functions
	def start file_path
		fileExist? file_path
	end
end

class FileOperation < FileHandling

	# main function for execution
	def main file_path

		# call function start of FileHandling class
		if start file_path

			# while loop for continuous execution
			while true
				puts "\t\t1 for adding lines to file"
				puts "\t\t2 for viewing file"
				puts "\t\t3 for exit"
				print "\t\tEnter your choice: "
				selection = gets.chop.to_i

				# call function openFile of FileHandling class and recieve object of opened file
				file = openFile file_path, "a+"

				if selection == 1
					puts "Enter the lines to add (Press enter and then Ctrl+D to stop):"

					# get input from console and write it in file
					while line = gets
						file.puts()
						file.print(line.chop)
					end
				elsif selection == 2

					# display contents of file on console
					file.each {|line| puts line}
				elsif selection == 3
					break
				else
					print "Please choose a correct number."
				end
				puts ""
				file.close
			end
		end
	end
end

# receive command line argument
file_path = ARGV[0]
ARGV.clear

# check nil command line argument
if file_path != nil
	# create an object of FileOperation class
	obj = FileOperation.new

	# call mathod main of FileOperation class
	obj.main file_path
else
	puts "Please give a file path as a command line argument."
end
