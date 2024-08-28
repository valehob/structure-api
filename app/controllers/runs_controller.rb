class RunsController < ApplicationController
  def create

    @drill = Drill.find(params[:drill_id])
    @prev_run = Run.where(drill: @drill).last

    prev_makes = @prev_run.nil? ? 0 : @prev_run.makes

    correct = params[:form].count {|radio| radio[:success].present? ? radio[:success] : false}
    percentage = (correct / params[:form].count.to_f * 100).round
    @run = Run.create(drill: @drill, makes: correct, user_id: @user.id)

    tries = []
    params[:form].each do |radio|
      try = Try.create(run: @run, shot: Shot.find(radio[:id]), success: radio[:success].present? ? radio[:success] : false)
      tries << try
    end

    @progress = Progress.where(user: @user, level: @drill.level_id, topic: @drill.topic_id).first
    if @progress.nil?
      @progress = Progress.create(user: @user, level: @drill.level, topic: @drill.topic, score: percentage)
    else
      @progress_avg = Run.where(drill: @drill).last(3)
      p @progress_avg
      @progress_avg = ((@progress_avg.inject(0.0) { |sum, el| sum + el.makes } / @progress_avg.size) / params[:form].count.to_f * 100).round
      @progress.score = @progress_avg
      @progress.save
    end

    json = { :tries => tries, :makes => correct, :percentage => percentage, :prev_makes => prev_makes, :progress => @progress}.to_json

    render json: json, status: 200

  end
end
