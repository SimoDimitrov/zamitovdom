﻿require "prime.rb"  

class RSA

    def initialize n, e, d
       @n = n
       @e = e
       @d = d
    end

    def n
       @n
    end

    def e
       @e
    end 

    def d
       @d
    end
    
    def new_key
    
	begin
	p = rand(50..9999)
	q = rand(50..9999)
	end while(!Prime.prime?(p) || !Prime.prime?(q)) 
	
	@n = p * q
    prov = (p-1)*(q-1)
	check = 1
	
	begin
	@e = rand(1..20)
		if @e > 1 && @e < prov && Prime.prime?(e)
		check = 5
		end
	end while (check<2)
	
	begin 
    d = d + 1
	end while ((e * d)%prov != 1)
	
	answer = [n, e, d]
    return answer

    end
    
    def encrypt message
        message.each_char.map {|c| ((c.ord ** @e % @n)).to_s }.join(";")
    end
    
    def decrypt message
       message.split(";").map {|c| (c.to_i ** @d % @n).chr }.join("")
    end 
 end
