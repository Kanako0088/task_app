class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
    @sum = Schedule.count
  end
  
  def new
    @schedule = Schedule.new
  end
  
  def create
    @schedule = Schedule.new(params
                            .require(:schedule)
                            .permit(:title, :start_day, :finish_day, :all_day, :memo))
    if @schedule.save
      flash[:success] = "スケジュールを登録しました"
      redirect_to :schedules
    else
      flash.now[:failure] = "スケジュールを登録できませんでした"
      flash[:failure] = "スケジュールを登録できませんでした"
      render "new"
    end
  end
  
  def show
    @schedule = Schedule.find(params[:id])
  end
  
  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params
                        .require(:schedule)
                        .permit(:title, :start_day, :finish_day, :all_day, :memo))
      flash[:success] = "スケジュールを更新しました"
      redirect_to :schedules
    else
      render "edit"
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:failure] = "スケジュールを削除しました"
    redirect_to :schedules
  end

end