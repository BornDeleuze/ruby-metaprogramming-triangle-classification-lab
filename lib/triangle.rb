class Triangle

  attr_reader :length3, :length2, :length1,:kind

  def initialize(length1,length2,length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    
    if length1 == nil
      raise TriangleError
    end
  end

  def kind
    if length1 <= 0 || length2 <= 0 || length3 <= 0 || length1 + length2 <= length3 || length2 + length3 <= length1 || length1 + length3 <= length2
       raise TriangleError

    elsif length1==length2 && length1== length3
      kind = :equilateral

    elsif length1== length2 || length1 == length3 || length2 == length3
      kind = :isosceles

    else
      kind = :scalene
    end

    kind
  end

  class TriangleError < StandardError
    #triangle error code

  end


end
