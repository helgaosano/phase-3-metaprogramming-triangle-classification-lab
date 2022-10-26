class Triangle
  # write code here

attr_accessor :sideA, :sideB, :sideC
  
    def initialize(sideA, sideB, sideC)
        @sideA = sideA
        @sideB = sideB
        @sideC = sideC
    end

    def kind

      validate_triangle

      if sideA == sideB && sideB == sideC
        :equilateral
      elsif
      sideA == sideB || sideB == sideC || sideA == sideC
      :isosceles
      elsif
      sideA != sideB && sideB != sideC
      :scalene
      else
        raise TriangleError
      end
    end

    def validate_triangle
      real_triangle = [(sideA + sideB > sideC), (sideA + sideC> sideB), (sideB + sideC > sideA)]
      [sideA, sideB, sideC].each do |side|
        real_triangle << false if side <=0
      raise TriangleError if real_triangle.include?(false)
  
      end
    end
    
  class TriangleError < StandardError
  end
  end



