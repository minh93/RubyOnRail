=begin
Name: Pham Duc Minh
SID:  20111866
=end
def isPrime(a)
	check = 1
	if a <= 2
		0
	else
		for i in 2..a/2
			if a%i == 0 
				check = 0
			end
		end
		check
	end
end

findPrimeProcs = Proc.new{|a|
	check = 1
	if a <= 2 
		puts "This is not a prime number!"
	else
		for i in 2..a/2
			if a%i == 0 
				check = 0
			end
		end
		if check == 1
			puts "Prime number"
		else
			puts "This is not a prime number!"
		end
	end
}

print "Check prime number\n"
print "Enter a number:"
var = gets.to_i
puts "- Using Proc: "
findPrimeProcs.call(var)
puts "- Using method: "
if isPrime(var)==1
	puts "Prime number!"
else
	puts "This is not a prime number!"
end
