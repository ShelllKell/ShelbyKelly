class ValentinesController < ApplicationController

  def index
    @valentines = Valentine.all.reverse
  end

  def new
    @valentine = Valentine.new
  end

  def create
    @valentine = Valentine.new(valentine_params)

    if @valentine.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @valentine = Valentine.find(params[:id])
    @valentine.destroy
    redirect_to valentines_path
  end

  private

  def valentine_params
    params.require(:valentine).permit(:from, :message)
  end

end
