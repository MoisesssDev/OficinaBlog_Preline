class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render "new"
    end
  end

  def show
    @article = Article.find(params[:id])

    @tags = @article.tags.split(", ") if @article.tags
  end

  def index
    @articles = Article.all.order("created_at DESC")
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :header_image, :tags)
  end
end
