=begin
Pham Duc Minh 
Viet Nhat IS1
=end
a=[1]
s=0
for i in 2..1000
	for j in 1..(i/2).to_i
		if i%j==0
			s+=j
		end
	end
	if(i==s)
		a+=[i]
	end
	s=0
end
puts a
