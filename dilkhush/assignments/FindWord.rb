class WordMatching
	def find_word(name)
		count = 1
		value = 1
		output = ""
		file = File.open("test1.txt", "r") 
			while (line = file.gets)
				arr = line.split(" ")
				i = 1
				arr.each do |str|
					if (str == name)
						value = 0
						output += "(#{count},#{i})"
					end
				i += 1
				end
			count += 1
			end
			if value == 0
				return "word #{name} is present in (line, word) : #{output}"
			elsif value == 1
				return "word is not present in the file"
			end
		file.close
	end

	print "Enter a word : "
	name1 = gets.chop
	wordMatch = WordMatching.new()
	result = wordMatch.find_word(name1)
	puts result
end	

