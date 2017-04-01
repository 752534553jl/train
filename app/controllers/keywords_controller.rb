class KeywordsController < ApplicationController
  def index
    sort
    @categories = Category.all
  end

  private
    def sort
    end
end
