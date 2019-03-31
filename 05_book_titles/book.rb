class Book
    # write your code here
    attr_accessor :title


    def title
        small_words = %w[a aboard about above across after against along amid among an and anti around as at before behind below beneath beside besides between beyond but by concerning considering despite down during except excepting excluding following for from in inside into like minus near nor of off on onto opposite or outside over past per plus regarding round save since than the through to toward towards under underneath unlike until up upon versus via with within without]
        words = @title.split(" ")
        titleized = []
    
        words.each_with_index {|word, index| 
            if (index == 0 ) || !(small_words.include?(word))
                word[0] = word[0].upcase
            end
    
            titleized << word
        }
    
        @title = titleized.join(" ")
    
    end

end


