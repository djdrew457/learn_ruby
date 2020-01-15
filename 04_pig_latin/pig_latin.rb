#write your code here
def translate (str)
    #establish vowels and consonants and 'qu'
    $vowels = %w[a e i o u]
    $const = ('a'..'z').to_a - $vowels
    $qu = 'qu'
    final = ""
    #split words from string and run a method 'pig' on each of them
    str.split(" ").each do |word|
    
      final << "#{pig(word)}"
      final << " "
    end
    #return the string in pig latin (chop to get rid of space at end)
    return final.chop!
end
  
  
def pig (str)
    if $vowels.include?(str[0])
        #if vowel is the first letter add 'ay'
        return str << "ay"
    elsif $const.include?(str[0]) && $const.include?(str [1]) && $const.include?(str [2])
        #if word begins with 3 consonants move them all to end and add 'ay'
        return str[3..-1]+str[0..2]+"ay"
    elsif $const.include?(str[0]) && $const.include?(str [1])  && !$qu.include?(str[1..2]) ||  $qu.include?(str[0..1])
        #if word begins with 2 consonants move them all to end and add 'ay'
        #as well as moving 'qu' to end of word begins with 'qu'
        return str[2..-1]+str[0..1]+"ay"
    elsif $const.include?(str[0]) && $qu.include?(str[1..2])
        #treat 'qu' as 1 consonant and move to end
        return str[3..-1]+str[0..2]+"ay"
    elsif $const.include?(str[0])
        return str[1..-1]+str[0]+"ay"
    else
        #troubleshooting help
        puts "help"
    end
end
 
  
