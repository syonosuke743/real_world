class HomesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to homes_path
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to homes_path
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to homes_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :description , :body, :taglist)
  end
end
