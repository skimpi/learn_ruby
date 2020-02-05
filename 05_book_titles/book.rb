class Book
    attr_accessor :title

    def title=(title)
        no_cap = ["the", "a", "an", "and", "in", "of"]
        arr = title.split(' ').each_with_index.map do |x, i|
            unless i != 0 && no_cap.include?(x)
                x.capitalize
            else
                x
            end
        end

        @title = arr.join(' ')
    end

end


