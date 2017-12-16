inventenry = Array.new
error = Array.new
index1 = 0
index2 = 0
line = /(\d{4}): ([A-Z]+[a-z]+[a-zA-Z]*),\s*([A-Z]{4}),\s*(\d{2}[A-Z]{3}\d{2})/
filename = ARGV[0]
file = File.open(filename)
file.each do |str|
  if !str.match(line)
    error[index2]=str
    index2 += 1
  else
    output = str.split(/[,: ]+/)
    inventenry[index1]=output
    index1 += 1
  end
end
file.close

for i in 0..error.length - 1
  puts "ERROR: #{error[i]}"
end

puts "CATEGORIES"
puts (inventenry.sort_by{|a,b,c,d|c}).collect {|ind| ind[2] +", " + ind[1]}
puts "ITEMS"
x = (inventenry.sort_by{|a,b,c,d|b}).uniq { |x| x[1] }
puts x.collect {|ind| ind[0]+": " + ind[1]+", "+ ind[3]}