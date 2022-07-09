class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["HTTP_BASIC_USER"],
  password: ENV["HTTP_BASIC_PASSWORD"]

  def show
    @total_count = Product.all.count
    @total_category_count = Category.all.count
  end
end
