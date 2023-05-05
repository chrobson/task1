class ValidatePassword
    def initialize(password)
      @password = password
    end
  
    def perform
      valid_length? && has_uppercase? && has_lowercase? && has_digit? && has_special_char? && max_two_consecutive_repeating_chars?
    end
  
    private
  
    def valid_length?
      @password.length >= 6 && @password.length <= 24
    end
  
    def has_uppercase?
      !(@password =~ /[A-Z]/).nil?
    end
  
    def has_lowercase?
      !(@password =~ /[a-z]/).nil?
    end
  
    def has_digit?
      !(@password =~ /\d/).nil?
    end
  
    def has_special_char?
      !(@password =~ /[!@#$%&*+=:;?<>]/).nil?
    end
  
    def max_two_consecutive_repeating_chars?
      @password !~ /(.)\1{2,}/
    end
  end
  

output =  ValidatePassword.new("Password1!").perform
puts output
output = ValidatePassword.new("password1!").perform
puts output