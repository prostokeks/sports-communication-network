class StaticPagesController < ApplicationController
  def index
    @articles = Article.paginate(page:params[:page], per_page: 5)
  end

  def about
  end

  def contact
  end

  def help
  end
end
