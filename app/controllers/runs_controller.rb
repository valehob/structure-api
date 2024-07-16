class RunsController < ApplicationController
  def create

    @run = Run.create(drill: Drill.find(params[:drill_id]))
    tries = []

    p "---------------------"

    params[:form].each do |radio|
      try = Try.create(run: @run, shot: Shot.find(radio[:id]), success: radio[:success].present? ? radio[:success] : false)
      tries << try
    end

    correct = tries.count {|try| try.success }
    percentage = correct / tries.count.to_f * 100

    json = { :tries => tries, :percentage => percentage }.to_json

    render json: json, status: 200

  end
end
