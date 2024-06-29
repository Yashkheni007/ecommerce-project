class HomeController < ApplicationController
  def index
    @products = Product.all
  end
  def my_account

  end
  def checkout_page

  end
  def order_confirmation

  end
  def contact_us

  end
end
