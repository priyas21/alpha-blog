class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)
  end
  def show

  end

  private
  def article_params
    params.require(:article).permit(:title, :description)
    # article = { :title => "hello", :description => "bzdjjs"} the above represents a hash with top level key as article
  end
end