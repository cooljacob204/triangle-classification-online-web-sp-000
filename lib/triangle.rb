require 'pry'

class Triangle
  attr_reader :kind
  
  def initialize(s1,s2,s3)
    @s1 = s1; @s2 = s2; @s3 = s3;
    
    if !triangleIsValid?
<<<<<<< HEAD
      raise TriangleError
=======
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.invalidSize
      end
>>>>>>> 836aa86a1dfd1bae12892ce1ec14a8a7924c55b7
    else
      setTriangleType
    end
  end
  
  private
  
  def setTriangleType
    if (@s1 == @s2 && @s2 == @s3)
      @kind = :equilateral
    elsif (@s1 == @s2 || @s2 == @s3 || @s3 == @s1)
      @kind = :isosceles
    else
      @kind = :scalene
    end
    
  end
  
  def triangleIsValid?
<<<<<<< HEAD
    return false if (@s1 <= 0 || @s2 <= 0 || @s3 <= 0)
    
    if ((@s1+@s2 <= @s3) ||
        (@s1+@s3 <= @s2) ||
        (@s2+@s3 <= @s1)) 
      then
        return false
    end
    
=======
    if (@s1 == 0 || @s2 == 0 || @s3 == 0)
      return false
      
    if ((@s1+@s2 > @s3) ||
        (@s1+@s3 > @s2) ||
        (@s2+@s3 > @s3)) 
      then
        return false
      end
    end
>>>>>>> 836aa86a1dfd1bae12892ce1ec14a8a7924c55b7
    return true
  end

  class TriangleError < StandardError
<<<<<<< HEAD
=======
    def invalidSize
      "Triangle is invalid"
    end
>>>>>>> 836aa86a1dfd1bae12892ce1ec14a8a7924c55b7
  end
end
