class StaticPagesController < ApplicationController
  def index
    @rooms = Room.all
  end

  def about
  end

  def contact
  end

  def help
  end
end
