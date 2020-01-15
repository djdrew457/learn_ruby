#write your code here
def echo (x)
    "#{x}"
end

def shout (x)
    x = x.upcase!
    "#{x}"
end

def repeat(str, number = 2)
    ([str] * number).join(" ")
end

def start_of_word (str,number)
    str[0..(number-1)]
end

def first_word(str)
    num = str.index(" ")
    return str[0..(num-1)]
end

def titleize(phrase)
    words = phrase.split.map do |word|
      if %w(the and over).include?(word)
        word
      else
        word.capitalize
      end
    end
    words.first.capitalize!
    words.join(" ")
  end
  