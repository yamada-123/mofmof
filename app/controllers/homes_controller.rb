class HomesController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]
  #before_action :set_station, only:[:show, :edit, :update, :destroy]

  def index
    @homes = Home.all
  end

  def new
    @home = Home.new
    #@station = Station.new
    2.times {@home.stations.build}
    #からのインスタンスを二つ作ってる
    #stationをbuild(newのリレーション)するようにする。
    #このことから、fields_forの内容が表示されるようになる
    #@station = Station.new
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
  end

  def edit
    @home.stations.build
  end

  def update
    if @home.update(home_params)
      redirect_to homes_path, notice: "情報を編集しました"
    else
      render :edit
    end
  end

  def destroy
    @home.destroy
     @home.stations.each do |station|
      station.destroy
     end
    redirect_to homes_path, notice:"情報を削除しました"
  end

  private

  def home_params
    params.require(:home).permit(:property, 
                                 :rent, 
                                 :address, 
                                 :age, 
                                 :remarks, 
           stations_attributes: [:id, :route, :near_station, :time, :_destroy]
    )
  end

  #def station_params
   # params.require(:station).permit(:route, :near_station, :time)
  #end

  def set_home
    @home = Home.find(params[:id])
  end
  #def set_station
   # @station = Station.find(params[:id])
  #end

end
