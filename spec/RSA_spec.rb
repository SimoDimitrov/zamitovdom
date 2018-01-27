require_relative '../lib/RSA.rb'

describe RSA do
 
 msg = "message"
 new_keys = rsa.new_key
 rsa_rand = RSA.new(new_keys[0], new_keys[1], new_keys[2])
 
 it "return n" do
        expect(rsa_rand.n).to eq(new_keys[0])
 end
 it "return e" do
        expect(rsa_rand.e).to eq(new_keys[1])
 end
 it "return d" do
        expect(rsa_rand.d).to eq(new_keys[2])
 end

 it "checks if crypt/decrypt works with random keys" do
        expect(rsa_rand.decrypt(rsa_rand.encrypt(msg))).to eq(msg)
 end
 
end
