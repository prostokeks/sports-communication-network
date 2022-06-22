class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit, :destroy, :update]

  def index
    @articles = Article.paginate(page:params[:page], per_page: 5)
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end

  def show
    id = @article.user_id
    @user = User.find(id)
  end

  def edit
  end

  def update
    if @article.update article_params
      redirect_to articles_path
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end


  private

  def article_params
    params.require(:article).permit(:title, :content, :s_content, :category, images: [])
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
