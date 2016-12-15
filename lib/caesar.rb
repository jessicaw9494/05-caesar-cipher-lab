$array_abc_low = [*?a..?z]   #these are arrays
$array_abc_up = [*?A..?Z]  #$ makes it a global variable/ visible for all methods

def caesar_encode(string, offset)
  string.split("").map do |character| #.map goes through array and creates a new array 
    if $array_abc_low.include?(character) #checks if a letter is in the first/second array
    new_character = $array_abc_low[($array_abc_low.index(character)+offset)%26]
    #   character_index = ($array_abc_low.index(character)+offset)%26  #adds in the offset number so the letter will change
    #   new_character=$array_abc_low[character_index] #returns element in the new index
    elsif $array_abc_up.include?(character) #checks if a letter is in the first/second array
    new_character = $array_abc_up[($array_abc_up.index(character)+offset)%26]
    #   character_index = ($array_abc_up.index(character)+offset)%26 #adds in the offset number so the letter will change
    #   new_character=$array_abc_up[character_index]
    else character #this is for symbols/number and returns 'nil'
    end
  end.join("")
end
# caesar_encode("hi", 1)
# [h,i]
# is "h" in $array_abc_low, true
# index value of "h" is 7
# do 7 + 1 = 8
# $array_abc_low[8]

# abc= [a,b,c,d] #element
#      [0,1,2,3] #index -> position
# abc[1]
# # => 0


def caesar_decode(string, offset)
  string.split("").map do |character| #.map goes through array and creates a new array 
    if $array_abc_low.include?(character) #checks if a letter is in the first/second array
    new_character = $array_abc_low[($array_abc_low.index(character)-offset)%26]
    #   character_index = ($array_abc_low.index(character)-offset)%26  #adds in the offset number so the letter will change
    #   new_character=$array_abc_low[character_index] #returns element in the new index
    elsif $array_abc_up.include?(character) #checks if a letter is in the first/second array
    new_character = $array_abc_up[($array_abc_up.index(character)-offset)%26]
    #   character_index = ($array_abc_up.index(character)-offset)%26 #adds in the offset number so the letter will change
    #   new_character=$array_abc_up[character_index]
    else character #this is for symbols/number and returns 'nil'
    end
  end.join("")
end
