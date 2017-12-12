require_relative '../lib/RSA.rb'

RSpec.describe RSA do
 
 msg = "message"
 new_keys = rsa.new_key
 rsa_rand = RSA.new(new_keys[0], new_keys[1], new_keys[2])

  it "checks if crypt/decrypt works with random keys" do
   expect(rsa_rand.decrypt(rsa_rand.encrypt(msg))).to eq(msg)
  end

end
