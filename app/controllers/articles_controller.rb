class ArticlesController < ApplicationController

  def index
    search = params[:query]
    if search
      if search[:sub_category_names] && search[:sub_category_names].reject(&:blank?).any?
        @sub_categories_selected = SubCategory.where(name: search[:sub_category_names])
        @category = @sub_categories_selected.last&.category
        @articles = Article.from_sub_categories(search[:sub_category_names])
        @sub_categories = @category&.sub_categories
      elsif search[:category_name]
        @articles = Article.from_category(search[:category_name])
        @category = Category.find_by_name(search[:category_name])
        @sub_categories = @category.sub_categories
      end
    else
      @articles = Article.first(10)
      @sub_categories = []
      @category = Category.find_by_name("top")
    end
    @categories = Category.all
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
    @categories = Category.all
  end

  def new
    @user = current_user
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user

    scrap(@article.URL)
    cat = @article.sub_categories.map(&:category).first
    @article.category = cat

    if @article.save
      redirect_to articles_path(query: { category_name: @article.category.name }, anchor: 'new-article-anchor')
    else
      render :new
    end
  end


  # def update
  #   @article = Article.find(params[:id])
  #   @article.increment!(:upvotes)
  #   if @article.save
  #     respond_to do |format|
  #     format.html { redirect_to request.referrer }
  #     format.js
  #     end
  #   end
  # end

  def upvote
    @article = Article.find(params[:id])
    @article.upvote_by current_user
    @article.upvotes += 1
    @article.save
    respond_to do |format|
      format.html { redirect_to request.referrer }
      format.js
    end
  end

  private

  def article_params
    params.require(:article).permit(:URL, :description, :category_id, sub_category_ids: [])
  end

  def scrap(url)
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)
    @article.title = html_doc.css('html > head > title').text
    @article.site_description = html_doc.xpath('/html/head/meta[@name="description"]/@content').to_s
    head_image = html_doc.xpath('/html/head/meta[@property="og:image"]/@content').to_s
    first_body_image = html_doc.search('img').first.attribute('src').value if !html_doc.search('img').first.attribute('src').nil?
    image = head_image.empty? ? first_body_image : head_image
    @article.image = image
    @article.source = URI.parse(url).host
  end
end
