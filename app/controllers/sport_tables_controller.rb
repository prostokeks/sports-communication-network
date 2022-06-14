class SportTablesController < ApplicationController
  before_action :search, only: [:show, :edit, :destroy, :update]

  def new
    @sport_result = SportTable.new
  end

  def show
  end

  def edit
  end

  def create
    @sport_result = current_user.sport_tables.build(sport_result_params)
    if @sport_result.save
      redirect_to current_user
    else
      render :new
    end
  end

  def destroy
    @sport_result.destroy
    redirect_to current_user
  end

  def update
    if @sport_result.update sport_result_params
      redirect_to current_user
    else
      render :new
    end
  end

  private

  def search
    @sport_result = SportTable.find(params[:id])
  end

  def sport_result_params
    params.require(:sport_table).permit(:weight)
  end
end