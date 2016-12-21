class CategoryController < ApplicationController
  def index
    @articles = Article.all
  end
end
