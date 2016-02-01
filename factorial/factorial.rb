def factorial(x)
	return x.to_s + "! does not exist" if x < 0

	factorial = (1..x).reduce(:*) || 1
	return x.to_s + "! = " + factorial.to_s
end