class StocksController < ApplicationController
  def search
    if params[:stock].blank?
      flash.now[:danger] = "you have entered empty string"
    else
      @stocks = Stock.new_from_lookup(params[:stock])
      flash.now[:danger] = "You have entered an incorrect ticker symbol" unless @stocks
    end

    respond_to do |format|
      format.js { render partial: 'users/result'}
    end
  end
end