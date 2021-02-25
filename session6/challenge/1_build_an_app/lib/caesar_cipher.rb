module CaesarCipher
  @salt = 3

  ENCRYPT = Hash.new  { |hash, key| key }
  DECRYPT = Hash.new  { |hash, key| key }

  lowercase = ('a'..'z').to_a
  uppercase = ("A".."Z").to_a
  numbers =   ('0'..'9').to_a

  [lowercase, uppercase, numbers].each { |char|
    ENCRYPT.merge! Hash[char.zip(char.rotate @salt)]
    DECRYPT.merge! Hash[char.zip(char.rotate -@salt)]
    }

  def self.encrypt(message)
    message.gsub /./, ENCRYPT
  end

  def self.decrypt(message)
    message.gsub /./, DECRYPT
  end

  def self.change_encryption(salt)
    @salt = salt
  end
end
