require 'rails_helper'

RSpec.describe 'Store_Top', type: :request do
  let(:base_title) { 'サンプルECサイト' }

  describe '#index' do
    it '正常にレスポンスを返すこと' do
      get store_top_path
      expect(response).to have_http_status :ok
    end

    it 'トップページ | サンプルECサイトが含まれること' do
      get store_top_path
      expect(response.body).to include "トップページ | #{base_title}"
    end
  end
end
