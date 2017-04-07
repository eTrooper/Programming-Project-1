class UsersController < ApplicationController
  
  before_action :logged_in_user, only: [:index, :edit, :update, :update_balance, :buy_stock]
  before_action :correct_user,   only: [:edit, :update, :update_balance, :buy_stock]
  
  def new
    @user = User.new
  end
  
  def dashboard
    @user = User.find(params[:id])
  end
  
  def index
    @users = User.paginate(page: params[:page])  
  end
  
  
  def show
   @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Infakestor!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    
    else
      render 'edit'
    end
    
   
  end
  
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation, :money, :stockArray)
    end
    
    def user_balance
      params.require(:user).permit(:money)
    end
    
    
    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def buy_stock(stockID, amount)
      @user = User.find(paramsID)
      stock = Stock.find(stockID)
      @user.stockArray.push(stock[0], stock[2], amount)
      cost = stock[2] * amount
      
      @user.money -= cost
      
    end
    
    def update_balance()
      @user = User.find(paramsID)
       if @user.update_attributes(user_balance)
        @user.money 
        redirect to @user
      end
    
      @user.money += amount
      
    end
    
    

  
end
