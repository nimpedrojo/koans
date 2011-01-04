# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
	
	checkValidity(a,b,c)
	
	if (equilateral?(a,b,c))
		return :equilateral
	end
	if (isosceles?(a,b,c))
		return :isosceles
	end
	:scalene
end

def checkValidity(a,b,c)
	ordered=[a,b,c].sort
	inValidTriangle=( ordered[2] >= ( ordered[0]+ordered[1] ))
	raise TriangleError.new if inValidTriangle
end 

def isosceles?(a,b,c)
	((a == b) or (b == c) or (c == a))
end
	
def equilateral?(a,b,c)
	((a == b) and (b == c))
end


# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
