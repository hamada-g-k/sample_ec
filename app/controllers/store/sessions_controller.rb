class Store::SessionsController < Store::Base
  def new
    if current_user
      redirect_to :store_root
    else
      @form = Store::LoginForm.new
      render action: 'new'
    end
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      session[:user_id] = @user.id
      flash[:success] = "ログインしました。"
      if @user.admin?
        redirect_to root_url
      else
        redirect_to @user
      end
    else
      flash.now[:danger] = "メールアドレス または パスワードが間違っています。"
      render 'new'
    end
  end
end
