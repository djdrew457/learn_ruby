class Book
    # create a getter and setter method for title
    attr_accessor :title

    #setter method format for title
    def title=(str)    
        #split up words
        split_title = str.split(" ")
        #cases for conditionals
        $except = ['the', 'a' , 'an' , 'the', 'in', 'of','and']
        $always = ['i']
        #take in each word in title an run this code:
        split_title.each do |word|
            if !$except.include? word
                #if word isn't the exception capitalize it
                word.capitalize!
            elsif $always.include? word 
                #if world should always be capitalized
                word.capitalize!
            else
            end
        end
        #capitalize first word
        split_title[0].capitalize!
        #join array of words to join_title
        join_title = split_title.join(" ")
        #set @title to fixed book title
        @title = join_title
    end
end
#should capitalize every word except... articles{the, a, an}
#conjunctions{and}
#prepositions{in of}
#always capitalize I and the first word
