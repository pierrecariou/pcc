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

    scrap(@article.URL)

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
