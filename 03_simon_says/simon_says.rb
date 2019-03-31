#write your code here
def echo(input_string)
    return input_string
end

def shout(input_string)
    return input_string.upcase
end

def repeat(input_string, times=2)
    return ((input_string + " ")*times).strip
end

def start_of_word(input_string, chars=1)
    return input_string[0,chars]
end

def first_word(input_string)
    return input_string.split(" ")[0]
end

def titleize(input_string)
    small_words = %w[a aboard about above across after against along amid among an and anti around as at before behind below beneath beside besides between beyond but by concerning considering despite down during except excepting excluding following for from in inside into like minus near nor of off on onto opposite or outside over past per plus regarding round save since than the through to toward towards under underneath unlike until up upon versus via with within without]
    words = input_string.downcase.split(" ")
    titleized = []

    words.each_with_index {|word, index| 
        if (index == 0 ) || !(small_words.include?(word))
            word[0] = word[0].upcase
        end

        titleized << word
    }

    return titleized.join(" ")

end
