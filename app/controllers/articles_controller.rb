class ArticlesController < ApplicationController

  def index
    search = params[:query]
    if search
      if search[:category_name]
        @articles = Article.from_category(search[:category_name])
      elsif search[:sub_category_names]
        @articles = Article.from_sub_categories(search[:sub_category_names])
      end
    else
      @articles = Article.first(10)
    end

    @categories = Category.all
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
