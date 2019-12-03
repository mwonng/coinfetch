class DashboardController < ApplicationController
  include TransactionsHelper
  
  def index
    @currencies = Currency.all;
    return @currencies
  end

  def capture
    Currency.all.each do |c|
      capture_and_save(c)
    end 
    flash[:notice] = "Updated"
    redirect_to root_path
  end
end
