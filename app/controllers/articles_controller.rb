class ArticlesController < ApplicationController

  def index
    @articles = policy_scope(Article).order(created_at: :desc)
    search = params[:query]
    if search
      if search[:date_from] && search[:category_name] && search[:sub_category_names] && search[:sub_category_names].reject(&:blank?).any?
        @articles = Article.from_date(search[:date_from]) & Article.from_sub_categories(search[:sub_category_names])
        # @articles = policy_scope(Article)
        @sub_categories_selected = SubCategory.where(name: search[:sub_category_names])
        @category = @sub_categories_selected.last&.category
        @sub_categories = @category&.sub_categories
      elsif search[:date_from] && search[:category_name]
        @articles = Article.from_date(search[:date_from]) & Article.from_category(search[:category_name])
        # @articles = policy_scope(Article)
        @category = Category.find_by_name(search[:category_name])
        @sub_categories = @category.sub_categories
      elsif search[:date_from]
        @articles = Article.from_date(search[:date_from])
        # @articles = policy_scope(Article)
      end
    else
      @articles = Article.all
      # @articles = policy_scope(Article)
      @sub_categories = []
      @category = Category.find_by_name("top")
    end
    @categories = Category.all
    @articles_root = Article.from_date(-30.days.from_now)
    @comment_article = CommentArticle.new
  end

  def show
    search = params[:query]
      @categories = Category.all
      @article = Article.find(params[:id])
      authorize @article
      # @comment_selected = @article.comments.first
      # if @comment_selected
      #   @sub_comments = @comment_selected.sub_comments
      # end
  end

  def new
    @user = current_user
    @article = Article.new
    authorize @article
  end

  def create
    @article = Article.new(article_params)
    authorize @article
    @article.user = current_user
    months = ["nil", "janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août", "septembre", "octobre", "novembre" "décembre"]
    @article.date = Time.now.to_s.split()[0].split("-")[2] + " " + months[Time.now.to_s.split()[0].split("-")[1].to_i] + " " + Time.now.to_s.split()[0].split("-")[0]
    @article.precise_date = DateTime.now
    if @article.URL =~ URI::regexp(%w(http https))
      scrap(@article.URL)
    end
    cat = @article.sub_categories.map(&:category).first
    @article.category = cat
    authorize @article
    if @article.save
      # flash[:success] = "Post successfully created"
      redirect_to articles_path(query: { category_name: @article.category.name, date_from: -1.days.from_now }, anchor: 'new-article-anchor')
    else
      render :new
    end
  end

  def upvote
    @article = Article.find(params[:id])
    authorize @article
    if @article.by_user_upvotes.any? {|by_user_upvote| by_user_upvote.user_first_name == current_user.first_name}
    else
      new_upvote = ByUserUpvote.create(:user_first_name => current_user.first_name)
      new_upvote.article = @article
      new_upvote.save
      @article.increment!(:upvotes)
      if @article.save
        respond_to do |format|
          format.html { redirect_to request.referrer }
          format.js
        end
      end
    end
  end

  def update
    authorize @article
  end

  private

  def article_params
    params.require(:article).permit(:URL, :description, :category_id, :date, sub_category_ids: [])
  end

  def scrap(url)
    html_file = open(url.strip).read
    html_doc = Nokogiri::HTML(html_file)
    @article.title = html_doc.css('html > head > title').text
    @article.site_description = html_doc.xpath('/html/head/meta[@name="description"]/@content').to_s
    head_image = html_doc.xpath('/html/head/meta[@property="og:image"]/@content').to_s

    @article.image = head_image
    @article.source = URI.parse(url.strip).host
  end
end
