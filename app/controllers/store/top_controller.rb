class Store::TopController < Store::Base
  def index
    render action: 'index'
  end
end
