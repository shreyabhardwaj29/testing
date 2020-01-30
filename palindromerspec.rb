require './palindrome.rb' 
require 'rspec'
RSpec.describe Check do 
   context " checking With valid input" do 
      
      it "should return palindrome " do 
         s= Check.new 
         n = 121 
         s.palindrome(n) == "Palindrome"
        end 
		
      it "should return not palindrome" do 
        s= Check.new 
        n = 1261 
        s.palindrome(n) == "Not Palindrome"
       end
    end
    context " Checking with invalid input" do

      it "should detect for empty string" do 
        s= Check.new 
        n = ' ' 
        s.palindrome(n) == "Wrong Input"
       end
      
     it "check if the input is string" do 
        s= Check.new 
        n = "adcd"
        s.palindrome(n) == "Wrong Input"
     end 
      
     it "check if the input is a negative number" do 
        s= Check.new 
        n = -12314
        s.palindrome(n) == "Wrong Input"
     end 

   end 
end