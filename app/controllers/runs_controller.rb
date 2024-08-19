class RunsController < ApplicationController
  def create

    @drill = Drill.find(params[:drill_id])
    @prev_run = Run.where(drill: @drill).last
    prev_makes = @prev_run.nil? ? 0 : @prev_run.makes

    correct = params[:form].count {|radio| radio[:success].present? ? radio[:success] : false}
    percentage = (correct / params[:form].count.to_f * 100).round
    @run = Run.create(drill: @drill, makes: correct)

    tries = []
    params[:form].each do |radio|
      try = Try.create(run: @run, shot: Shot.find(radio[:id]), success: radio[:success].present? ? radio[:success] : false)
      tries << try
    end


    json = { :tries => tries, :makes => correct, :percentage => percentage, :prev_makes => prev_makes }.to_json

    render json: json, status: 200

  end
end
