class StocksController < ApplicationController

  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        render 'users/my_portfolio'
      else
        flash.now[:alert]="Please Enter  a Valid Symbol"
        render 'users/my_portfolio'
      end
    else
      flash[:alert] = "Please Enter Valid Stock"
      # redirect_to my_portfolio_path,notice: "Please Enter Valid Stock"
    end
  end
end