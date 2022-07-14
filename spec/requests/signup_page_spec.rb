require 'rails_helper'

RSpec.describe 'Store_Signup', type: :request do
  let(:base_title) { 'サンプルECサイト' }

  describe '#singup' do
    it '正常にレスポンスを返すこと' do
      get store_signup_path
      expect(response).to have_http_status :ok
    end

    it 'トップページ | サンプルECサイトが含まれること' do
      get store_signup_path
      expect(response.body).to include "メンバー登録 | #{base_title}"
    end
  end
end
