class HomeController < ApplicationController
  #before_action :authenticate_user!

  def index
    count = 0
    a = [1,2,3]
    a.each do|t|
      count += 1
      puts count
    end
  end
end
