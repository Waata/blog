class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, :except => [:home, :articles]
  def index
    @articles = Article.all
  end
  def home
  end
end
