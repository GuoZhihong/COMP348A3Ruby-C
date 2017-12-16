def HID_num(str)
  line = /^[A-Z][A-Z][A-Z][A-Z]\d{8}$/
  str.split(" ").each do |x|
    if x.length != 12
      next
    else
      if x =~ line
        return puts x[4,11]
      else
        next
      end
    end
  end
  puts "nil"
  return nil
end

if ARGV.length != 1
  return nil
end
filename = ARGV[0]
file = File.open(filename)
file.each{|line| HID_num(line)}
file.close


