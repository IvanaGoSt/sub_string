string_input = gets.chomp.downcase
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
counting_hash = dictionary.each_with_object(0).to_h
def substrings(str, dict, h)
  dict.map { |x| h[x] = str.scan(x).size }  
end
substrings(string_input, dictionary, counting_hash)
counting_hash.select! { |k,v| v > 0 }
p counting_hash
