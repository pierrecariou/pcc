class CommentsController < ApplicationController

  def index
    search = params[:query]
    if search
      if search[:date_from] && search[:category_name] && search[:sub_category_names] && search[:sub_category_names].reject(&:blank?).any?
        @comments = Comment.from_date(search[:date_from]) & Comment.from_sub_categories(search[:sub_category_names])
        # @articles = policy_scope(Article)
        @sub_categories_selected = SubCategory.where(name: search[:sub_category_names])
        @category = @sub_categories_selected.last&.category
        @sub_categories = @category&.sub_categories
      elsif search[:date_from] && search[:category_name]
        @comments = Comment.from_date(search[:date_from]) & Comment.from_category(search[:category_name])
        # @articles = policy_scope(Article)
        @category = Category.find_by_name(search[:category_name])
        @sub_categories = @category.sub_categories
      elsif search[:date_from]
        @comments = Comment.from_date(search[:date_from])
        # @articles = policy_scope(Article)
      end
    else
      @comments = Comment.all
      # @articles = policy_scope(Article)
      @sub_categories = []
      @category = Category.find_by_name("top")
    end
    @categories = Category.all
  end

  def new
    @article = Article.find(params[:article_id])
    @comment = Comment.new
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = Comment.new(comment_params)
    @comment.article = @article
    @comment.user = current_user
    months = ["nil", "janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre" "décembre"]
    @comment.date = Time.now.to_s.split()[0].split("-")[2] + " " + months[Time.now.to_s.split()[0].split("-")[1].to_i] + " " + Time.now.to_s.split()[0].split("-")[0]
    if @comment.save
      respond_to do |format|
        format.html { redirect_to article_path(@article, query: { debat_title: @comment.title }, anchor: 'anchor-comment') }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
    end
  end

  # def participants
  #   array = []
  #     @article.comments.each do |comment|
  #       array << comment.user.pseudo
  #     end
  #     new_array = array.uniq
  #     new_array.each do |element|
  #       element
  #     end
  # end

  private

  def comment_params
    params.require(:comment).permit(:title, :text, :source, :upvotes, :date)
  end
end

