class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @article = Article.new
  end

  def create
    @article = article.new(article_params)
    @article.user = User.find(params[:user_id])
    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end

  private

    def article_params
    params.require(:user).permit(:category, :subcategory, :URL, :description, :upvotes, :fake_news)
  end

end
