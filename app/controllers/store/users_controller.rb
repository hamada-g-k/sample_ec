class Store::UsersController < Store::Base
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'アカウント登録が完了しました。'
      redirect_to store_root_url
    else
      render action: 'new'
    end
  end


  private

    def user_params
      params.require(:user).permit(
        :email,
        :family_name, :given_name,
        :family_name_kana, :given_name_kana,
        :gender,
        :birthday,
        :password, :password_confirmation,
        address_attributes: [ :id,
                                :postal_code,
                                :preference,
                                :city,
                                :address1,
                                :address2
                            ],
        phone_attributes: [ :id, :number ]
      )
    end
end
