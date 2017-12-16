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

HID_num ("SALZ18347692 SALZ62487931") # returns 18347692
HID_num ("HOuN12345678 HOUN24681357") # returns 24681357
HID_num ("ChAP62148730 CHA62148730") # returns nil