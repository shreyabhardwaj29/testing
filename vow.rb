class Replace
    def vowel(str)
        if str.nil? and str == " "
            return "Enter valid input"
        else 
          return str.delete('aeiouAEIOU')
        end
    end
end
r=Replace.new()
p r.vowel('hlksw mmm')