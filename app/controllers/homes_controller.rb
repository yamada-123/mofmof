class HomesController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]

  def index
    @homes = Home.all
  end

  def new
    @home = Home.new
  end

  def create
   @home = Home.new(home_params)
   if @home.save
    redirect_to homes_path, notice: "物件を登録しました"
   else

    render :new
   end
  end


  def show
   @home = Home.find(params[:id])
  end

  def edit
    @home = Home.find(params[:id])
  end

  def update
    @home = Home.find(params[:id])
    if @home.update(home_params)
      redirect_to homes_path, notice: "情報を編集しました"
    else
      render :edit
    end
  end

  def destroy
    @home.destroy
    redirect_to homes_path, notice:"情報を削除しました"
  end

  private

  def home_params
    params.require(:home).permit(:property, :rent, :address, :age, :remarks)
  end

  def set_home
    @home = Home.find(params[:id])
  end

end
