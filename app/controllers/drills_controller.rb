class DrillsController < ApplicationController
  def show
    drill = Drill.find_by(id: params[:id])

    if drill
      render json: drill.to_json(include: [:shots]), status: 200
    else
      render json: {error: "Drill Not Found."}
    end
  end

  def index
    @drills = Drill.all
    render json: {drills: @drills}
  end

  def stats
    @drill = Drill.find_by(id: params[:id])
    runs = Run.where(drill: @drill)
    tries = Try.where(run: runs)

    last5runs = runs.last(5).reverse.map do |run|
      run.trys.count{ |element| element.success}
    end

    perfectRuns = runs.count { |run| run.trys.count == run.trys.count{ |element| element.success} }

    json = {
      drill: @drill,
      shots: @drill.shots,
      last5runs: last5runs,
      perfectRuns: perfectRuns,
      runCount: runs.count
    }

    render json: json.to_json
  end
end
