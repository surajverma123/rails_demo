class UsersController < ApplicationController
  def my_portfolio
    @user = current_user
    @user_stocks = current_user.stock
  end

  def my_friends
    
  end
end