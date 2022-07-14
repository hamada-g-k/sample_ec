require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#password' do
    example '文字列を与えると、password は長さ60の文字列になる' do
      user = User.new
      user.password = 'password'
      expect(user.password).to be_kind_of(String)
      expect(user.password.size).to eq(60)
    end
  end
end
