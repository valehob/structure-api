class DrillsController < ApplicationController
  def show
    drill = Drill.find_by(id: params[:id])

    if drill
      render json: drill, status: 200
    else
      render json: {error: "Drill Not Found."}
    end
  end

  def index
  end
end
