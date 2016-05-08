class ArticlesController < ApplicationController

  def index
   @articles = Article.order("created_at desc")
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
    redirect_to articles_path
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
  end

  private

  def test

  end

  def article_params
    params.require(:article).permit(:title, :body, :author, :user_id)
  end

end
