class Check
    def palindrome(x)
        if x.is_a?(String) or x<0
            return "Wrong Input"
        elsif x.to_s.reverse == x.to_s
        return "Palindrome"
        else
        return "Not Palindrome"
        
    
 
        end
    end

end
  


p Check.new.palindrome(1121)