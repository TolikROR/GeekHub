class ArticlesController < ApplicationController
  before_action :current_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)

    redirect_to articles_path
  end

  def edit

  end

  def update
    @article.update(article_params)

    redirect_to @article
  end

  def destroy
    @article.destroy

    redirect_to articles_path
  end

  private

  def current_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
