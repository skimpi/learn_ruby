#write your code here
def echo (n)
    if n == "hello"
        n = "hello"

    elsif n == "bye"
        n = "bye"
    end
end

def shout (n)
    n.upcase
end

def repeat (n = "",q = 0)
    if q == 0
        x = n + " " +  n
    elsif q > 0
        x = ((n + " ") * (q - 1)) + n;
    end
end

def start_of_word (n, q)
    x = n[0,q]
end

def first_word (n)
    n.split.first 
end

def titleize(str)
    str.capitalize!  # capitalize the first word in case it is part of the no words array
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    phrase = str.split(" ").map {|word| 
        if words_no_cap.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ") # I replaced the "end" in "end.join(" ") with "}" because it wasn't working in Ruby 2.1.1
  phrase  # returns the phrase with all the excluded words
end