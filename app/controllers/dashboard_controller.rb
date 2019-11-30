require "http"

class DashboardController < ApplicationController
  def index
    response = HTTP.get('https://data.exchange.coinjar.com/products/BTCAUD/ticker').to_s;
    res_json = JSON.parse(response)
    @res = res_json['bid']
    puts @res
  end
end
