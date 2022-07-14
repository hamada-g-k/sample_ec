require 'rails_helper'

RSpec.describe 'Store_Signup', type: :request do

  describe '#post_signup' do
    it 'ユーザー登録が正しく行われること' do
      post store_users_path,
        params: {
          email: 'test@example.com',
          password: 'password',
          password_confirmation: 'password',
          family_name: '試験',
          given_name: '太郎',
          family_name_kana: 'シケン',
          given_name_kana: 'タロウ',
          gender: 'male',
          birthday: '1989-01-01',
          # postal_code: '001-0011',
          # prefecture: '東京都',
          # city: '渋谷区',
          # address1: '1-1-1',
          # address2: '道玄坂ハイツ601',
          # number: '09012345678'
        }
      expect(response).to redirect_to(store_root_url)
    end
  end
end
