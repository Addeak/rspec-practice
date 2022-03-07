require 'password_checker'

describe PasswordChecker do
  it 'accepts password of 8+ chars' do
    password = PasswordChecker.new
    result = password.check("chocolate")
    expect(result).to eq true
  end

  context 'when password is less than 8 chars' do 
    it 'fails' do 
      password = PasswordChecker.new
      expect { password.check("milk") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end
