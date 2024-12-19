class HomeController < ApplicationController
  def index
    @articles = Article.all.order("created_at DESC").max(6)
  end
end
