require './vow.rb' 
require 'rspec'
RSpec.describe Replace do 
   context "Checking with a valid input" do 
      
      it "delete when a string has vowel" do 
         k= Replace.new 
         str = 'hi,i am a developer' 
         k.vowel(str) == true
      end 
		
      it "return original string when string does not contain vowel" do 
         k= Replace.new 
         str = 'kjhry' 
         k.vowel(str) == true
      end 

      it "checking for empty string" do 
        k= Replace.new 
        str = " "
        k.vowel(str)  == "Enter valid input"
      end 
      
     it "checking for nil string" do 
        k= Replace.new  
        str = ""
        k.vowel(str)  == "Enter valid input"
      end 

   end 
end
