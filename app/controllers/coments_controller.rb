class ComentsController < ApplicationController

  before_action :get_article
  before_action :set_coment, only: [:show, :edit, :destroy, :update]

  def index
    @comments = @article.coments
  end

  def new
    @comment = @article.coments.build
  end

  def create
    @comment = @article.coments.build(post_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to article_path(@article)
    else
      render article_path(@article)
    end
  end

  def edit
  end

  def update
    if @comment.update post_params
      redirect_to article_path(@article)
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to root_path
  end

  def show
  end



  private

  def get_article
    @article = Article.find(params[:article_id])
  end

  def post_params
    params.require(:coment).permit(:content)
  end

  def set_coment
    @comment = @article.coments.find(params[:id])
  end
end
