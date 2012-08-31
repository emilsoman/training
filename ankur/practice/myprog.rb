a = %w{ 1 ant bee cat 100}
puts a[0]
puts a[1]
puts a[2]
puts a[3]
puts a[4]

h = {
	cello: 		'string',
	clarinet: 	'woodwind',
	drum: 		'percussion',
	oboe: 		'woodwind',
	trumpet: 	'brass',
	violin: 	'string'
}
puts "An oboe os a #{h[:oboe]}"
p h[:trumpet]
p h[:drum]

histogram = Hash.new(0)  # The default value is zero
p histogram['ruby']
histogram['ruby'] = histogram['ruby'] + 1
p histogram['ruby']