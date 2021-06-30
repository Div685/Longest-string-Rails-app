class AlgosController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def new
    @algo = Algo.new
    @algoo = Algo.find_by(name: params[:name])
  end

  def create
    @algo = Algo.new(algo_params)
    if @algo.save
      redirect_to "/#{URI.escape(@algo.name) }"
    else
      render :new
    end
  end

  # def show
  #   @algo = Algo.find_by(name: params[:name])
  # end

  private

  def algo_params
    params.require(:algo).permit(:id, :name)
  end

end
