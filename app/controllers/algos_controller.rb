class AlgosController < ApplicationController

  def new
    @algo = Algo.new
  end

  def create
    @algo = Algo.new(algo_params)
    if @algo.save
      redirect_to "/#{URI.escape(@algo.name) }" #? @algo.name : "/#{URI.escape(@algo.name)}"
    else
      render :new
    end
  end

  def show
    @algo = Algo.find_by(name: params[:name])
  end

  private

  def algo_params
    params.require(:algo).permit(:id, :name)
  end

end
