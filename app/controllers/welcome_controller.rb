class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, :except => [:home]
  # authorize! :edit, @article
  def index
    @articles = Article.all
  end
  def home
  end
end
