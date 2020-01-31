class Calculator
    def initialize(x,y)
        @x=x
        @y=y
    end

    def add
      if @x.is_a?(Integer) and @y.is_a?(Integer) and !@x.nil? and !@y.nil? 
        return @x+@y
      else 
        return "Enter integer values only"
      end
    end
    def sub
      if @x.is_a?(Integer) and @y.is_a?(Integer) and !@x.nil? and !@y.nil?
        return @x-@y
      else 
        return "Enter integer values only"
      end
    end
    def multiply
      if @x.is_a?(Integer) and @y.is_a?(Integer) and !@x.nil? and !@y.nil?
        return @x*@y
      else 
        return "Enter integer values only"
      end
    end
      def divide
        if @x.is_a?(Integer) and @y.is_a?(Integer) and @y!=0 and !@x.nil? and !@y.nil?
          return @x/@y
        else 
          return "Either denominator is zero or you entered wrong input type"
        end
      end
end
      
    
    

s=Calculator.new(10,nil)
p s.divide