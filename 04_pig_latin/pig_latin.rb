#write your code here
def translate(input_string)
    words = input_string.split(" ")
    vowels = "iaeou".split("")

    result = []

    words.each {|word|
        if vowels.include?(word[0])
            result << word+"ay"
        else # starts with consonant 
            first_part = ""
            second_part = ""
            index = 0
            word.each_char {|char| 
                if !(vowels.include?(char))
                    second_part += char
                elsif (char == 'u' && second_part[-1] == 'q')
                    second_part += char
                else
                    break
                end
                index += 1
            }
            first_part = word[index, word.length-1]
            second_part = second_part + "ay"
            result << (first_part + second_part)
        end
    }

    return result.join(" ")

end