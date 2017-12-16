def double (int_values)
  int_values.sort.each {|x|print (x);print(" ");print(x*2);puts}
end

s = [125,200,25,150,50]
double(s)