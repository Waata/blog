class ArticlesController < ApplicationController
  # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
  skip_before_action :authenticate_user!, :except => [:articles]
  
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def illustrations
    @articles = Article.all
  end

  # def photos
  #   @articles = Article.all
  # end

  # def projects
  #   @articles = Article.all
  # end
  
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article, notice: 'Created article.'
    else
      render :new
    end
  end
  
  def update
    @article = Article.find(params[:id]) 
    if @article.update(article_params)
      redirect_to @article, notice: 'Updated article.'
    else
      render :edit
    end
  end
  
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    
    redirect_to articles_path
  end

  
  private
  def article_params
    params.require(:article).permit(:title, :description, :photo, :photo_cache, :category_id, :new_category_name)
  end
end
