class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    @categories = Category.all
    @ecologie_articles = Category.find_by(name: "Ecologie")&.articles
    @economie_articles = Category.find_by(name: "Economie")&.articles
    @politique_articles = Category.find_by(name: "Politique")&.articles
    @numerique_articles = Category.find_by(name: "Numérique")&.articles
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
  end

  def new
    @user = current_user
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user

    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:URL, :description, :category_id, sub_category_ids: [])
  end

end
